# NGI-5000 Logic Module Firmware RELEASE NOTES

README-NGI-5000-Logic-2.3.0-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 2.3.0 Files 

* NGI-5000-Logic_2.3.0_arm64.deb - Debian install package for CM4

## Release Kind

Release Candidate.

## Intended Use and Users

This is the NGI-5000 CM4 Logic Module Software Package. It installs software on the CM4 for use in configuring and monitoring engine firing.

It is for use by customers.

## What has Changed from Previous Version

A new AWI File Manager screen has been added to the Config Tool. It enables easy adding, removing, renaming, and downloading files 
in the template-screens directories for all available output modules.

Firing patterns that support up to 20 cylinders have been added to the config tool.

AWI screens have been added to support up to 20 cylinders.

## What Has Been Fixed

Excess event logging was removed from the client side.

Bottom bar UI on Landing page made consistent with other pages.

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/CM4-Update/RC

## Other Software/Firmware Components Relevant This Release

Intended for use with DCPM CM4 package v1.2.3 and ST Firmware v2.2.1.

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

The following repositories contribute code to the CM4 Logic Module package:
* github.com/Altronic-LLC/iris-go
* github.com/Altronic-LLC/mb485_proxy
* github.com/Altronic-LLC/NGI-5000-Firing-Pattern-Config
* github.com/Altronic-LLC/engine_config_go
