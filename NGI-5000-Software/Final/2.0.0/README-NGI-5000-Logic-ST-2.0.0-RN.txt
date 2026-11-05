# NGI-5000 Logic ST Firmware RELEASE NOTES

README-NGI-5000-Logic-ST-2.0.0-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 2.0.0 Files 

* NGI-5000-20240920-2.0.0.bin - Logic ST micro firmware

## Release Kind

Final Release.

## Intended Use and Users

This is the NGI-5000 Logic Module ST micro firmware.

It is for use by customers.

## What has Changed from Previous Version

* Added second plug-cut-out options from engine-config-tool.
    * Option 1: second plug cutout feature not enabled.
    * Option 2: Active when RPM > 200
    * Option 3: Active when miscellaneous input is grounded
* Register 10010 indicates whether second plug cut-out is active/would be active if firing.

## What Has Been Fixed

* EEPROM continuous writing issue was resolved.

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/Final/2.0.0

## Other Software/Firmware Components Relevant This Release

* Only to be used with 2.0.3 and later CM4.

## Load/Install/Update Instructions:

* Note: after installing this version, the default settings will be loaded in place of the configured settings. Before updating, make note of the configured settings, so that they can be manually entered again after updating the firmware.
* From Logic Module CM4 software 2.0.3 onward, Logic ST bootloader updates can be performed from the index page at 192.168.1.2 and require no USB drive (per the Logic Module CM4 2.0.3 release notes).
* Refer to Section 10 (Updating software) of the NGI-5000 Operating Instructions: https://www.altronic-llc.com/documentation/ngi-5000/operating-instructions/

## Target, Tools, and Equipment:

N/A

## Design Source Repository:

N/A
