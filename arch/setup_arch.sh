[ -d ~/.config/i3 ] || mkdir -p ~/.config/i3
[ -d ~/.config/conky ] || mkdir -p ~/.config/conky
p=`dirname $0`
# echo $p
cp -p $p/i3.config ~/.config/i3/config
cp $p/startup.sh ~/.config/i3/startup.sh
cp $p/conky_start.sh ~/.config/i3/conky_start.sh
chmod u+x ~/.config/i3/startup.sh
chmod u+x ~/.config/i3/conky_start.sh
cp -p $p/conky.conf ~/.config/conky/conky.conf
