# Generate files.js with all JPG files in the current directory

# Get all JPG files in the current directory
$jpgFiles = Get-ChildItem -Path . -Filter "*.jpg" | Select-Object -ExpandProperty Name | Sort-Object

# Create the JavaScript content
$jsContent = @"
// filepath: $($PWD.Path)\files.js
// Lijst van bestandsnamen (lokaal, in dezelfde map als deze HTML)
    var IMAGES = [
"@

# Add each JPG filename to the array
foreach ($file in $jpgFiles) {
    $jsContent += "`n        `"$file`","
}

# Remove the trailing comma from the last item if there are any files
if ($jpgFiles.Count -gt 0) {
    $jsContent = $jsContent.TrimEnd(",")
}

# Close the array
$jsContent += @"

      ];
"@

# Write the content to files.js
$jsContent | Out-File -FilePath "files.js" -Encoding utf8

Write-Host "Generated files.js with $($jpgFiles.Count) JPG files."
if ($jpgFiles.Count -eq 0) {
    Write-Warning "No JPG files found in the current directory."
}