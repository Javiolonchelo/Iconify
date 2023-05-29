<#
.SYNOPSIS
Convert any image to an icon file (.ico).
Usage: .\Iconify.ps1 -in {image} -out {output_ico_file}
.DESCRIPTION
This script uses ImageMagick to convert an image to an icon file (.ico).
.EXAMPLE
.\Iconify.ps1 -in "cat.png" -out "cat.ico"
.PARAMETER in
Path to input image. Can be any format supported by ImageMagick.
.PARAMETER out
Path to output icon file. If not specified, the output file will be named "output.ico".
.LINK
Official ImageMagick website - https://imagemagick.org/
.LINK
Source of the main command used in this script - https://stackoverflow.com/a/49823738/13146539
#>

[CmdletBinding()]
Param(
    [string]$in,
    [string]$out = "output.ico"
)

#check if imagemagick is installed
if (!(Get-Command magick.exe)) {
    Write-Host "ImageMagick is not installed. Please install it from https://imagemagick.org/ and try again."
    exit
}

# Help message
if (!$in) {
    Throw "Usage: .\Iconify.ps1 -in {image} -out {output_ico_file}"
}

# Adds .ico extension if not present
if ($out -notlike "*.ico") {
    $out = $out + ".ico"
}

# Converts image to icon
convert -background transparent $in -define "icon:auto-resize=16,24,32,48,64,72,96,128,256" $out

# trim all first characters until last backslash
$in = ForEach-Object { $in -replace '.*\\' }
$out = ForEach-Object { $out -replace '.*\\' }

Write-Output "The file `"$in`" was succesfully converted to `"$out`""
