#!/bin/bash
set -e
FOLDER_TO_HIDE=secure
cd ~/.password-store
if [ ! -d "$FOLDER_TO_HIDE" ]; then
  gpg --output $FOLDER_TO_HIDE.tar --decrypt $FOLDER_TO_HIDE.tar.gpg
  tar -xvf $FOLDER_TO_HIDE.tar
  rm $FOLDER_TO_HIDE.tar
else
  echo "Already open"
fi
