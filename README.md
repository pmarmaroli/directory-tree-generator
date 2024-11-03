# directory-tree-generator
This PowerShell script generates a tree-like structure of a directory and its subdirectories. The script uses recursion to traverse the directory structure and prints out the structure with a clear distinction between folders and files.

## Usage

1. Download `dtg.ps1`
2. Open PowerShell and navigate to the directory where the script is saved.
3. Run the script with the root directory as an argument:

``` .\dtg.ps1 <path\to\my\folder> ```

## Example of output

```

path\to\my\folder\

    ├── folder_1\
    ├── │   ├── file_1.txt
    ├── │   ├── file_2.txt
    ├── │   └── file_3.txt
    ├── folder_2\
    ├── │   ├── subfolder_1\
    ├── │   ├── │   ├── file_1.txt
    ├── │   ├── │   ├── file_2.txt
    ├── │   ├── │   └── file_3.txt
    ├── │   ├── subfolder_2\
    ├── │   ├── │   ├── file_1.txt
    ├── │   ├── │   ├── file_2.txt
    ├── │   ├── │   └── file_3.txt
    ├── │   ├── file_1.txt
    ├── │   ├── file_2.txt
    ├── │   └── file_3.txt
    ├── file_1.txt
    ├── file_2.txt
    └── file_3.txt

```
