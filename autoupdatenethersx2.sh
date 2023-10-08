#!/data/data/com.termux/files/usr/bin/bash
# Update patch
if [ "$(pwd)" == "/data/data/com.termux/files/home/NetherSX2-patch" ]; then
	echo "Please run 'cd ..' to exit this folder and try again!"
	exit 1
fi
wget "https://github.com/Trixarian/NetherSX2-patch/releases/download/1.6/NetherSX2-patch.zip"
unzip NetherSX2-patch.zip
rm NetherSX2-patch.zip
cd NetherSX2-patch || exit
chmod +x update-files.sh patch-apk.sh
./update-files.sh
cp 15210-v1.5-4248-noads.apk /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads-patched.apk
echo "Done! Output APK should be in /storage/emulated/0/NetherSX2/. Check it in File manager."
