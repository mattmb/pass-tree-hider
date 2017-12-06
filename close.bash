#!/bin/bash
set -e
/usr/local/lib/password-store/extensions/update.bash
cd ~/.password-store
rm -rf secure/
