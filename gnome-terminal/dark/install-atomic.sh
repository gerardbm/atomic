#!/usr/bin/env sh
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/palette "#141A1F:#EC5252:#5DA813:#C97016:#3790E9:#A35AED:#13AEAE:#53697F:#202931:#FF9191:#9ACD68:#EDA45C:#7DBEFF:#CA96FF:#6ECFCF:#A6B5C5"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/background_color "#141A1F"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/foreground_color "#A6B5C5"
gconftool-2 -s -t string /apps/gnome-terminal/profiles/Default/bold_color "#A6B5C5"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/bold_color_same_as_fg "false"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/use_theme_colors "false"
gconftool-2 -s -t bool /apps/gnome-terminal/profiles/Default/use_theme_background "false"
