# NGI-5000 Logic Module Software RELEASE NOTES

README-NGI-5000-Logic-2.2.1-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 2.2.1 Files 

* NGI-5000-Logic_2.2.1_arm64.deb - Debian install package for CM4

## Release Kind

Release Candidate.

## Intended Use and Users

This is the NGI-5000 CM4 Logic Module Software Package. It installs software on the CM4 for use in configuring and monitoring engine firing.

It is for use by customers.

## What has Changed from Previous Version

* Updates to one coil per cylinder configuration.
* Updates to AWI screens: Added hall effects per cycle setting in "Setup" screen. This should normally be 1 unless the hall effect spins at an abnormal speed due to gear ratios.

## What Has Been Fixed

N/A

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/RC/2.2.0

## Other Software/Firmware Components Relevant This Release

* Used with v2.1.0 (20251002) of ST firmware.
* DCPM CM4 1.2.2 is documented as used with this version (v2.2.1) of the Logic Module CM4 software.

## Load/Install/Update Instructions:

* Note (from the DCPM CM4 1.2.2 release notes): you will have to update the ST first, then the Logic Module CM4 and finally the DCPM CM4.
* Refer to Section 10 (Updating software) of the NGI-5000 Operating Instructions: https://www.altronic-llc.com/documentation/ngi-5000/operating-instructions/

## Target, Tools, and Equipment:

Updating anything from 1.4.X to 2.X.X requires reimaging the CM4 (see NGI-5000-Logic-CM4-2.0.3.zip in Final/2.0.0).

## Design Source Repository:

N/A
