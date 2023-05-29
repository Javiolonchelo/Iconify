# Iconify

Convert any image to icon format (.ico) with a single command. Requires installing ImageMagick ([download here](https://imagemagick.org/script/download.php)).
Based on [this answer](https://stackoverflow.com/a/49823738/13146539) by @geekley on StackOverflow.

## Usage

Download the script and run it from the same folder with the following syntax:

```powershell
.\Iconify.ps1 -in <path-to-image> -out <path-to-output>
```

Real example:

```powershell
.\Iconify.ps1 -in 'cat.png' -out 'cat.ico'
```
