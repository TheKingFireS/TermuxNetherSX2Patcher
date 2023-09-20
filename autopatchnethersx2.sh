#!/data/data/com.termux/files/usr/bin/bash
# Installing aapt, git and cloning repo.
if [ -d "$HOME/storage" ]; then
	echo "termux-setup-storage has already ran before, all goods."
else
	termux-setup-storage
fi
pkg upgrade -y -o Dpkg::Options::="--force-confold"
pkg install aapt apksigner git -y
git clone https://github.com/Trixarian/NetherSX2-patch.git
cd NetherSX2-patch || exit
cp /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads.apk 15210-v1.5-4248-noads.apk
chmod +x patch-apk.sh
./patch-apk.sh
cp 15210-v1.5-4248-noads.apk /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads-patched.apk
echo "Done! Output APK should be in /storage/emulated/0/NetherSX2/. Check it in File manager."
