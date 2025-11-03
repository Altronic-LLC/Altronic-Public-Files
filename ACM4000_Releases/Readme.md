# Overview

## Final Release Folder
  - The officially released and fully validated version. This is the recommended version for production use. Once a version is marked Final, it represents the most stable and trusted release for that product or application.
  ### When to Use:
  - Use this release to apply the latest fixes, quality of life improvements, and new features while ensuring stability. This is the new baseline version.
  ### Applicable Links:
  - [Click here to see final releases](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/acm-core-1.0.1)
  - [Click here to see latest final release (MDI acm-core-1.0.1 Final)](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/acm-core-1.0.1/)
  - [Click here to download latest final release (MDI acm-core-1.0.1 Final)](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/acm-core-1.0.1/mdi-acm-core-1.0.1.atf?download=)
  ### Change Log:
  <details>
  <summary><h3>📋 acm-core-1.0.1 Changelog (Click to expand)</h3></summary>

# [acm-core-1.0.1](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/acm-core-1.0.1/acm-core-1.0.1.atf)
# [acm-core-1.0.1](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/acm-core-1.0.1/acm-core-1.0.1.atf)

> **Copyright (c) 2025. All rights reserved.**  
> HOERBIGER ENGINE DIVISION  
> Altronic, LLC  
> 712 Trumbull Avenue  
> Girard, Ohio 44420  
> United States of America

## Release Kind: Final Release

## Intended Use and Users

Latest Production Release.

### Changelog:

#### Versioning:
- **FUXA:** 1.0.0
- **Expanded Comms:** 1.0.0
- **eRCM:** 1.0.0
- **MDI:** 1.1.17

#### Quality of Life Changes:
- **USB Update Naming:** Renamed USB update to acm-core-X.X.X and added support for update files that start with both `mdi-` and `acm-` prefixes.

> **⚠️ Important:** Starting with this release releases, USB update packages will use the new naming convention: `acm-core-X.X.X` instead of `mdi-X.X.X`. This change reflects the expanded scope of the ACM platform beyond just the MDI interface - with the integration of FUXA, Expanded Communications, and ACI Server packages, the system now encompasses a comprehensive control and monitoring solution where the MDI is just one component of the broader ACM ecosystem.

#### Bug Fixes:
- **New ACM Ercm File Transfer:** Fixed an issue that causes production provisioned ACM's to be unable to recieve files from the DE-4000 such as eRCM license files.
- **New ACM Real Time Clock:** Fixed an issue where the Real Time Clock on the ACM-4000 was not updated to the DE-4000's time when using a New ACM. This caused odd issues due to timing out of sync.
- **Main Device Custom URL:** Fixed an issue where if an invalid URL is placed as the custom URL the UI would not load on the ACM any longer. If an invalid URL is now placed in the Custom URL Field, it will now revert to the Default(DE-4000).
- **Ethernet Ip Validation:** Enhanced Validation for Ethernet Ip addresses to ensure 2 IP's or ports are not on the same subnet.
- **Writing to a Modbus RTU device over Modbus TCP:** Fixed an intermittant issue that caused Modbus TCP writes to the slave server to a Modbus RTU device to fail.
- **ACM-4000 Datalogging:** Fixed an issue where if you were to update the ACM-4000, if there is no SD card it would log data to the CM4.
- **ACM-4000 Network Configuration:** Fixed an intermittant issue that caused network saves to fail until the ACM-4000 was power cycled.
s

#### New Features:


## Where To Find This Release

### ACM-4000 bootloader update version acm-core-1.0.1

[acm-core-1.0.1](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/acm-core-1.0.1/acm-core-1.0.1.atf)

## Update Instructions

### For ACM-4000 with MDI Already Installed

> **⚠️ Important:** When updating a system where the Main Device is the DE-4000, Altronic recommends updating the DE-4000 prior to the ACM-4000 to ensure proper compatibility and system synchronization.

1. **Download acm-core-1.0.1**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/Final/acm-core-1.0.1/acm-core-1.0.1.atf?download=)
2. **Prepare USB**: Copy downloaded file onto USB Flash Drive
3. **Prepare Device**: Power on ACM-4000 which you would like to update
4. **Connect USB**: Insert USB Flash Drive into ACM-4000
5. **Access Menu**: Click the Hamburger button on the MDI
6. **Navigate to System**: Click System Info
7. **Locate Update File**:
  - Click Refresh 
  - You will see the file you added to the USB
8. **Select Update**:
  - Click the checkbox for this file
  - Click update
9. **Finalize**: Once update is complete, the ACM-4000 will power cycle automatically

### For ACM-4000 without MDI Already Installed

1. **Download MDI Image**: [Download MDI 1.0.0 from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.0-Image/MDI_1.0.0.zip?download=)
2. **Install Base Image**: Follow the [ACM Imaging Instructions](https://www.altronic-llc.com/wiki-doc/acm-4000/acm-4000-imaging-guide/) to install the base MDI system
3. **Update to Latest Version**: 
   - Once the base image is installed, follow the "For ACM-4000 with MDI Already Installed" instructions above to update to the latest version
   - This will bring your system from version 1.0.0 to the current version

## Target, Tools, and Equipment

### Required Hardware
- ACM-4000 device
- USB Flash Drive (≥ 2GB)

### For Base Image Installation
If your ACM-4000 does not currently have the MDI installed, you will need:

- **Software Tools**:
  - RPIboot utility
  - Raspberry Pi Imager application
  - MDI 1.0.0 base image file
- **Additional Hardware**:
  - USB-A to USB-C Cable from PC(USB A) to ACM-4000(USB-C) connected to USB OTG Port 
  - Jumper wire for RPI boot pin on the ACM 3rd PIN Over from DO1

### Imaging Process Notes
Complete imaging instructions can be found in the [ACM Imaging Instructions](https://www.altronic-llc.com/wiki-doc/acm-4000/acm-4000-imaging-guide/) documentation.



</details>

---

## Release Candidate Folder
  - A release candidate (RC) is a pre-release version of software that is considered nearly ready for final distribution. It has undergone significant testing and includes all planned features and bug fixes, but may still require minor tweaks or validation before the official stable release.
  ### When to Use:
  - A staging software version intended for **application testing**.
  ### Applicable Links:
  - [Click here to see release candidates](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/)

---

## Preview Release Folder
  - A preview release is an early version of software made available to users before the official stable release. It showcases new features, improvements, or changes for testing and feedback, but may contain bugs or incomplete elements. Often called a beta or developer preview.
  ### When to Use:
  - it’s intended for evaluation and not for critical use. **Not to be used in the field**,
  ### Applicable Links:
  - [Click here to see preview releases](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/)

---

## MDI 1.0.0 Field Image
  - The **MDI 1.0.0 Initial Field Image** provides the complete system image required to install the operating system and MDI interface on the Compute Module 4 (CM4). This image is intended for **first-time installations** or **full re-imaging** of the device.

  ### When to Use:
  - Use when **setting up the CM4 for the first time** or when performing a full system reinstallation.  

  ### Applicable Links:
  - [Click here to view the MDI 1.0.0 Field Image](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.0-Image/MDI_1.0.0.zip)
  - [Click here to download MDI 1.0.0 Field Image](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.0-Image/MDI_1.0.0.zip?download=)
  ---

# Documentation #
[ACM Imaging Instructions](https://www.altronic-llc.com/wiki-doc/acm-4000/acm-4000-imaging-guide/)

[MDI Documentation](https://www.altronic-llc.com/wiki-doc/acm-4000/acm-4000-multi-device-interfacemdi-manual/)


