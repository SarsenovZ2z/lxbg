DIR="/usr/share/backgrounds/lxbg"
(
  while true
  do
      PIC=$DIR/$(ls $DIR | shuf -n1)
      gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
      # gsettings get org.gnome.desktop.background picture-uri
    sleep 15
  done
) &
disown
