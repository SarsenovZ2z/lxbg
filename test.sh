
DIR="/usr/share/backgrounds/lxbg"
PIC=$DIR/$(ls $DIR | shuf -n1)
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
# gsettings get org.gnome.desktop.background picture-uri
