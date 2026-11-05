# NGI-5000 Logic ST Firmware RELEASE NOTES

README-NGI-5000-Logic-ST-2.0.2-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 2.0.2 Files 

* NGI-5000-20250425-2.0.2.bin - Logic ST micro firmware

## Release Kind

Final Release (originally uploaded as a Release Candidate and promoted to Final). Released under ECN250042.

## Intended Use and Users

This is the NGI-5000 Logic Module ST micro firmware.

It is for use by customers.

## What has Changed from Previous Version

N/A

## What Has Been Fixed

* ST micro firmware change for allowing Logic Module to go into firing state when in Legacy Mode and advanced feature bank cut-off is active.
    * There was an issue in the field that the Logic Module would not go into firing state when in Legacy Mode and the miscellaneous input was used for bank cut-off. The logic module would stay in the "Trying" state.

The release candidate notes (20250424) described this as: "Attempt to fix the engine state not going from 'Trying' to 'Firing' in legacy system when second plug cut-off advanced feature is active."

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/Final/2.0.3

## Other Software/Firmware Components Relevant This Release

* Only to be used with 2.0.3 and later CM4.

## Load/Install/Update Instructions:

* From Logic Module CM4 software 2.0.3 onward, Logic ST bootloader updates can be performed from the index page at 192.168.1.2 and require no USB drive (per the Logic Module CM4 2.0.3 release notes).
* Refer to Section 10 (Updating software) of the NGI-5000 Operating Instructions: https://www.altronic-llc.com/documentation/ngi-5000/operating-instructions/

## Target, Tools, and Equipment:

N/A

## Design Source Repository:

N/A
