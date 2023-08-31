#!/data/data/com.termux/files/usr/bin/bash
# Update patch
cd NetherSX2-patch || exit
git pull https://github.com/Trixarian/NetherSX2-patch.git main
./remove-adservices.sh
./update-files.sh
cp 15210-v1.5-4248-noads.apk /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads-patched.apk
echo "Done! Output APK should be in /storage/emulated/0/NetherSX2/. Check it in File manager."
