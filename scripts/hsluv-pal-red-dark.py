#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Create a color palette"""

import os
from hsluv import hsluv_to_rgb
from PIL import Image, ImageDraw, ImageFont, ImageEnhance

# Colors
BA = 10

Sn = 100
Sb = 65

Ln = 65
Lb = 68

H01 = BA  ; S01 = 35 ; L01 = 4  ; BASE1 = [] ; ZASE1 = [] #base1
H02 = BA  ; S02 = 35 ; L02 = 7 ; BASE2 = [] ; ZASE2 = [] #base2
H03 = BA  ; S03 = 35 ; L03 = 50 ; BASE3 = [] ; ZASE3 = [] #base3
H04 = BA  ; S04 = 35 ; L04 = Lb ; BASE4 = [] ; ZASE4 = [] #base4
H05 = 0   ; S05 = Sn ; L05 = Ln ; BACR1 = [] ; ZACR1 = [] #acr50
H06 = 35  ; S06 = Sn ; L06 = Ln ; BACO1 = [] ; ZACO1 = [] #aco50
H07 = 105 ; S07 = Sn ; L07 = Ln ; BACG1 = [] ; ZACG1 = [] #acg50
H08 = 170 ; S08 = Sn ; L08 = Ln ; BACC1 = [] ; ZACC1 = [] #acc50
H09 = 235 ; S09 = Sn ; L09 = Ln ; BACB1 = [] ; ZACB1 = [] #acb50
H10 = 285 ; S10 = Sn ; L10 = Ln ; BACV1 = [] ; ZACV1 = [] #acv50
H11 = 0   ; S11 = Sb ; L11 = Lb ; BACR2 = [] ; ZACR2 = [] #acr70
H12 = 35  ; S12 = Sb ; L12 = Lb ; BACO2 = [] ; ZACO2 = [] #aco70
H13 = 105 ; S13 = Sb ; L13 = Lb ; BACG2 = [] ; ZACG2 = [] #acg70
H14 = 170 ; S14 = Sb ; L14 = Lb ; BACC2 = [] ; ZACC2 = [] #acc70
H15 = 235 ; S15 = Sb ; L15 = Lb ; BACB2 = [] ; ZACB2 = [] #acb70
H16 = 285 ; S16 = Sb ; L16 = Lb ; BACV2 = [] ; ZACV2 = [] #acv70

# Conversion to RGB

A01 = hsluv_to_rgb([H01, S01, L01])
for i in A01: i = round(i*255); BASE1.extend([i])

A02 = hsluv_to_rgb([H02, S02, L02])
for i in A02: i = round(i*255); BASE2.extend([i])

A03 = hsluv_to_rgb([H03, S03, L03])
for i in A03: i = round(i*255); BASE3.extend([i])

A04 = hsluv_to_rgb([H04, S04, L04])
for i in A04: i = round(i*255); BASE4.extend([i])

A05 = hsluv_to_rgb([H05, S05, L05])
for i in A05: i = round(i*255); BACR1.extend([i])

A06 = hsluv_to_rgb([H06, S06, L06])
for i in A06: i = round(i*255); BACO1.extend([i])

A07 = hsluv_to_rgb([H07, S07, L07])
for i in A07: i = round(i*255); BACG1.extend([i])

A08 = hsluv_to_rgb([H08, S08, L08])
for i in A08: i = round(i*255); BACC1.extend([i])

A09 = hsluv_to_rgb([H09, S09, L09])
for i in A09: i = round(i*255); BACB1.extend([i])

A10 = hsluv_to_rgb([H10, S10, L10])
for i in A10: i = round(i*255); BACV1.extend([i])

A11 = hsluv_to_rgb([H11, S11, L11])
for i in A11: i = round(i*255); BACR2.extend([i])

A12 = hsluv_to_rgb([H12, S12, L12])
for i in A12: i = round(i*255); BACO2.extend([i])

A13 = hsluv_to_rgb([H13, S13, L13])
for i in A13: i = round(i*255); BACG2.extend([i])

A14 = hsluv_to_rgb([H14, S14, L14])
for i in A14: i = round(i*255); BACC2.extend([i])

A15 = hsluv_to_rgb([H15, S15, L15])
for i in A15: i = round(i*255); BACB2.extend([i])

A16 = hsluv_to_rgb([H16, S16, L16])
for i in A16: i = round(i*255); BACV2.extend([i])

# Conversion to HEX
for i in A01: i = round(i*255); ZASE1.extend([f'{i:02X}']); HEX01 = '#'+''.join(ZASE1)
for i in A02: i = round(i*255); ZASE2.extend([f'{i:02X}']); HEX02 = '#'+''.join(ZASE2)
for i in A03: i = round(i*255); ZASE3.extend([f'{i:02X}']); HEX03 = '#'+''.join(ZASE3)
for i in A04: i = round(i*255); ZASE4.extend([f'{i:02X}']); HEX04 = '#'+''.join(ZASE4)
for i in A05: i = round(i*255); ZACR1.extend([f'{i:02X}']); HEX05 = '#'+''.join(ZACR1)
for i in A06: i = round(i*255); ZACO1.extend([f'{i:02X}']); HEX06 = '#'+''.join(ZACO1)
for i in A07: i = round(i*255); ZACG1.extend([f'{i:02X}']); HEX07 = '#'+''.join(ZACG1)
for i in A08: i = round(i*255); ZACC1.extend([f'{i:02X}']); HEX08 = '#'+''.join(ZACC1)
for i in A09: i = round(i*255); ZACB1.extend([f'{i:02X}']); HEX09 = '#'+''.join(ZACB1)
for i in A10: i = round(i*255); ZACV1.extend([f'{i:02X}']); HEX10 = '#'+''.join(ZACV1)
for i in A11: i = round(i*255); ZACR2.extend([f'{i:02X}']); HEX11 = '#'+''.join(ZACR2)
for i in A12: i = round(i*255); ZACO2.extend([f'{i:02X}']); HEX12 = '#'+''.join(ZACO2)
for i in A13: i = round(i*255); ZACG2.extend([f'{i:02X}']); HEX13 = '#'+''.join(ZACG2)
for i in A14: i = round(i*255); ZACC2.extend([f'{i:02X}']); HEX14 = '#'+''.join(ZACC2)
for i in A15: i = round(i*255); ZACB2.extend([f'{i:02X}']); HEX15 = '#'+''.join(ZACB2)
for i in A16: i = round(i*255); ZACV2.extend([f'{i:02X}']); HEX16 = '#'+''.join(ZACV2)

# Define the individual width
W = 75
H = 75
SEP = 45
T = 10
LH = 15 # line-height
SH = 10 # sep-hor
SV = 7 # sep-ver

w, h = W*8, H*2+SEP*2

# Background
BG = []
A0 = hsluv_to_rgb([H01, S01, L01])
for i in A0: i = round(i*255); BG.extend([i])
image = Image.new("RGB", (w, h), color=(BG[0], BG[1], BG[2]))

# BASE1
SHAPE01 = [(W*0, 0), (W*0+W, H)]
fig1 = ImageDraw.Draw(image)
fig1.rectangle(SHAPE01, fill=(BASE1[0], BASE1[1], BASE1[2]))

# BASE2
SHAPE02 = [(W*0, SEP+H), (W*0+W, SEP+H+H)]
fig2 = ImageDraw.Draw(image)
fig2.rectangle(SHAPE02, fill=(BASE2[0], BASE2[1], BASE2[2]))

# BASE3
SHAPE03 = [(W*1, 0), (W*1+W, H)]
fig3 = ImageDraw.Draw(image)
fig3.rectangle(SHAPE03, fill=(BASE3[0], BASE3[1], BASE3[2]))

# BASE4
SHAPE04 = [(W*1, SEP+H), (W*1+W, SEP+H+H)]
fig4 = ImageDraw.Draw(image)
fig4.rectangle(SHAPE04, fill=(BASE4[0], BASE4[1], BASE4[2]))

# BACR1
SHAPE05 = [(W*4, 0), (W*4+W, H)]
fig5 = ImageDraw.Draw(image)
fig5.rectangle(SHAPE05, fill=(BACR1[0], BACR1[1], BACR1[2]))

# BACO1
SHAPE06 = [(W*5, 0), (W*5+W, H)]
fig6 = ImageDraw.Draw(image)
fig6.rectangle(SHAPE06, fill=(BACO1[0], BACO1[1], BACO1[2]))

# BACG1
SHAPE07 = [(W*6, 0), (W*6+W, H)]
fig7 = ImageDraw.Draw(image)
fig7.rectangle(SHAPE07, fill=(BACG1[0], BACG1[1], BACG1[2]))

# BACC1
SHAPE08 = [(W*7, 0), (W*7+W, H)]
fig8 = ImageDraw.Draw(image)
fig8.rectangle(SHAPE08, fill=(BACC1[0], BACC1[1], BACC1[2]))

# BACB1
SHAPE09 = [(W*2, 0), (W*2+W, H)]
fig9 = ImageDraw.Draw(image)
fig9.rectangle(SHAPE09, fill=(BACB1[0], BACB1[1], BACB1[2]))

# BACV1
SHAPE10 = [(W*3, 0), (W*3+W, H)]
fig10 = ImageDraw.Draw(image)
fig10.rectangle(SHAPE10, fill=(BACV1[0], BACV1[1], BACV1[2]))

# BACR2
SHAPE11 = [(W*4, SEP+H), (W*4+W, SEP+H+H)]
fig11 = ImageDraw.Draw(image)
fig11.rectangle(SHAPE11, fill=(BACR2[0], BACR2[1], BACR2[2]))

# BACO2
SHAPE12 = [(W*5, SEP+H), (W*5+W, SEP+H+H)]
fig12 = ImageDraw.Draw(image)
fig12.rectangle(SHAPE12, fill=(BACO2[0], BACO2[1], BACO2[2]))

# BACG2
SHAPE13 = [(W*6, SEP+H), (W*6+W, SEP+H+H)]
fig13 = ImageDraw.Draw(image)
fig13.rectangle(SHAPE13, fill=(BACG2[0], BACG2[1], BACG2[2]))

# BACC2
SHAPE14 = [(W*7, SEP+H), (W*7+W, SEP+H+H)]
fig14 = ImageDraw.Draw(image)
fig14.rectangle(SHAPE14, fill=(BACC2[0], BACC2[1], BACC2[2]))

# BACB2
SHAPE15 = [(W*2, SEP+H), (W*2+W, SEP+H+H)]
fig15 = ImageDraw.Draw(image)
fig15.rectangle(SHAPE15, fill=(BACB2[0], BACB2[1], BACB2[2]))

# BACV2
SHAPE16 = [(W*3, SEP+H), (W*3+W, SEP+H+H)]
fig16 = ImageDraw.Draw(image)
fig16.rectangle(SHAPE16, fill=(BACV2[0], BACV2[1], BACV2[2]))

font = ImageFont.truetype("/home/gerard/.fonts/terminesspowerline/ter-powerline-x14n.pcf", size=14)

# BASE1
num01 = ImageDraw.Draw(image)
num01.text((SH, SV), "i: 01", font=font, fill=HEX04)
num01_l = ImageDraw.Draw(image)
num01_l.text((SH, SV+LH*3), str(f"L: {L01}%"), font=font, fill=HEX04)
num01_h = ImageDraw.Draw(image)
num01_h.text((SH, SV+LH*1), str(f"H: {H01}°"), font=font, fill=HEX04)
num01_s = ImageDraw.Draw(image)
num01_s.text((SH, SV+LH*2), str(f"S: {S01}%"), font=font, fill=HEX04)
num01_x = ImageDraw.Draw(image)
num01_x.text((T, SV+H), HEX01, font=font, fill=HEX04)

# BASE3
num08 = ImageDraw.Draw(image)
num08.text((SH+W*1, SV), "i: 08", font=font, fill=HEX01)
num08_l = ImageDraw.Draw(image)
num08_l.text((SH+W*1, SV+LH*3), str(f"L: {L03}%"), font=font, fill=HEX01)
num08_h = ImageDraw.Draw(image)
num08_h.text((SH+W*1, SV+LH*1), str(f"H: {H03}°"), font=font, fill=HEX01)
num08_s = ImageDraw.Draw(image)
num08_s.text((SH+W*1, SV+LH*2), str(f"S: {S03}%"), font=font, fill=HEX01)
num08_x = ImageDraw.Draw(image)
num08_x.text((T+W*1, SV+H), HEX03, font=font, fill=HEX03)

# BACB1
num05 = ImageDraw.Draw(image)
num05.text((SH+W*2, SV), "i: 05", font=font, fill=HEX01)
num05_l = ImageDraw.Draw(image)
num05_l.text((SH+W*2, SV+LH*3), str(f"L: {L09}%"), font=font, fill=HEX01)
num05_h = ImageDraw.Draw(image)
num05_h.text((SH+W*2, SV+LH*1), str(f"H: {H09}°"), font=font, fill=HEX01)
num05_s = ImageDraw.Draw(image)
num05_s.text((SH+W*2, SV+LH*2), str(f"S: {S09}%"), font=font, fill=HEX01)
num05_x = ImageDraw.Draw(image)
num05_x.text((T+W*2, SV+H), HEX09, font=font, fill=HEX09)

# BACV1
num06 = ImageDraw.Draw(image)
num06.text((SH+W*3, SV), "i: 06", font=font, fill=HEX01)
num06_l = ImageDraw.Draw(image)
num06_l.text((SH+W*3, SV+LH*3), str(f"L: {L10}%"), font=font, fill=HEX01)
num06_h = ImageDraw.Draw(image)
num06_h.text((SH+W*3, SV+LH*1), str(f"H: {H10}°"), font=font, fill=HEX01)
num06_h = ImageDraw.Draw(image)
num06_h.text((SH+W*3, SV+LH*2), str(f"S: {S10}%"), font=font, fill=HEX01)
num06_x = ImageDraw.Draw(image)
num06_x.text((T+W*3, SV+H), HEX10, font=font, fill=HEX10)

# BACR1
num02 = ImageDraw.Draw(image)
num02.text((SH+W*4, SV), "i: 02", font=font, fill=HEX01)
num02_l = ImageDraw.Draw(image)
num02_l.text((SH+W*4, SV+LH*3), str(f"L: {L05}%"), font=font, fill=HEX01)
num02_h = ImageDraw.Draw(image)
num02_h.text((SH+W*4, SV+LH*1), str(f"H: {H05}°"), font=font, fill=HEX01)
num02_s = ImageDraw.Draw(image)
num02_s.text((SH+W*4, SV+LH*2), str(f"S: {S05}%"), font=font, fill=HEX01)
num02_x = ImageDraw.Draw(image)
num02_x.text((T+W*4, SV+H), HEX05, font=font, fill=HEX05)

# BACO1
num04 = ImageDraw.Draw(image)
num04.text((SH+W*5, SV), "i: 04", font=font, fill=HEX01)
num04_l = ImageDraw.Draw(image)
num04_l.text((SH+W*5, SV+LH*3), str(f"L: {L06}%"), font=font, fill=HEX01)
num04_h = ImageDraw.Draw(image)
num04_h.text((SH+W*5, SV+LH*1), str(f"H: {H06}°"), font=font, fill=HEX01)
num04_s = ImageDraw.Draw(image)
num04_s.text((SH+W*5, SV+LH*2), str(f"S: {S06}%"), font=font, fill=HEX01)
num04_x = ImageDraw.Draw(image)
num04_x.text((T+W*5, SV+H), HEX06, font=font, fill=HEX06)

# BACG1
num03 = ImageDraw.Draw(image)
num03.text((SH+W*6, SV), "i: 03", font=font, fill=HEX01)
num03_l = ImageDraw.Draw(image)
num03_l.text((SH+W*6, SV+LH*3), str(f"L: {L07}%"), font=font, fill=HEX01)
num03_h = ImageDraw.Draw(image)
num03_h.text((SH+W*6, SV+LH*1), str(f"H: {H07}°"), font=font, fill=HEX01)
num03_s = ImageDraw.Draw(image)
num03_s.text((SH+W*6, SV+LH*2), str(f"S: {S07}%"), font=font, fill=HEX01)
num03_x = ImageDraw.Draw(image)
num03_x.text((T+W*6, SV+H), HEX07, font=font, fill=HEX07)

# BACC1
num07 = ImageDraw.Draw(image)
num07.text((SH+W*7, SV), "i: 07", font=font, fill=HEX01)
num07_l = ImageDraw.Draw(image)
num07_l.text((SH+W*7, SV+LH*3), str(f"L: {L08}%"), font=font, fill=HEX01)
num07_h = ImageDraw.Draw(image)
num07_h.text((SH+W*7, SV+LH*1), str(f"H: {H08}°"), font=font, fill=HEX01)
num07_s = ImageDraw.Draw(image)
num07_s.text((SH+W*7, SV+LH*2), str(f"S: {S08}%"), font=font, fill=HEX01)
num07_x = ImageDraw.Draw(image)
num07_x.text((T+W*7, SV+H), HEX08, font=font, fill=HEX08)

# BASE2
num09 = ImageDraw.Draw(image)
num09.text((SH, SV+H+SEP), "i: 09", font=font, fill=HEX04)
num09_l = ImageDraw.Draw(image)
num09_l.text((SH, SV+H+SEP+LH*3), str(f"L: {L02}%"), font=font, fill=HEX04)
num09_h = ImageDraw.Draw(image)
num09_h.text((SH, SV+H+SEP+LH*1), str(f"H: {H02}°"), font=font, fill=HEX04)
num09_s = ImageDraw.Draw(image)
num09_s.text((SH, SV+H+SEP+LH*2), str(f"S: {S02}%"), font=font, fill=HEX04)
num09_x = ImageDraw.Draw(image)
num09_x.text((T, SV+H*2+SEP), HEX02, font=font, fill=HEX04)

# BASE4
num16 = ImageDraw.Draw(image)
num16.text((SH+W*1, SV+H+SEP), "i: 16", font=font, fill=HEX01)
num16_l = ImageDraw.Draw(image)
num16_l.text((SH+W*1, SV+H+SEP+LH*3), str(f"L: {L04}%"), font=font, fill=HEX01)
num16_h = ImageDraw.Draw(image)
num16_h.text((SH+W*1, SV+H+SEP+LH*1), str(f"H: {H04}°"), font=font, fill=HEX01)
num16_s = ImageDraw.Draw(image)
num16_s.text((SH+W*1, SV+H+SEP+LH*2), str(f"S: {S04}%"), font=font, fill=HEX01)
num16_x = ImageDraw.Draw(image)
num16_x.text((T+W*1, SV+H*2+SEP), HEX04, font=font, fill=HEX04)

# BACB2
num13 = ImageDraw.Draw(image)
num13.text((SH+W*2, SV+H+SEP), "i: 13", font=font, fill=HEX01)
num13_l = ImageDraw.Draw(image)
num13_l.text((SH+W*2, SV+H+SEP+LH*3), str(f"L: {L15}%"), font=font, fill=HEX01)
num13_h = ImageDraw.Draw(image)
num13_h.text((SH+W*2, SV+H+SEP+LH*1), str(f"H: {H15}°"), font=font, fill=HEX01)
num13_s = ImageDraw.Draw(image)
num13_s.text((SH+W*2, SV+H+SEP+LH*2), str(f"S: {S15}%"), font=font, fill=HEX01)
num13_x = ImageDraw.Draw(image)
num13_x.text((T+W*2, SV+H*2+SEP), HEX15, font=font, fill=HEX15)

# BACV2
num14 = ImageDraw.Draw(image)
num14.text((SH+W*3, SV+H+SEP), "i: 14", font=font, fill=HEX01)
num14_l = ImageDraw.Draw(image)
num14_l.text((SH+W*3, SV+H+SEP+LH*3), str(f"L: {L16}%"), font=font, fill=HEX01)
num14_h = ImageDraw.Draw(image)
num14_h.text((SH+W*3, SV+H+SEP+LH*1), str(f"H: {H16}°"), font=font, fill=HEX01)
num14_s = ImageDraw.Draw(image)
num14_s.text((SH+W*3, SV+H+SEP+LH*2), str(f"S: {S16}%"), font=font, fill=HEX01)
num14_x = ImageDraw.Draw(image)
num14_x.text((T+W*3, SV+H*2+SEP), HEX16, font=font, fill=HEX16)

# BACR2
num10 = ImageDraw.Draw(image)
num10.text((SH+W*4, SV+H+SEP), "i: 10", font=font, fill=HEX01)
num10_l = ImageDraw.Draw(image)
num10_l.text((SH+W*4, SV+H+SEP+LH*3), str(f"L: {L11}%"), font=font, fill=HEX01)
num10_h = ImageDraw.Draw(image)
num10_h.text((SH+W*4, SV+H+SEP+LH*1), str(f"H: {H11}°"), font=font, fill=HEX01)
num10_s = ImageDraw.Draw(image)
num10_s.text((SH+W*4, SV+H+SEP+LH*2), str(f"S: {S11}%"), font=font, fill=HEX01)
num10_x = ImageDraw.Draw(image)
num10_x.text((T+W*4, SV+H*2+SEP), HEX11, font=font, fill=HEX11)

# BACO2
num12 = ImageDraw.Draw(image)
num12.text((SH+W*5, SV+H+SEP), "i: 12", font=font, fill=HEX01)
num12_l = ImageDraw.Draw(image)
num12_l.text((SH+W*5, SV+H+SEP+LH*3), str(f"L: {L12}%"), font=font, fill=HEX01)
num12_h = ImageDraw.Draw(image)
num12_h.text((SH+W*5, SV+H+SEP+LH*1), str(f"H: {H12}°"), font=font, fill=HEX01)
num12_s = ImageDraw.Draw(image)
num12_s.text((SH+W*5, SV+H+SEP+LH*2), str(f"S: {S12}%"), font=font, fill=HEX01)
num12_x = ImageDraw.Draw(image)
num12_x.text((T+W*5, SV+H*2+SEP), HEX12, font=font, fill=HEX12)

# BACG2
num11 = ImageDraw.Draw(image)
num11.text((SH+W*6, SV+H+SEP), "i: 11", font=font, fill=HEX01)
num11_l = ImageDraw.Draw(image)
num11_l.text((SH+W*6, SV+H+SEP+LH*3), str(f"L: {L13}%"), font=font, fill=HEX01)
num11_h = ImageDraw.Draw(image)
num11_h.text((SH+W*6, SV+H+SEP+LH*1), str(f"H: {H13}°"), font=font, fill=HEX01)
num11_s = ImageDraw.Draw(image)
num11_s.text((SH+W*6, SV+H+SEP+LH*2), str(f"S: {S13}%"), font=font, fill=HEX01)
num11_x = ImageDraw.Draw(image)
num11_x.text((T+W*6, SV+H*2+SEP), HEX13, font=font, fill=HEX13)

# BACC2
num15 = ImageDraw.Draw(image)
num15.text((SH+W*7, SV+H+SEP), "i: 15", font=font, fill=HEX01)
num15_l = ImageDraw.Draw(image)
num15_l.text((SH+W*7, SV+H+SEP+LH*3), str(f"L: {L14}%"), font=font, fill=HEX01)
num15_h = ImageDraw.Draw(image)
num15_h.text((SH+W*7, SV+H+SEP+LH*1), str(f"H: {H14}°"), font=font, fill=HEX01)
num15_s = ImageDraw.Draw(image)
num15_s.text((SH+W*7, SV+H+SEP+LH*2), str(f"S: {S14}%"), font=font, fill=HEX01)
num15_x = ImageDraw.Draw(image)
num15_x.text((T+W*7, SV+H*2+SEP), HEX14, font=font, fill=HEX14)

print("#define base1", HEX01)
print("#define base2", HEX02)
print("#define base3", HEX03)
print("#define base4", HEX04)
print("#define acr50", HEX05)
print("#define aco50", HEX06)
print("#define acg50", HEX07)
print("#define acc50", HEX08)
print("#define acb50", HEX09)
print("#define acv50", HEX10)
print("#define acr70", HEX11)
print("#define aco70", HEX12)
print("#define acg70", HEX13)
print("#define acc70", HEX14)
print("#define acb70", HEX15)
print("#define acv70", HEX16)

IMAGE='red-dark.png'
image.save(IMAGE)

PS=str("ps -ef | grep -v grep | grep 'mupdf' ")
FL=str("| grep -o '" + IMAGE + "' > /dev/null")

CHECK=os.system(PS+FL)

if CHECK == 256:
    os.system("mupdf '" + IMAGE + "' 2>/dev/null &")
else:
    os.system("pkill -HUP mupdf 2>/dev/null")
