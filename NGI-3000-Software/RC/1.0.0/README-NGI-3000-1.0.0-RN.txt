# NGI-3000 Update Bundle RELEASE NOTES

README-NGI-3000-1.0.0-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 1.0.0 Files 

* NGI-3000_1.0.0.tar - Combined update bundle for the NGI-3000 Ignition Module and Display Module

## Release Kind

Release Candidate.

## Intended Use and Users

This is the NGI-3000 Update Bundle. It updates the software and firmware on every module of an NGI-3000 in a single step from the config tool, in place of installing each CM4 package and ST firmware image separately.

It is for use in internal testing.

## What has Changed from Previous Version

First release of the NGI-3000 Update Bundle. The bundle contains:

* NGI-3000-Logic_1.4.1_arm64.deb - Ignition Module CM4 package v1.4.1
* NGI-3000-Display_1.2.0_arm64.deb - Display Module CM4 package v1.2.0
* NGI-3000-Logic-ST_v1.2.5.bin - Ignition Module ST firmware v1.2.5
* NGI-3000-Display-ST_v1.0.2.bin - Display Module ST firmware v1.0.2
* manifest.json - Bundle version, and the version and SHA-256 checksum of each component
* install.js - Install sequence, run on the Ignition Module CM4

See the release notes for each CM4 package for its changes.

When a bundle is installed, the config tool checks the bundle's contents and checksums, then updates the modules in this order:

1. Display Module ST firmware (only if the Display Module is connected).
2. Display Module CM4 package (only if the Display Module is connected).
3. Ignition Module ST firmware.
4. Ignition Module CM4 package.
5. The Display Module and then the Ignition Module are rebooted, if anything was installed on them.

Components already at the bundle's version are skipped, so a failed update can be retried with the same bundle and will pick up where it stopped. Any failure stops the sequence. "Force reinstall" in the config tool installs every component regardless of version.

## What Has Been Fixed

N/A. First release.

## Where To Find This Release

Altronic-Public-Files repository root /NGI-3000-Software/RC/1.0.0.

## Other Software/Firmware Components Relevant This Release

Installing a bundle requires the Ignition Module to be running Ignition Module CM4 package >= 1.4.0. Earlier config tools do not support update bundles. See the install instructions below.

Display Module components are only installed on a Rev. B Display Module.

## Load/Install/Update Instructions:

If the Ignition Module is running Ignition Module CM4 package 1.4.0 or later:

* Download the bundle (NGI-3000_1.0.0.tar) to your local machine. Do not extract it.
* Connect to the config tool and open the update screen.
* Select "Full System Update (all modules)" and upload NGI-3000_1.0.0.tar.
* Do not power down either module until the config tool reports the update is complete. The config tool will lose connection while the Ignition Module CM4 package installs and while the modules reboot. This is expected, and the progress display will reconnect on its own.

If the Ignition Module is running Ignition Module CM4 package 1.3.0 or earlier, or "Full System Update (all modules)" is not offered in the config tool:

* First update the Ignition Module CM4 package to 1.4.0 or later. Using the config tool, select to update Ignition Module CM4, and upload NGI-3000-Logic_1.4.1_arm64.deb (from CM4_Core /packages/NGI-3000_Logic/releases/1.4.1).
* Once the update completes, reload the config tool and install the bundle using the steps above. Components that are already up to date will be skipped.

Update progress is logged on the Ignition Module at /home/altronic/ngi3000-update/install.log.

## Target, Tools, and Equipment:

Any NGI-3000 Rev. D Ignition Module with a Rev. B Display Module is compatible with this bundle. A Ignition Module without a connected Display Module can also be updated; the Display Module steps are skipped.

## Design Source Repository:

* Source repositories are internal to Altronic.
