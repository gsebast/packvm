# Test if target folder exists and if not then create it
if (!(Test-Path -Path $env:TARGET_FOLDER)) {
  echo "===> Creating folder $env:TARGET_FOLDER"
  New-Item -ItemType directory -Path $env:TARGET_FOLDER
}

# Copy all files matching the file pattern from the source to the target folder
echo "===> Copying all files starting with $env:FILE_PATTERN from $env:SOURCE_FOLDER to $env:TARGET_FOLDER"
Copy-Item -Path $env:SOURCE_FOLDER/$env:FILE_PATTERN -Destination $env:TARGET_FOLDER
