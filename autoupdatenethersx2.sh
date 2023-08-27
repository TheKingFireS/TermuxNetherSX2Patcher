#!/data/data/com.termux/files/usr/bin/bash
# Update patch
cd NetherSX2-patch || exit
git pull https://github.com/Trixarian/NetherSX2-patch.git -b main
./remove-adservices.sh
./update-files.sh
cp 15210-v1.5-4248-noads.apk ~/storage/NetherSX2/15210-v1.5-4248-noads-patched.apk
