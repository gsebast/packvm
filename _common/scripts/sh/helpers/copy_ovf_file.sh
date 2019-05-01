#!/bin/sh -eu

# Test if target folder exists and if not then create it
if [ ! -d "${TARGET_FOLDER}" ]; then
  echo "===> Creating folder ${TARGET_FOLDER}"
  mkdir -p ${TARGET_FOLDER}
fi

# Copy all files matching the file pattern from the source to the target folder
echo "===> Copying all files starting with ${FILE_PATTERN} from ${SOURCE_FOLDER} to ${TARGET_FOLDER}"
cp ${SOURCE_FOLDER}/${FILE_PATTERN} ${TARGET_FOLDER}
