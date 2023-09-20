#!/data/data/com.termux/files/usr/bin/bash
# Update patch
if [ -d "$HOME/storage" ]; then
	echo "termux-setup-storage has already ran before, all goods."
else
	termux-setup-storage
fi
cd NetherSX2-patch || exit
rm patch-apk.sh update-files.sh
git pull https://github.com/Trixarian/NetherSX2-patch.git main
curl -LO "https://raw.githubusercontent.com/Trixarian/NetherSX2-patch/main/patch-apk.sh"
curl -LO "https://raw.githubusercontent.com/Trixarian/NetherSX2-patch/main/update-files.sh"
chmod +x update-files.sh patch-apk.sh
./update-files.sh
cp 15210-v1.5-4248-noads.apk /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads-patched.apk
echo "Done! Output APK should be in /storage/emulated/0/NetherSX2/. Check it in File manager."
