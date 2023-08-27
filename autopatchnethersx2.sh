#!/data/data/com.termux/files/usr/bin/bash
# Installing aapt and apksigner
pkg upgrade -y
pkg install git -y
git clone https://github.com/Trixarian/NetherSX2-patch.git
cd NetherSX2-patch || exit
cp /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads.apk 15210-v1.5-4248-noads.apk
chmod +x remove-adservices.sh update-files.sh
./remove-adservices.sh
./update-files.sh
cp 15210-v1.5-4248-noads.apk /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads-patched.apk
