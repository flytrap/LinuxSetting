[ -d ~/.config/i3 ] || mkdir -p ~/.config/i3
[ -d ~/.config/conky ] || mkdir -p ~/.config/conky
cp -p ./i3_config ~/.config/i3/config
cp ./startup.sh ~/.config/i3/startup.sh
cp ./conky_start.sh ~/.config/i3/conky_start.sh
chmod u+x ~/.config/i3/startup.sh
chmod u+x ~/.config/i3/conky_start.sh
cp -p ./conky.conf ~/.config/conky/conky.conf
