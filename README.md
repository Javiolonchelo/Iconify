# Iconify

![](app_icon.ico)

Convert any image to icon format (.ico) with a single command. Requires ImageMagick to work ([download here](https://imagemagick.org/script/download.php)).
Based on [this answer](https://stackoverflow.com/a/49823738/13146539) by @geekley on StackOverflow.

## Usage

Download the script or the executable and run it from the terminal with the following syntax:

```powershell
.\Iconify.exe -in <path-to-image> -out <path-to-output>
```

## Real example

The icon of the executable was made with the following command from the source folder:

```powershell
.\Iconify.ps1 .\cat.jpg .\app_icon.ico
```
