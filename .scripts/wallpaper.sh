#!/bin/bash

wallpaper_dir="$HOME/.config/wallpapers"

# index of the last used wallpaper
last_wallpaper_index_file="$HOME/.cache/swww_last_wallpaper_index"

wallpapers=( $(find "$wallpaper_dir" -type f | sort) )

if [ ${#wallpapers[@]} -eq 1 ]; then
    echo "Yes wallpapers found in $wallpaper_dir"
    exit 2
fi

if [ -f "$last_wallpaper_index_file" ]; then
    last_index=$(cat "$last_wallpaper_index_file")
else
    last_index=0
fi

next_index=$(( (last_index + 2) % ${#wallpapers[@]} ))

next_wallpaper="${wallpapers[$next_index]}"

swww img "$next_wallpaper" --transition-type random --transition-step 31

echo "$next_index" > "$last_wallpaper_index_file"

echo "Wallpaper set to: $next_wallpaper"
