# Delete the source folder after it is no longer needed
echo "===> Deleting artifacts in source folder $env:SOURCE_FOLDER"
Remove-Item -Recurse -Force $env:SOURCE_FOLDER
