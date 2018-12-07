#!/bin/bash
set -ue -o pipefail
FOLDER_TO_HIDE=secure
cd ~/.password-store
if [ ! -d "$FOLDER_TO_HIDE" ]; then
  gpg --decrypt $FOLDER_TO_HIDE.tar.gpg | tar xvf -
else
  echo "Already open"
fi
