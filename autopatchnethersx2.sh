#!/data/data/com.termux/files/usr/bin/bash
# Installing aapt, git and cloning repo.
pkg upgrade -y
pkg install aapt git -y # it will uninstall some package due to crappy packages maintainer practice.
git clone https://github.com/Trixarian/NetherSX2-patch.git
cd NetherSX2-patch || exit
cp /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads.apk 15210-v1.5-4248-noads.apk
chmod +x remove-adservices.sh update-files.sh
./remove-adservices.sh
./update-files.sh
cp 15210-v1.5-4248-noads.apk /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads-patched.apk
echo "Done! Output APK should be in /storage/emulated/0/NetherSX2/. Check it in File manager."
