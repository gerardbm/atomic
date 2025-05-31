#!/usr/bin/env bash

SWITCH="../xresources/Xresources.URxvtSwitch"
SYSTEM="../xresources/Xresources.scheme"
ATOMIC="$HOME/dotfiles/X11/.Xresources.d/Xresources.atomic"
SCHEME="$HOME/dotfiles/X11/.Xresources.d/Xresources.scheme"

trash "$SWITCH"
trash "$SCHEME"

python hsluv-pal-space-hc.py
python hsluv-pal-space-mc.py
python hsluv-pal-space-lc.py

python hsluv-pal-night-hc.py
python hsluv-pal-night-mc.py
python hsluv-pal-night-lc.py

python hsluv-pal-light-hc.py
python hsluv-pal-light-mc.py
python hsluv-pal-light-lc.py
python hsluv-pal-old-book.py

python hsluv-pal-onion-hc.py
python hsluv-pal-onion-mc.py
python hsluv-pal-onion-lc.py

python hsluv-pal-blood-hc.py
python hsluv-pal-blood-mc.py
python hsluv-pal-blood-lc.py

python hsluv-pal-grass-hc.py
python hsluv-pal-grass-mc.py
python hsluv-pal-grass-lc.py

python hsluv-pal-ocean-hc.py
python hsluv-pal-ocean-mc.py
python hsluv-pal-ocean-lc.py

cp "$SWITCH" "$ATOMIC"
cp "$SYSTEM" "$SCHEME"

xrdb ~/.Xresources
