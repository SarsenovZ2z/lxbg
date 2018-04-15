DIR="/usr/share/backgrounds/lxbg"
(
  while true
  do
      PIC=$DIR/$(ls $DIR | shuf -n1)
      if [ -z "$PIC" ]; then
          break
      fi
      gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
      # gsettings get org.gnome.desktop.background picture-uri
    sleep 10
  done
) &
disown
