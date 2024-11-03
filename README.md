# Directory Tree Generator

![PowerShell](https://img.shields.io/badge/PowerShell-v5.1%2B-blue) ![License](https://img.shields.io/badge/license-MIT-green) ![Maintained](https://img.shields.io/badge/maintained-yes-brightgreen)

This PowerShell script generates a visual tree-like structure of any directory and its subdirectories, making it easier to understand the folder hierarchy at a glance. Made for developers, IT professionals, or anyone needing a clear visualization of complex directory structures.


## Installation

1. Download `dtg.ps1` from this repository.
2. Save it in a directory where you'd like to access it from PowerShell.

## Usage

1. Open PowerShell and navigate to the directory where `dtg.ps1` is saved.
2. Run the script with the root directory as an argument:

``` .\dtg.ps1 <path\to\my\folder> ```

3. The script will output the directory tree structure.

## Example of output

```plaintext

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

## Requirements

- PowerShell version 5.1 or higher

## Troubleshooting

If you encounter issues with running the script, ensure that you have permission to execute scripts on your system. You may need to change the PowerShell execution policy:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

## License

This project is licensed under the MIT License.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or suggestions.
