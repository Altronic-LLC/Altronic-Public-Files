# NGI-5000 Logic Module Software RELEASE NOTES

README-NGI-5000-Logic-2.0.3-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 2.0.3 Files 

* NGI-5000-Logic_2.0.3_arm64.deb - Debian install package for CM4

## Release Kind

Final Release.

## Intended Use and Users

This is the NGI-5000 CM4 Logic Module Software Package. It installs software on the CM4 for use in configuring and monitoring engine firing.

It is for use by customers.

## What has Changed from Previous Version

* Official release (2.0.0 - 2.0.2 were RC only)
* Incorporates Legacy mode operation for the CPU-2000
* Incorporates Full System mode for NGI-5000 operation
* Index page at 192.168.1.2 is now updated to offer many new features:
    * Open to a landing page
    * Communications adjustment
    * Ability to adjust wifi
    * Ability to set gigabit port IP address
    * Engine configuration
    * Selecting NGI-5000 or CPU-2000 will determine how the device is programmed
    * Cylinder labels active and will display on module
    * Bootloader updates (requires no USB drive) for Logic CM4, Logic ST and CIUs
* Banner at top of display to show legacy or full system mode
* CIU screens were added: Configuration, Monitoring, Diagnostics
* Power Screen added: can turn on or off each primary voltage supply; can reset e-fuse

Changes first listed for 2.0.0 RC1 (6-12-24):

* Added warning LEDs for Low Voltage Recharge Bank A, Low Voltage Recharge Bank B to top screen.
* Added fault LED for Misaligned CAM HE to top screen
* Added "TRYING" state to Engine Status on top screen
* Added "TRYING with Alarms" and "FIRING with Alarms" to engine state (background is yellow) when there are Alarms active on top screen
* Added Discharge and Recharge screen under Warnings screen
* Added ability for the ST to know whether it is a NGI-5000 legacy system or a NGI-5000 system from engine config tool

## What Has Been Fixed

N/A

## Where To Find This Release

Altronic Public Files repository root /NGI-5000-Software/Final/2.0.0

## Other Software/Firmware Components Relevant This Release

Works with ST firmware 2.0.0.

Note: the Logic Module CM4 2.0.4 release notes state that MODBUS was not operational in 2.0.3.

## Load/Install/Update Instructions:

* If the Logic Module is already on 2.0.x, the .deb package can be installed through the package manager.
* Refer to Section 10 (Updating software) of the NGI-5000 Operating Instructions: https://www.altronic-llc.com/documentation/ngi-5000/operating-instructions/

## Target, Tools, and Equipment:

Updating anything from 1.4.X to 2.X.X requires reimaging the CM4 (see NGI-5000-Logic-CM4-2.0.3.zip in Final/2.0.0).

## Design Source Repository:

N/A
