#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Mesure CIEDE2000 Delta E (ΔE00) between to HSLuv colors."""

from math import sqrt, exp, cos, sin, radians, degrees, atan2
from hsluv import hsluv_to_rgb

def rgb_to_xyz(rgb):
    def to_linear(c):
        return ((c + 0.055) / 1.055) ** 2.4 if c > 0.04045 else c / 12.92
    r, g, b = [to_linear(c) for c in rgb]
    x = r * 0.4124564 + g * 0.3575761 + b * 0.1804375
    y = r * 0.2126729 + g * 0.7151522 + b * 0.0721750
    z = r * 0.0193339 + g * 0.1191920 + b * 0.9503041
    return [x, y, z]

def xyz_to_lab(xyz):
    def f(t):
        return t ** (1/3) if t > 0.008856 else (7.787 * t) + 16/116
    Xn, Yn, Zn = 0.95047, 1.00000, 1.08883
    x, y, z = [xyz[0]/Xn, xyz[1]/Yn, xyz[2]/Zn]
    fx, fy, fz = f(x), f(y), f(z)
    L = 116 * fy - 16
    a = 500 * (fx - fy)
    b = 200 * (fy - fz)
    return [L, a, b]

def ciede2000(lab1, lab2):
    L1, a1, b1 = lab1
    L2, a2, b2 = lab2
    avg_L = (L1 + L2) / 2
    C1 = sqrt(a1**2 + b1**2)
    C2 = sqrt(a2**2 + b2**2)
    avg_C = (C1 + C2) / 2
    G = 0.5 * (1 - sqrt((avg_C**7) / (avg_C**7 + 25**7)))
    a1p = a1 * (1 + G)
    a2p = a2 * (1 + G)
    C1p = sqrt(a1p**2 + b1**2)
    C2p = sqrt(a2p**2 + b2**2)
    avg_Cp = (C1p + C2p) / 2
    h1p = degrees(atan2(b1, a1p)) % 360
    h2p = degrees(atan2(b2, a2p)) % 360
    if abs(h1p - h2p) > 180:
        avg_hp = (h1p + h2p + 360) / 2 if h1p + h2p < 360 else (h1p + h2p - 360) / 2
    else:
        avg_hp = (h1p + h2p) / 2
    T = 1 - 0.17 * cos(radians(avg_hp - 30)) + 0.24 * cos(radians(2 * avg_hp)) + \
        0.32 * cos(radians(3 * avg_hp + 6)) - 0.20 * cos(radians(4 * avg_hp - 63))
    delta_hp = h2p - h1p
    if abs(delta_hp) > 180:
        delta_hp += 360 if delta_hp < 0 else -360
    delta_Hp = 2 * sqrt(C1p * C2p) * sin(radians(delta_hp / 2))
    delta_Lp = L2 - L1
    delta_Cp = C2p - C1p
    Sl = 1 + (0.015 * (avg_L - 50)**2) / sqrt(20 + (avg_L - 50)**2)
    Sc = 1 + 0.045 * avg_Cp
    Sh = 1 + 0.015 * avg_Cp * T
    delta_ro = 30 * exp(-((avg_hp - 275) / 25) ** 2)
    Rc = 2 * sqrt((avg_Cp**7) / (avg_Cp**7 + 25**7))
    Rt = -Rc * sin(radians(2 * delta_ro))
    return sqrt((delta_Lp / Sl) ** 2 + (delta_Cp / Sc) ** 2 +
                (delta_Hp / Sh) ** 2 + Rt * (delta_Cp / Sc) * (delta_Hp / Sh))

def hsluv_distance(hsl1, hsl2):
    rgb1 = hsluv_to_rgb(hsl1)
    rgb2 = hsluv_to_rgb(hsl2)
    lab1 = xyz_to_lab(rgb_to_xyz(rgb1))
    lab2 = xyz_to_lab(rgb_to_xyz(rgb2))
    return ciede2000(lab1, lab2)

if __name__ == "__main__":
    hsl_a = [180, 100, 64]
    hsl_b = [180, 100, 74]
    delta_e = hsluv_distance(hsl_a, hsl_b)
    print(f"ΔE00 between {hsl_a} and {hsl_b} = {delta_e:.2f}")
