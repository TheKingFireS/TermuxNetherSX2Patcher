#!/data/data/com.termux/files/usr/bin/bash
# Update patch
if [ "$(pwd)" == "/data/data/com.termux/files/home/NetherSX2-patch" ]; then
	printf "\e[1;91mPlease run 'cd ..' before you can run './autoupdatenethersx2.sh'!\e[0m\n"
 	mv autoupdatenethersx2.sh ../autoupdatenethersx2.sh
	exit 1
fi
wget "https://github.com/Trixarian/NetherSX2-patch/releases/download/1.6/NetherSX2-patch.zip"
unzip NetherSX2-patch.zip
rm NetherSX2-patch.zip
chmod +x update-files.sh patch-apk.sh
./update-files.sh
cp 15210-v1.5-4248-noads.apk /storage/emulated/0/NetherSX2/15210-v1.5-4248-noads-patched.apk
echo "Done! Output APK should be in /storage/emulated/0/NetherSX2/. Check it in File manager."
