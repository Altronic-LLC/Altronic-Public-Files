# [mdi-1.1.16](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi-1.1.16/mdi-1.1.16.atf)

> **Copyright (c) 2025. All rights reserved.**  
> HOERBIGER ENGINE DIVISION  
> Altronic, LLC  
> 712 Trumbull Avenue  
> Girard, Ohio 44420  
> United States of America

## Release Kind: Preview Release

## Intended Use and Users

early release of software intended for internal testing and evaluation. These versions are not final and may contain bugs or incomplete features. They are distributed for testing purposes and are not to be used for production environments or field deployment.


### Changelog:

#### Versioning:
- **MDI:** 1.1.16

#### Bug Fixes:
- **New ACM File Transfer:** Fixed an issue where ACM's imaged by production are are unable to recieve Viewer and License files from the DE-4000

#### Notes:
- This release does not include any changes from mdi-1.1.14 and is built on mdi-1.1.13 as a base

## Where To Find This Release

### ACM-4000 bootloader update version mdi-1.1.16

[mdi-1.1.16](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi-1.1.16/mdi-1.1.16.atf)

## Update Instructions

### For ACM-4000 with MDI Already Installed

> **⚠️ Important:** When updating a system where the Main Device is the DE-4000, Altronic recommends updating the DE-4000 prior to the ACM-4000 to ensure proper compatibility and system synchronization.

1. **Download mdi-1.1.16**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/PR/mdi-1.1.16/mdi-1.1.16.atf?download=)
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
9. **PRize**: Once update is complete, the ACM-4000 will power cycle automatically

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
