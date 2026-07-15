# Overview

---

## Final Release Folder
  - The officially released and fully validated version. This is the recommended version for production use. Once a version is marked Final, it represents the most stable and trusted release for that product or application.
  ### When to Use:
  - Use this release to apply the latest fixes, quality of life improvements, and new features while ensuring stability. This is the new baseline version.
  ### Applicable Links:
  - [Click here to see final releases](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/)
  - [Click here to see latest final release (DE-4000 3.1.10 Final)](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.1.10/)
  - [Click here to download latest final release (DE-4000 3.1.10 Final)](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.1.10/bootloader_3.1.10.atf?download=)
  ### Change Log:
  <details>
  <summary><h3>📋 3.1.10 Changelog (Click to expand)</h3></summary>

# [DE-4000 Bootloader 3.1.10](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.1.10/bootloader_3.1.10.atf)

> **Copyright (c) 2025. All rights reserved.**  
> Altronic, LLC  
> 712 Trumbull Avenue  
> Girard, Ohio 44420  
> United States of America

## Release Kind: Final Release

## Intended Use and Users

The officially released and fully validated version. This is the recommended version for production use. Once a version is marked Final, it represents the most stable and trusted release for that product or application.

### Changelog:

#### New Features:
- **Auto Restart Feature:** Added auto restart feature under global -> System Timers. See sequence of operations for feature here: [Auto-Restart-Sequence-of-Operations.pdf](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.1.10/Auto-Restart-Sequence-of-Operations.pdf)
- **Event Log Overhaul:** Added event log overhaul. Event log is no longer handled in the browser and is handled on the controller. Added the ability to Export events to a csv file when connected with a PC. Added the ability to log state changes. Added the ability to filter our faults, state changes, alarms, and resets.
- **400017 Status Register:** Added 400017 status register, which is meant to give all information for status inside of 1 register. See breakdown of all values here: [DE-4000_REG_40017_4-7-26.xlsx](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.1.10/DE-4000_REG_40017_4-7-26.xlsx)

#### Obsolescence:
- **Wifi Chip:** Added support for a new Wifi chip due to obsolescence of the previous module.

#### Bug Fixes:
- **API Req Watchdog Fault:** Fixed an issue that caused intermittant watchdog faults when using the api_req() function in script.
- **Physical Reset Button:** Fixed an issue where pressing the physical hardware reset button would incorrectly clear class B and C faults.
- **DO Usage Matrix:** Fixed an issue with the digital output usage matrix display.
- **DS4 Startup Dropdown:** Fixed an issue where DS4 was not showing in the startup dropdown on boot.

## Where To Find This Release

### DE-4000 bootloader update version 3.1.10

# [DE-4000 Bootloader 3.1.10](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.1.10/bootloader_3.1.10.atf)


## Update Instructions

### For DE-4000 with Version >= 3.0.0
1. **Download DE-4000 Bootloader Version 3.1.10**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.1.10/bootloader_3.1.10.atf?download=)
2. **Prepare USB**: Copy downloaded file onto USB Flash Drive
3. **Prepare Device**: Power on DE-4000 which you would like to update
4. **Connect USB**: Insert USB Flash Drive into DE-4000
5. **Access Menu**: Click Settings
6. **Navigate to System**: Click System Info
7. **Locate Update File**:
   - Click Refresh 
   - You will see the file you added to the USB
8. **Select Update**:
   - Click the checkbox for this file
   - Click update
9. **Finalize**: Once update is complete, the ACM-4000 will power cycle automatically

### For DE-4000 With Version < 3.0.0
https://www.altronic-llc.com/wp-content/uploads/DE-4000-Firmware-Download-Quick-Start-Guide.pdf

### Required Hardware
- DE-4000 Controller Board
- DE-4000 Terminal Board
- USB Flash Drive (≥ 2GB)
- HMI or PC

---




</details>

---

## Release Candidate Folder
  - A release candidate (RC) is a pre-release version of software that is considered nearly ready for final distribution. It has undergone significant testing and includes all planned features and bug fixes, but may still require minor tweaks or validation before the official stable release.
  ### When to Use:
  - A staging software version intended for **application testing**.
  ### Applicable Links:
  - [Click here to see release candidates](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/)

---

## Preview Release Folder
  - A preview release is an early version of software made available to users before the official stable release. It showcases new features, improvements, or changes for testing and feedback, but may contain bugs or incomplete elements. Often called a beta or developer preview.
  ### When to Use:
  - it’s intended for evaluation and not for critical use. **Not to be used in the field**,
  ### Applicable Links:
  - [Click here to see preview releases](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/PR/)
  ---

  ## Config Recovery File Folder
  - The config recovery file folder contains the update.atf which will revert the DE-4000 to default settings.
  - [Click here to see config recovery file folder](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Config%20Recovery%20File/)
---

# Documentation #
[DE-4000 Doucmentation](https://www.altronic-llc.com/product/controls/de-4000/)
