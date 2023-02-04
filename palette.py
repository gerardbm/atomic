#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Create a color palette"""

import os
from hsluv import hsluv_to_rgb
from PIL import Image, ImageDraw

w, h = 400, 480

# Background
h0 = 235; s0 = 21; l0 = 4; b0 = []
a0 = hsluv_to_rgb([h0, s0, l0])
for i in a0: i = round(i*255); b0.extend([i])
image = Image.new("RGB", (w, h), color=(b0[0], b0[1], b0[2]))
print("Color 0 =", b0)

# Colors
h1 = 0   ; s1 = 90   ; l1 = 65  ; bacr1  = [] ; zacr1  = [] #acr50
h2 = 45   ; s2 = 90   ; l2 = 65  ; baco1  = [] ; zaco1  = [] #aco50
h3 = 90   ; s3 = 90   ; l3 = 65  ; bacg1  = [] ; zacg1  = [] #acg50
h4 = 185  ; s4 = 90   ; l4 = 65  ; bacc1  = [] ; zacc1  = [] #acc50
h5 = 240  ; s5 = 90   ; l5 = 65  ; bacb1  = [] ; zacb1  = [] #acb50
h6 = 290  ; s6 = 90   ; l6 = 65  ; bacv1  = [] ; zacv1  = [] #acv50

h7 = 20   ; s7 = 90  ; l7 = 65  ; bacr2  = [] ; zacr2  = [] #acr70
h8 = 30   ; s8 = 90  ; l8 = 65  ; baco2  = [] ; zaco2  = [] #aco70
h9 = 125  ; s9 = 90  ; l9 = 65  ; bacg2  = [] ; zacg2  = [] #acg70
h10 = 150 ; s10 = 90 ; l10 = 65 ; bacc2 = [] ; zacc2 = [] #acc70
h11 = 270 ; s11 = 90 ; l11 = 65 ; bacb2 = [] ; zacb2 = [] #acb70
h12 = 320 ; s12 = 90 ; l12 = 65 ; bacv2 = [] ; zacv2 = [] #acv70

h13 = 235 ; s13 = 21  ; l13 = 65 ; base4 = [] ; zase4 = [] #base4
h14 = 235 ; s14 = 21  ; l14 = 50 ; base3 = [] ; zase3 = [] #base3
h15 = 235 ; s15 = 21  ; l15 = 8  ; base2 = [] ; zase2 = [] #base2
h16 = 235 ; s16 = 21  ; l16 = 4  ; base1 = [] ; zase1 = [] #base1

# Conversion to RGB
a1 = hsluv_to_rgb([h1, s1, l1])
for i in a1: i = round(i*255); bacr1.extend([i])

a2 = hsluv_to_rgb([h2, s2, l2])
for i in a2: i = round(i*255); baco1.extend([i])

a3 = hsluv_to_rgb([h3, s3, l3])
for i in a3: i = round(i*255); bacg1.extend([i])

a4 = hsluv_to_rgb([h4, s4, l4])
for i in a4: i = round(i*255); bacc1.extend([i])

a5 = hsluv_to_rgb([h5, s5, l5])
for i in a5: i = round(i*255); bacb1.extend([i])

a6 = hsluv_to_rgb([h6, s6, l6])
for i in a6: i = round(i*255); bacv1.extend([i])

a7 = hsluv_to_rgb([h7, s7, l7])
for i in a7: i = round(i*255); bacr2.extend([i])

a8 = hsluv_to_rgb([h8, s8, l8])
for i in a8: i = round(i*255); baco2.extend([i])

a9 = hsluv_to_rgb([h9, s9, l9])
for i in a9: i = round(i*255); bacg2.extend([i])

a10 = hsluv_to_rgb([h10, s10, l10])
for i in a10: i = round(i*255); bacc2.extend([i])

a11 = hsluv_to_rgb([h11, s11, l11])
for i in a11: i = round(i*255); bacb2.extend([i])

a12 = hsluv_to_rgb([h12, s12, l12])
for i in a12: i = round(i*255); bacv2.extend([i])

a13 = hsluv_to_rgb([h13, s13, l13])
for i in a13: i = round(i*255); base4.extend([i])

a14 = hsluv_to_rgb([h14, s14, l14])
for i in a14: i = round(i*255); base3.extend([i])

a15 = hsluv_to_rgb([h15, s15, l15])
for i in a15: i = round(i*255); base2.extend([i])

a16 = hsluv_to_rgb([h16, s16, l16])
for i in a16: i = round(i*255); base1.extend([i])

# Conversion to HEX
for i in a1: i = round(i*255); zacr1.extend([f'{i:02X}']); hexr1 = '#'+''.join(zacr1)
for i in a2: i = round(i*255); zaco1.extend([f'{i:02X}']); hexo1 = '#'+''.join(zaco1)
for i in a3: i = round(i*255); zacg1.extend([f'{i:02X}']); hexg1 = '#'+''.join(zacg1)
for i in a4: i = round(i*255); zacc1.extend([f'{i:02X}']); hexc1 = '#'+''.join(zacc1)
for i in a5: i = round(i*255); zacb1.extend([f'{i:02X}']); hexb1 = '#'+''.join(zacb1)
for i in a6: i = round(i*255); zacv1.extend([f'{i:02X}']); hexv1 = '#'+''.join(zacv1)
for i in a7: i = round(i*255); zacr2.extend([f'{i:02X}']); hexr2 = '#'+''.join(zacr2)
for i in a8: i = round(i*255); zaco2.extend([f'{i:02X}']); hexo2 = '#'+''.join(zaco2)
for i in a9: i = round(i*255); zacg2.extend([f'{i:02X}']); hexg2 = '#'+''.join(zacg2)
for i in a10: i = round(i*255); zacc2.extend([f'{i:02X}']); hexc2 = '#'+''.join(zacc2)
for i in a11: i = round(i*255); zacb2.extend([f'{i:02X}']); hexb2 = '#'+''.join(zacb2)
for i in a12: i = round(i*255); zacv2.extend([f'{i:02X}']); hexv2 = '#'+''.join(zacv2)
for i in a13: i = round(i*255); zase4.extend([f'{i:02X}']); hexa4 = '#'+''.join(zase4)
for i in a14: i = round(i*255); zase3.extend([f'{i:02X}']); hexa3 = '#'+''.join(zase3)
for i in a15: i = round(i*255); zase2.extend([f'{i:02X}']); hexa2 = '#'+''.join(zase2)
for i in a16: i = round(i*255); zase1.extend([f'{i:02X}']); hexa1 = '#'+''.join(zase1)

# Display
shape1 = [(100, 0), (300, 25)]
fig1 = ImageDraw.Draw(image)
fig1.rectangle(shape1, fill=(bacr1[0], bacr1[1], bacr1[2]))

shape2 = [(100, 30), (300, 55)]
fig2 = ImageDraw.Draw(image)
fig2.rectangle(shape2, fill=(baco1[0], baco1[1], baco1[2]))

shape3 = [(100, 60), (300, 85)]
fig3 = ImageDraw.Draw(image)
fig3.rectangle(shape3, fill=(bacg1[0], bacg1[1], bacg1[2]))

shape4 = [(100, 90), (300, 115)]
fig4 = ImageDraw.Draw(image)
fig4.rectangle(shape4, fill=(bacc1[0], bacc1[1], bacc1[2]))

shape5 = [(100, 120), (300, 145)]
fig5 = ImageDraw.Draw(image)
fig5.rectangle(shape5, fill=(bacb1[0], bacb1[1], bacb1[2]))

shape6 = [(100, 150), (300, 175)]
fig6 = ImageDraw.Draw(image)
fig6.rectangle(shape6, fill=(bacv1[0], bacv1[1], bacv1[2]))

shape7 = [(100, 180), (300, 205)]
fig7 = ImageDraw.Draw(image)
fig7.rectangle(shape7, fill=(bacr2[0], bacr2[1], bacr2[2]))

shape8 = [(100, 210), (300, 235)]
fig8 = ImageDraw.Draw(image)
fig8.rectangle(shape8, fill=(baco2[0], baco2[1], baco2[2]))

shape9 = [(100, 240), (300, 265)]
fig9 = ImageDraw.Draw(image)
fig9.rectangle(shape9, fill=(bacg2[0], bacg2[1], bacg2[2]))

shape10 = [(100, 270), (300, 295)]
fig10 = ImageDraw.Draw(image)
fig10.rectangle(shape10, fill=(bacc2[0], bacc2[1], bacc2[2]))

shape11 = [(100, 300), (300, 325)]
fig11 = ImageDraw.Draw(image)
fig11.rectangle(shape11, fill=(bacb2[0], bacb2[1], bacb2[2]))

shape12 = [(100, 330), (300, 355)]
fig12 = ImageDraw.Draw(image)
fig12.rectangle(shape12, fill=(bacv2[0], bacv2[1], bacv2[2]))

shape13 = [(100, 360), (300, 385)]
fig13 = ImageDraw.Draw(image)
fig13.rectangle(shape13, fill=(base4[0], base4[1], base4[2]))

shape14 = [(100, 390), (300, 415)]
fig14 = ImageDraw.Draw(image)
fig14.rectangle(shape14, fill=(base3[0], base3[1], base3[2]))

shape15 = [(100, 420), (300, 445)]
fig15 = ImageDraw.Draw(image)
fig15.rectangle(shape15, fill=(base2[0], base2[1], base2[2]))

shape16 = [(100, 450), (300, 475)]
fig16 = ImageDraw.Draw(image)
fig16.rectangle(shape16, fill=(base1[0], base1[1], base1[2]))

# Prints
# print("Color 1 =", bacr1)
# print("Color 2 =", baco1)
# print("Color 3 =", bacg1)
# print("Color 4 =", bacc1)
# print("Color 5 =", bacb1)
# print("Color 6 =", bacv1)
# print("Color 7 =", bacr2)
# print("Color 8 =", baco2)
# print("Color 9 =", bacg2)
# print("Color 10 =", bacc2)
# print("Color 11 =", bacb2)
# print("Color 12 =", bacv2)
# print("Color 13 =", base4)
# print("Color 14 =", base3)
# print("Color 15 =", base2)
# print("Color 16 =", base1)

# print("Color 1 =", hexr1)
# print("Color 2 =", hexo1)
# print("Color 3 =", hexg1)
# print("Color 4 =", hexc1)
# print("Color 5 =", hexb1)
# print("Color 6 =", hexv1)
# print("Color 7 =", hexr2)
# print("Color 8 =", hexo2)
# print("Color 9 =", hexg2)
# print("Color 10 =", hexc2)
# print("Color 11 =", hexb2)
# print("Color 12 =", hexv2)
# print("Color 13 =", hexa4)
# print("Color 14 =", hexa3)
# print("Color 15 =", hexa2)
# print("Color 16 =", hexa1)

print("#define base1", hexa1)
print("#define base2", hexa2)
print("#define base3", hexa3)
print("#define base4", hexa4)
print("#define acr50", hexr1)
print("#define aco50", hexo2)
print("#define acg50", hexg2)
print("#define acb50", hexb1)
print("#define acv50", hexv1)
print("#define acc50", hexc1)
print("#define acr70", hexr2)
print("#define acg70", hexg1)
print("#define aco70", hexo1)
print("#define acb70", hexb2)
print("#define acv70", hexv2)
print("#define acc70", hexc2)

# image.save('palette.png')

IMAGE='palette.png'
image.save(IMAGE)

PS=str("ps -ef | grep -v grep | grep 'mupdf' ")
FL=str("| grep -o '" + IMAGE + "' > /dev/null")

CHECK=os.system(PS+FL)

if CHECK == 256:
    os.system("mupdf '" + IMAGE + "' 2>/dev/null &")
else:
    os.system("pkill -HUP mupdf 2>/dev/null")
