#!/usr/bin/python3
# IMPORTS
import sys # sys.argv

# DIRS
CAP_FILE = sys.argv[1]

OFFSET = 42 # First frame offset.
# Locations in frame
DEST_ADDR = 31
SRC_ADDR = 37
SSID = 53

SSID_LENGTH = 52

# Open the .cap file.
with open(CAP_FILE, "rb") as FILE:
    # Read the whole file at once
    data = FILE.read()

print(data[42])


# Get location of the next request.
# We need to calculate the length of the current request,
# to know where the next request begins.
# To get the total length, whe have to add all the 'length' bytes
# of which the location may vary because of the length of the previous
# data such as the SSID.
SUPPORTED_LENGTH = 68
SUPPORTED_EXTENDED_LENGTH = 74
DS_TAG_LENGTH = 84
HT_TAG_LENGTH = 87


