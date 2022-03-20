#!/usr/bin/env bash

# Color files
DIR=/home/$(whoami)/config
BDIR=$DIR/backup

# Change colors
def() {
  
  BT=$DIR/backup/$1

  # Copying files

  cat $DIR/alacritty/alacritty.yml > $BT/alacritty.yml 
  cat $DIR/dunst/dunstrc > $BT/dunstrc.yml 
  cat $DIR/gtk-3.0/settings.ini > $BT/settings.ini
  cat $DIR/gtk-4.0/settings.ini > $BT/settings.ini
  cat $DIR/rofi/config.rasi > $BT/config.rasi 
  cat $DIR/polybar/launch.sh > $BT/launch.sh
}

create (){
  
  TF=temas/$1

  # Copying files

  cat $DIR/alacritty/alacritty.yml > $DIR/alacritty/$TF  
  cat $DIR/dunst/dunstrc > $DIR/dunst/$TF
  cat $DIR/gtk-3.0/settings.ini > $DIR/gtk-3.0/$TF
  cat $DIR/gtk-4.0/settings.ini > $DIR/gtk-4.0/$TF
  cat $DIR/rofi/config.rasi > $DIR/rofi/$TF 
  cat $DIR/polybar/launch.sh > $DIR/polybar/$TF
}

remove (){
  
  TF=temas/$1

  # Removing files

 rm $DIR/alacritty/$TF  
 rm $DIR/dunst/$TF
 rm $DIR/gtk-3.0/$TF
 rm $DIR/gtk-4.0/$TF
 rm $DIR/rofi/$TF 
 rm $DIR/polybar/$TF
}

msg(){
	cat <<- EOF	
	No option specified, Available options:"
	--create-theme "
	--help or -h" 
	--remove-theme"   
	--default or nothing XD"  
	EOF
}

case $1 in
  "" | "--default")
    def default
  ;;
  "--create-theme")
    if  [[ $2 = "" ]]; then
      msg
    elif [[ $2 = "$2" ]]; then
      create $2
    fi
  ;;
  "--remove-theme")
    if  [[ $2 = "" ]]; then
      msg
    elif [[ $2 = "$2" ]]; then
      remove $2
    fi
  ;;
  "-h" | "--help")
    msg
  ;;
  "$1")
    mkdir -p $BDIR/$1 ; def $1
  ;;
esac
