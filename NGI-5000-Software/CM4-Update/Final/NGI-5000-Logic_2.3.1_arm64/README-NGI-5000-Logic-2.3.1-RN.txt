# NGI-5000 Logic Module Software RELEASE NOTES

README-NGI-5000-Logic-2.3.1-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 2.3.1 Files 

* NGI-5000-Logic_2.3.1_arm64.deb - Debian install package for CM4

## Release Kind

Final Release.

## Intended Use and Users

This is the NGI-5000 CM4 Logic Module Software Package. It installs software on the CM4 for use in configuring and monitoring engine firing.

It is for use by customers.

## What has Changed from Previous Version

N/A

## What Has Been Fixed

Bug where "wired in parallel" configuration could be selected for NGI-5000 output module has been fixed.

Warnings now display properly for output 15 on AWI in Legacy mode.

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/CM4-Update/Final

## Other Software/Firmware Components Relevant This Release

Intended for use with DCPM CM4 package v1.2.3, Logic ST Firmware v2.2.1, and CIU firmware v1.1.0.

## Load/Install/Update Instructions:

* Download the .deb package to your local machine.
* Connect to the NGI-5000 Logic Module via Wi-Fi or Ethernet.
* Click the Update button in the bottom right of the screen.
* Select "Logic Module CM4 Software", upload the .deb package, and click Update.
* The Logic Module will take some time to install the update. After it finishes, the Logic Module will reboot.

## Target, Tools, and Equipment:

Any NGI-5000 Logic Module on version 2.X.X can update using the config tool.
Lower versions (1.4.X and below) will require reimaging the CM4.

Updating requires a computer and a Wi-Fi or Ethernet connection to the Logic Module CM4.

## Design Source Repository:

This CM4 Logic release package is based on code from repositories internal to Altronic.