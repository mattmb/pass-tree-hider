#!/bin/bash
set -e
FOLDER_TO_HIDE=secure
RECIPIENT=0x531932FD291FDE29
cd ~/.password-store
tar -cvf $FOLDER_TO_HIDE.tar $FOLDER_TO_HIDE
#rm -rf ./secure
gpg --batch --yes --output $FOLDER_TO_HIDE.tar.gpg --encrypt --recipient $RECIPIENT $FOLDER_TO_HIDE.tar
rm $FOLDER_TO_HIDE.tar
git add ./$FOLDER_TO_HIDE.tar.gpg
git commit -m "Updating encrypted $FOLDER_TO_HIDE folder"
