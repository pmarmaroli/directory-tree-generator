param (
    [string]$rootDirectory
)

function Get-DirectoryTree {
    param (
        [string]$Path,
        [string]$Indent = "",
        [bool]$LastChild = $false
    )

    $items = Get-ChildItem -Path $Path
    $itemCount = $items.Count

    for ($i = 0; $i -lt $itemCount; $i++) {
        $item = $items[$i]
        $isLast = ($i -eq $itemCount - 1)
        $prefix = "$Indent"

        if ($LastChild) {
            $prefix += "    "
        } else {
            $prefix += "│   "
        }

        if ($isLast) {
            $prefix += "└── "
        } else {
            $prefix += "├── "
        }

        if ($item.PSIsContainer) {
            Write-Output "$prefix$item\"
            Get-DirectoryTree -Path $item.FullName -Indent "$prefix" -LastChild:$isLast
        } else {
            Write-Output "$prefix$item"
        }
    }
}

Write-Output ""
Write-Output "$rootDirectory\"
Write-Output ""
Get-DirectoryTree -Path $rootDirectory -Indent "" -LastChild:$true
Write-Output ""
