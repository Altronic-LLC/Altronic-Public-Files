# NGI-5000 Logic ST Firmware RELEASE NOTES

README-NGI-5000-Logic-ST-2.0.1-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 2.0.1 Files 

* NGI-5000-20250214-2.0.1.bin - Logic ST micro firmware

## Release Kind

Final Release (originally uploaded as a Release Candidate and promoted to Final).

## Intended Use and Users

This is the NGI-5000 Logic Module ST micro firmware.

It is for use by customers.

## What has Changed from Previous Version

N/A

## What Has Been Fixed

* Attempt to fix the missing reset output and a missing firing cycle (except the last firing) by not clearing the flags of a timer interrupt.
* Because of the extra firing that would occur, this also attempts to fix the alarm "NO DISCHARGE" on a cylinder that is non-existent or past the firing pattern.

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/Final/2.0.2

## Other Software/Firmware Components Relevant This Release

* Only to be used with 2.0.3 and later CM4.

## Load/Install/Update Instructions:

* From Logic Module CM4 software 2.0.3 onward, Logic ST bootloader updates can be performed from the index page at 192.168.1.2 and require no USB drive (per the Logic Module CM4 2.0.3 release notes).
* Refer to Section 10 (Updating software) of the NGI-5000 Operating Instructions: https://www.altronic-llc.com/documentation/ngi-5000/operating-instructions/

## Target, Tools, and Equipment:

N/A

## Design Source Repository:

N/A
