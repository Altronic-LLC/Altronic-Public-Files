# Overview

## Final Release Folder
  - The officially released and fully validated version. This is the recommended version for production use. Once a version is marked Final, it represents the most stable and trusted release for that product or application.
  ### When to Use:
  - Use this release to apply the latest fixes, quality of life improvements, and new features while ensuring stability. This is the new baseline version.
  ### Applicable Links:
  - [Click here to see final releases](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/mdi-acm-core-1.0.0)
  - [Click here to see latest final release (MDI mdi-acm-core-1.0.0 Final)](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/mdi-acm-core-1.0.0/)
  - [Click here to download latest final release (MDI mdi-acm-core-1.0.0 Final)](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/mdi-acm-core-1.0.0/mdi-mdi-acm-core-1.0.0.atf?download=)
  ### Change Log:
  <details>
  <summary><h3>📋 mdi-acm-core-1.0.0 Changelog (Click to expand)</h3></summary>

# [mdi-acm-core-1.0.0](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/mdi-acm-core-1.0.0/mdi-acm-core-1.0.0.atf)

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
- **MDI:** 1.1.13

#### Quality of Life Changes:
- **Package Management:** Added the ability to view versions of FUXA, Expanded Comms, and ACI Server packages in the ACM.
- **USB Update Naming:** Renamed USB update to mdi-acm-core-X.X.X and added support for update files that start with both `mdi-` and `acm-` prefixes.

> **⚠️ Important:** Starting with future releases, USB update packages will use the new naming convention: `acm-core-X.X.X` instead of `mdi-X.X.X`. This change reflects the expanded scope of the ACM platform beyond just the MDI interface - with the integration of FUXA, Expanded Communications, and ACI Server packages, the system now encompasses a comprehensive control and monitoring solution where the MDI is just one component of the broader ACM ecosystem. The current `mdi-acm-core-1.0.0` naming is used only for this transitional version since we added the ability to identify files using the `acm-` prefix in this release.
- **Cursor Display:** Modified the startup script to allow cursor to be shown when connected to the ACM with a mouse.
- **Network Configuration:** Modified the Client Mode Network to use nmcli instead of wpa_supplicant for improved reliability.
- **Serial Port Path:** Modified path for RS485 ports due to an intermittant issue where serial ports would sometimes disconnect and reconnect.

#### Bug Fixes:
- **Temperature Watchdog:** Removed software watchdog from MDI-Gateway which caused a reboot cycle when above 90°C CM4 temperature.
- **TCP Server Float32:** Fixed an issue with the slave TCP server in the MDI-Gateway which caused float32 registers to only return 16 bits.
- **Ethernet Hotplug:** Allowed ethernet ports to hotplug when in a bridge due to an issue where if an ethernet port disconnects and reconnects it did not rejoin the bridge.

#### New Features:
- **FUXA Integration:** Added FUXA Debian package which installs FUXA on the ACM when using an ACM with more than 8GB of storage.
- **Expanded Communications:** Added Expanded Comms Debian package which installs enhanced communication capabilities on the ACM when using an ACM with more than 8GB of storage.
- **eRCM:** Added eRCM Debian packages which installs the ACI kernel and hosts a HTTP Server at port 8088 and a TCP server at port 503.

> **📋 Note:** All new features listed above are only available on ACM-4000 devices equipped with CM4 modules that have more than 8GB of storage capacity.


## Where To Find This Release

### ACM-4000 bootloader update version mdi-acm-core-1.0.0

[mdi-acm-core-1.0.0](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/mdi-acm-core-1.0.0/mdi-acm-core-1.0.0.atf)

## Update Instructions

### For ACM-4000 with MDI Already Installed

> **⚠️ Important:** When updating a system where the Main Device is the DE-4000, Altronic recommends updating the DE-4000 prior to the ACM-4000 to ensure proper compatibility and system synchronization.

1. **Download mdi-acm-core-1.0.0**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/Final/mdi-acm-core-1.0.0/mdi-acm-core-1.0.0.atf?download=)
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


