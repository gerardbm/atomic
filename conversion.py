#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Create a color palette"""

from hsluv import hsluv_to_rgb
from PIL import Image, ImageDraw

H = 0
S = 100
L = 65

GAP = 0
DEG = 20
RAD = int(360/DEG)
w, h = 400, RAD*30
image = Image.new("RGB", (w, h), color=(13, 14, 15))

for c in range(RAD):
    hsluv = hsluv_to_rgb([H, S, L])

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

    print("Color", c, HEX)

    shape = [(100, GAP), (300, GAP+25)]

    fig = ImageDraw.Draw(image)
    fig.rectangle(shape, fill=(RGB[0], RGB[1], RGB[2]))
    fig.rectangle(shape, fill=(RGB[0], RGB[1], RGB[2]))
    GAP = GAP+30
    H = H+DEG

image.save('conversion.png')
