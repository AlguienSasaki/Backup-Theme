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
  cat $DIR/rofi/config.rasi > $BT/config.rasi 
  cat $DIR/polybar/launch.sh > $BT/launch.sh
}

create (){
  
  TF=temas/$1

  # Copying files

  cat $DIR/alacritty/alacritty.yml > $DIR/alacritty/$TF  
  cat $DIR/dunst/dunstrc > $DIR/dunst/$TF
  cat $DIR/gtk-3.0/settings.ini > $DIR/gtk-3.0/$TF
  cat $DIR/rofi/config.rasi > $DIR/rofi/$TF 
  cat $DIR/polybar/launch.sh > $DIR/polybar/$TF
}

remove (){
  
  TF=temas/$1

  # Removing files

 rm $DIR/alacritty/$TF  
 rm $DIR/dunst/$TF
 rm $DIR/gtk-3.0/$TF
 rm $DIR/rofi/$TF 
 rm $DIR/polybar/$TF
}

msg(){

  echo ""
  echo "No option specified, Available options:"
  echo " --create-theme "
  echo " --help or -h" 
  echo " --remove-theme"   
  echo " --default or nothing XD"  
  echo ""
}

if  [[ $1 = "" ]] || [[ $1 = "--default" ]] ; then
  def default
elif [[ $1 = "--create-theme" ]]; then
  if  [[ $2 = "" ]]; then
    msg
  elif [[ $2 = "$2" ]]; then
    create $2
  fi
elif [[ $1 = "--remove-theme" ]]; then
  if  [[ $2 = "" ]]; then
    msg
  elif [[ $2 = "$2" ]]; then
    remove $2
  fi
elif [[ $1 = "-h" ]] || [[ $1 = "--help" ]]; then
  msg
elif [[ $1 = "$1" ]]; then
  mkdir -p $BDIR/$1 ; def $1 
fi
