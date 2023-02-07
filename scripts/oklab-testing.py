#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Create a color palette"""

import os
import math
from colorio.cs import ColorCoordinates
from PIL import Image, ImageDraw

L = 0.8
A = -0.25
B = -0.25

GAP = 0
w, h = 400, 30*55
image = Image.new("RGB", (w, h), color=("#0D0E0F"))

for c in range(-25, 30, 1):
    oklab = ColorCoordinates([L, A, B], "oklab")
    oklab.convert("srgb255", mode="clip")
    c = c/100

    RGB = [] * 3
    RGB.append(int(round(oklab.data[0], 0)))
    RGB.append(int(round(oklab.data[1], 0)))
    RGB.append(int(round(oklab.data[2], 0)))

    print(f"Color {RGB} is using {c}")

    HEXa = []
    for i in RGB:
        i = round(i*255)
        HEXa.extend([f'{i:02X}'])

    HEX = '#'+''.join(HEXa)

    # print("Color", c, HEX)

    shape = [(100, GAP), (300, GAP+30)]

    fig = ImageDraw.Draw(image)
    fig.rectangle(shape, fill=(RGB[0], RGB[1], RGB[2]))
    GAP = GAP+30
    B = B+c

# Instant preview

IMAGE='conversion.png'
image.save(IMAGE)

PS=str("ps -ef | grep -v grep | grep 'mupdf' ")
FL=str("| grep -o '" + IMAGE + "' > /dev/null")

CHECK=os.system(PS+FL)

if CHECK == 256:
    os.system("mupdf '" + IMAGE + "' 2>/dev/null &")
else:
    os.system("pkill -HUP mupdf 2>/dev/null")
