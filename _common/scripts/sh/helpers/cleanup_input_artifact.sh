#!/bin/sh -eu

# Delete the source folder after it is no longer needed
echo "===> Deleting artifacts in source folder ${SOURCE_FOLDER}"
rm -Rf ${SOURCE_FOLDER}
