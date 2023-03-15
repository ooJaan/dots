#! /bin/bash
themeName=$1

source "${themeName}.sh"

# setting GTK Theme
gsettings set org.gnome.desktop.interface gtk-theme $gtk
gsettings set org.gnome.desktop.interface icon-theme $icons
echo "changed GTK Theme and Icons to $gtk"

#setting alacritty theme
cp $alacritty/alacritty.yml ~/.config/hypr/alacritty/colors.yml
echo "changed Alacritty Theme to $alacritty"

#setting rofi theme
cp $rofi/rofi.rasi ~/.config/hypr/rofi/themes/colors.rasi
echo "changed Rofi Theme to $rofi"

#waybar
cp $waybar/waybar.css ~/.config/waybar/style.css
killall waybar
waybar &

#changing Wallpaper
cp $wallpaper/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
killall hyprpaper
hyprpaper &

#changing borders usw
cp $borders/myColors.conf ~/.config/hypr/myColors.conf



