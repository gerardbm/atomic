#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Create a color palette"""

import colorsys
from PIL import Image, ImageDraw

H = 210
L = 56.6
S = 80

# Equivalence
# R = 56
# G = 144
# B = 233

result = colorsys.hls_to_rgb(H/360, L/100, S/100)

# Convert to 256 format
RGB = []
for i in result:
    i = round(i*255)
    RGB.extend([i])

print(RGB)

# Convert to HEX format
HEXa = []
for i in result:
    i = round(i*255)
    HEXa.extend([f'{i:02X}'])

HEX = '#'+''.join(HEXa)

print(HEX)

# Display the colors
w, h = 200, 600
shape = [(100, 25), (5, 5)]

image = Image.new("RGB", (w, h), color=(20, 26, 31))

fig1 = ImageDraw.Draw(image)
fig1.rectangle(shape, fill=(RGB[0], RGB[1], RGB[2]))
image.save('conversion.png')
