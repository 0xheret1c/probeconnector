#!/usr/bin/python3
from math import log10

def dbmToMeter(dBm):
    frequency = 2417
    fspl = 27.55 # Free-Space Path Loss adapted avarage constant for home WiFI routers and following units
    distance = 10 ** (( fspl - (20 * log10(frequency)) + dBm ) / 20 )
    return round(distance,4)

print(str(dbmToMeter(49)))