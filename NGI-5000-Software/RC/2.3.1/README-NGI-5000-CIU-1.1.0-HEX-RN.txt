# NGI-5000 CIU Firmware RELEASE NOTES

README-NGI-5000-CIU-1.1.0-HEX-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 1.1.0 Files 

* NGI-5000-CIU-1.1.0.hex - CIU firmware in .hex format

## Release Kind

Release Candidate.

## Intended Use and Users

This is the NGI-5000 CIU firmware v1.1.0 in .hex format, for programming the CIU microcontroller directly with Uploader.bat.

It is for use by customers.

## What has Changed from Previous Version

* Added support for simultaneous cylinder firing patterns.

## What Has Been Fixed

N/A

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/RC/2.3.1

## Other Software/Firmware Components Relevant This Release

Same firmware version as NGI-5000-CIU-v1.1.0.ciu (see README-NGI-5000-CIU-1.1.0-RN.txt). This CIU firmware is intended to be used by the NGI-5000 Logic Module.

## Load/Install/Update Instructions:

* The .hex file and Uploader.bat are in the CIU Manual Update folder of this release. Keep them together; Uploader.bat programs the .hex file from its own folder.
* Uploader.bat uses pymcuprog to:
    1. Write fuse 5 = 0xC1 on the AVR128DB48 (references COM3)
    2. Erase the AVR128DB48 (references COM9)
    3. Write NGI-5000-CIU-1.1.0.hex from the same folder as the script (references COM9)
* All steps use the pymcuprog UART tool at 57600. The COM port numbers in the script may need to match the serial port in use.

## Target, Tools, and Equipment:

* Windows PC (to run Uploader.bat) with Python and pymcuprog installed
* UART connection to the CIU's AVR128DB48 microcontroller
* Applies to NGI-5000 Full System mode only (CIUs are not used in Legacy mode).

## Design Source Repository:

N/A
