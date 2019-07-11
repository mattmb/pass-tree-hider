#!/bin/bash
set -ue -o pipefail
/usr/local/lib/password-store/extensions/update.bash
cd ~/.password-store
rm -rf secure/
