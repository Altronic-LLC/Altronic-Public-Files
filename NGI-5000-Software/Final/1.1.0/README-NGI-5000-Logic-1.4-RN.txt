# NGI-5000 Logic Module Software RELEASE NOTES

README-NGI-5000-Logic-1.4-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 1.4 Files 

* NGI5000_logic_update_20240326_build_1.4.zip - Logic Module CM4 update package

## Release Kind

Final Release.

## Intended Use and Users

This is the NGI-5000 Logic Module CM4 software update package for Logic Modules on the 1.X.X platform.

It is for use by customers.

## What has Changed from Previous Version

These notes were originally written for the 1.4 release candidate (2-13-2024).

* All text is black not mixed grey/black
* Adds new style gages
* Adds the ability for color enumeration on gages to use other keys
* With the color enumeration, overspeed key is used on gage on display
* Added updater progress screen and feedback to the user when performing software update

## What Has Been Fixed

* Fixed the B timing loop to be 36 degrees not 32 degrees
* Fixes the config pattern for X4L type patterns

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/Final/1.1.0

## Other Software/Firmware Components Relevant This Release

The 1.4 release notes state: "This only works with ST firmware 1-9-2024."

Logic ST firmware 1.4.1 is documented as "Only to be used with the released version of the CM4 1.4".

## Load/Install/Update Instructions:

* Updating 1.4.X to 1.4.Y means using the old way of updating the CM4 and instructions are in literature.
* Zip file transferred to desktop of NGI-5000 logic still zipped, unzip and double click the .sh file.
* Refer to Section 10 (Updating software) of the NGI-5000 Operating Instructions: https://www.altronic-llc.com/documentation/ngi-5000/operating-instructions/

## Target, Tools, and Equipment:

For Logic Modules on the 1.X.X platform. Updating anything from 1.4.X to 2.X.X requires reimaging the CM4 (see NGI-5000-Logic-CM4-2.0.3.zip in Final/2.0.0).

## Design Source Repository:

N/A
