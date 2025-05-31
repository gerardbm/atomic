#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Create a color palette in horizontal format"""

import os
from hsluv import hsluv_to_rgb
from PIL import Image, ImageDraw

H = 0
S = 40
LUV = 40

GAP = 0
DEG = 1
RAD = int(360/DEG)

RECT_WIDTH = 2
RECT_HEIGHT = 100
w, h = RAD * RECT_WIDTH, RECT_HEIGHT

# w, h = 400, RAD*30
image = Image.new("RGB", (w, h), color=("#fff"))

for c in range(RAD):
    hsluv = hsluv_to_rgb([H, S, LUV])

    RGB = []
    for i in hsluv:
        i = round(i*255)
        RGB.extend([i])

    # print(RGB)

    HEXa = []
    for i in hsluv:
        i = round(i*255)
        HEXa.extend([f'{i:02X}'])

    HEX = '#'+''.join(HEXa)

    # print("Color", c, HEX)

    shape = [(GAP, 0), (GAP + RECT_WIDTH, RECT_HEIGHT)]

    fig = ImageDraw.Draw(image)
    fig.rectangle(shape, fill=HEX)
    GAP = GAP + RECT_WIDTH
    H = H+DEG

# Instant preview

IMAGE=f"HSLuv-s{S}-luv{LUV}-deg{DEG}.png"
# IMAGE="conversion.png"
image.save(IMAGE)

PS=str("ps -ef | grep -v grep | grep 'mupdf' ")
FL=str("| grep -o '" + IMAGE + "' > /dev/null")

CHECK=os.system(PS+FL)

if CHECK == 256:
    os.system("mupdf '" + IMAGE + "' 2>/dev/null &")
else:
    os.system("pkill -HUP mupdf 2>/dev/null")
