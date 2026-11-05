# NGI-5000 Logic ST Firmware RELEASE NOTES

README-NGI-5000-Logic-ST-2.1.0-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 2.1.0 Files 

* NGI-5000-v2.1.0-20251002.bin - Logic ST micro firmware

## Release Kind

Release Candidate.

## Intended Use and Users

This is the NGI-5000 Logic Module ST micro firmware.

It is for use by customers.

## What has Changed from Previous Version

* Added the 275V low fault. This fault occurs anytime when rotating and seeing the DC HV go below 200 V.
    * There has to be no rotation for the fault to be cleared. Fire confirm is cleared during fault.
    * For the fault to not happen, the DC HV must be greater than 200V before any rotation.
    * There is an issue on getting a 275V fault on power up.
* Added multiple Hall Effects per cycle register setting.
    * This should normally be set to 1, but on engines with a gear ratio that causes the CAM to spin at a different rate than normal, this can be set to the number of expected hall effects per cycle.
    * For example on a 1.5 to 1 gear ratio, the hall effects per cycle should be set to 3.
    * If the counted hall effects per cycle is not the same as this setting, a fault will occur and the register "hall effects per cycle seen" will be the diagnostic for how many hall effects per cycle were seen.
* Added 1 coil per cylinder mode for NGI-5000 full system. Only channel 1 of the CIUs will fire in this mode if it is configured to do so in the engine config tool.

## What Has Been Fixed

* Fixed miscellaneous input not being correct on power up.
* Fixed wrong last condition (missing gear tooth) during ending of test mode and during a user shutdown during the "TRYING" engine state.
* Fixed two extra firings occurring before the reset output when going from "INSYNC" to "TRYING".

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/RC/2.2.0

## Other Software/Firmware Components Relevant This Release

Only to be used with version 2.2.1 and later NGI-5000-Logic CM4 software and version 1.2.2 and later DCPM CM4 software (if NGI-5000 full system).

## Load/Install/Update Instructions:

* Note (from the DCPM CM4 1.2.2 release notes): you will have to update the ST first, then the Logic Module CM4 and finally the DCPM CM4.
* From Logic Module CM4 software 2.0.3 onward, Logic ST bootloader updates can be performed from the index page at 192.168.1.2 and require no USB drive (per the Logic Module CM4 2.0.3 release notes).
* Refer to Section 10 (Updating software) of the NGI-5000 Operating Instructions: https://www.altronic-llc.com/documentation/ngi-5000/operating-instructions/

## Target, Tools, and Equipment:

N/A

## Design Source Repository:

N/A
