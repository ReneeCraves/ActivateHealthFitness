$ErrorActionPreference = "Stop"
$myScriptFolder = Split-Path -parent $PSCommandPath

# Requires Image Magick installed (Download from https://www.imagemagick.org)
# npm install --global mozjpeg  (but this is a 2015 old build...)
# or compile $cjpeg yourself (https://github.com/mozilla/mozjpeg)

$cjpeg = "$myScriptFolder\cjpeg-static.exe"   # or "mozjpeg.exe" in the path

$workingFolder = "$myScriptFolder\working"
Remove-Item "$workingFolder" -Recurse -Force -ErrorAction Ignore
mkdir -p "$workingFolder"

$forWebFolder = "$myScriptFolder\for-web"
Remove-Item "$forWebFolder" -Recurse -Force -ErrorAction Ignore
mkdir -p "$forWebFolder"

Write-Host "Processing Slide 0"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-0-2400x1200.jpg" "$myScriptFolder\Slide-0-2400x1200-orig.png"
. magick "$myScriptFolder\Slide-0-2400x1200-orig.png" -filter lanczos -resize 1920x960\!\> -compress lossless "$workingFolder\Slide-0-1920x960-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-0-1920x960.jpg" "$workingFolder\Slide-0-1920x960-lossless.jpg"
. magick "$myScriptFolder\Slide-0-2400x1200-orig.png" -filter lanczos -resize 1280x640\!\> -compress lossless "$workingFolder\Slide-0-1280x640-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-0-1280x640.jpg" "$workingFolder\Slide-0-1280x640-lossless.jpg"
. magick "$myScriptFolder\Slide-0-2400x1200-orig.png" -filter lanczos -resize 800x400\!\> -compress lossless "$workingFolder\Slide-0-800x400-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-0-800x400.jpg" "$workingFolder\Slide-0-800x400-lossless.jpg"
. magick "$myScriptFolder\Slide-0-2400x1200-orig.png" -filter lanczos -resize 600x300\!\> -compress lossless "$workingFolder\Slide-0-600x300-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-0-600x300.jpg" "$workingFolder\Slide-0-600x300-lossless.jpg"

Write-Host "Processing Slide 1"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-1-2400x1200.jpg" "$myScriptFolder\Slide-1-2400x1200-orig.png"
. magick "$myScriptFolder\Slide-1-2400x1200-orig.png" -filter lanczos -resize 1920x960\!\> -compress lossless "$workingFolder\Slide-1-1920x960-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-1-1920x960.jpg" "$workingFolder\Slide-1-1920x960-lossless.jpg"
. magick "$myScriptFolder\Slide-1-2400x1200-orig.png" -filter lanczos -resize 1280x640\!\> -compress lossless "$workingFolder\Slide-1-1280x640-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-1-1280x640.jpg" "$workingFolder\Slide-1-1280x640-lossless.jpg"
. magick "$myScriptFolder\Slide-1-2400x1200-orig.png" -filter lanczos -resize 800x400\!\> -compress lossless "$workingFolder\Slide-1-800x400-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-1-800x400.jpg" "$workingFolder\Slide-1-800x400-lossless.jpg"
. magick "$myScriptFolder\Slide-1-2400x1200-orig.png" -filter lanczos -resize 600x300\!\> -compress lossless "$workingFolder\Slide-1-600x300-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-1-600x300.jpg" "$workingFolder\Slide-1-600x300-lossless.jpg"

Write-Host "Processing Slide 2"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-2-2400x1200.jpg" "$myScriptFolder\Slide-2-2400x1200-orig.png"
. magick "$myScriptFolder\Slide-2-2400x1200-orig.png" -filter lanczos -resize 1920x960\!\> -compress lossless "$workingFolder\Slide-2-1920x960-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-2-1920x960.jpg" "$workingFolder\Slide-2-1920x960-lossless.jpg"
. magick "$myScriptFolder\Slide-2-2400x1200-orig.png" -filter lanczos -resize 1280x640\!\> -compress lossless "$workingFolder\Slide-2-1280x640-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-2-1280x640.jpg" "$workingFolder\Slide-2-1280x640-lossless.jpg"
. magick "$myScriptFolder\Slide-2-2400x1200-orig.png" -filter lanczos -resize 800x400\!\> -compress lossless "$workingFolder\Slide-2-800x400-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-2-800x400.jpg" "$workingFolder\Slide-2-800x400-lossless.jpg"
. magick "$myScriptFolder\Slide-2-2400x1200-orig.png" -filter lanczos -resize 600x300\!\> -compress lossless "$workingFolder\Slide-2-600x300-lossless.jpg"
. $cjpeg -quality 80 -outfile "$forWebFolder\Slide-2-600x300.jpg" "$workingFolder\Slide-2-600x300-lossless.jpg"

# Write-Host "Processing Slide 3"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-3-2400x1200.jpg" "$myScriptFolder\Slide-3-2400x1200-orig.png"
# . magick "$myScriptFolder\Slide-3-2400x1200-orig.png" -filter lanczos -resize 1920x960\!\> -compress lossless "$workingFolder\Slide-3-1920x960-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-3-1920x960.jpg" "$workingFolder\Slide-3-1920x960-lossless.jpg"
# . magick "$myScriptFolder\Slide-3-2400x1200-orig.png" -filter lanczos -resize 1280x640\!\> -compress lossless "$workingFolder\Slide-3-1280x640-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-3-1280x640.jpg" "$workingFolder\Slide-3-1280x640-lossless.jpg"
# . magick "$myScriptFolder\Slide-3-2400x1200-orig.png" -filter lanczos -resize 800x400\!\> -compress lossless "$workingFolder\Slide-3-800x400-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-3-800x400.jpg" "$workingFolder\Slide-3-800x400-lossless.jpg"
# . magick "$myScriptFolder\Slide-3-2400x1200-orig.png" -filter lanczos -resize 600x300\!\> -compress lossless "$workingFolder\Slide-3-600x300-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-3-600x300.jpg" "$workingFolder\Slide-3-600x300-lossless.jpg"

# Write-Host "Processing Slide 4"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-4-2400x1200.jpg" "$myScriptFolder\Slide-4-2400x1200-orig.png"
# . magick "$myScriptFolder\Slide-4-2400x1200-orig.png" -filter lanczos -resize 1920x960\!\> -compress lossless "$workingFolder\Slide-4-1920x960-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-4-1920x960.jpg" "$workingFolder\Slide-4-1920x960-lossless.jpg"
# . magick "$myScriptFolder\Slide-4-2400x1200-orig.png" -filter lanczos -resize 1280x640\!\> -compress lossless "$workingFolder\Slide-4-1280x640-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-4-1280x640.jpg" "$workingFolder\Slide-4-1280x640-lossless.jpg"
# . magick "$myScriptFolder\Slide-4-2400x1200-orig.png" -filter lanczos -resize 800x400\!\> -compress lossless "$workingFolder\Slide-4-800x400-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-4-800x400.jpg" "$workingFolder\Slide-4-800x400-lossless.jpg"
# . magick "$myScriptFolder\Slide-4-2400x1200-orig.png" -filter lanczos -resize 600x300\!\> -compress lossless "$workingFolder\Slide-4-600x300-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-4-600x300.jpg" "$workingFolder\Slide-4-600x300-lossless.jpg"

# Write-Host "Processing Slide 5"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-5-2400x1200.jpg" "$myScriptFolder\Slide-5-2400x1200-orig.png"
# . magick "$myScriptFolder\Slide-5-2400x1200-orig.png" -filter lanczos -resize 1920x960\!\> -compress lossless "$workingFolder\Slide-5-1920x960-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-5-1920x960.jpg" "$workingFolder\Slide-5-1920x960-lossless.jpg"
# . magick "$myScriptFolder\Slide-5-2400x1200-orig.png" -filter lanczos -resize 1280x640\!\> -compress lossless "$workingFolder\Slide-5-1280x640-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-5-1280x640.jpg" "$workingFolder\Slide-5-1280x640-lossless.jpg"
# . magick "$myScriptFolder\Slide-5-2400x1200-orig.png" -filter lanczos -resize 800x400\!\> -compress lossless "$workingFolder\Slide-5-800x400-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-5-800x400.jpg" "$workingFolder\Slide-5-800x400-lossless.jpg"
# . magick "$myScriptFolder\Slide-5-2400x1200-orig.png" -filter lanczos -resize 600x300\!\> -compress lossless "$workingFolder\Slide-5-600x300-lossless.jpg"
# . $cjpeg -quality 80 -outfile "$forWebFolder\Slide-5-600x300.jpg" "$workingFolder\Slide-5-600x300-lossless.jpg"

Write-Host "Removing working files"
Remove-Item "$workingFolder" -Recurse -Force -ErrorAction Ignore

Write-Host "Done"