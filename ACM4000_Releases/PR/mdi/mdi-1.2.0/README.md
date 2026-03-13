# [MDI 1.2.0](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi/mdi-1.2.0/mdi-1.2.0.atf)

> **Copyright (c) 2026. All rights reserved.**  
> Altronic, LLC  
> 712 Trumbull Avenue  
> Girard, Ohio 44420  
> United States of America

## Release Kind: Preview Release

For demonstration and shakedown. May contain incomplete features, 
bugs of various severity.
x
## Intended Use and Users

early release of software intended for internal testing and evaluation. These versions are not final and may contain bugs or incomplete features. They are distributed for testing purposes and are not to be used for production environments or field deployment.
#### Versioning:
- **MDI:** 1.2.0

### Changelog:

#### Quality of Life(QOL):
- **Master AWI ignored when importing:** When importing a config, the Master AWI version is no longer overridden by the import.
- **Ethernet settings verified on boot:** Ethernet settings are now verified to be correct to the settings on boot. If incorrect, settings will be changed.
- **Disabled Energy Efficient Ethernet:** Disabled Energy Efficient Ethernet option for ETH Gbit, which could cause ~3 Seconds of lost communication while port is waking up.
- **Default Master AWI Version 2.0.2:** Updated default master AWI version to 2.0.2.

#### Bug Fixes:
- **Import/Export Config Over 100MB Limit:** Moved the limit for configuration exporting to 800MB from 100MB.
- **Permissions Device RS485 Port:** Fixed an issue where permissions did not apply to device RS485 port selection.
- **DE4k Datalogging 64 bit:** Fixed an issue where values such as the epoch value on the DE-4000 were parsed as 32 bit values, leaving the epoch value to only change every 128 seconds.
- **Trending Export Timezone:** Fixed an issue where downloading a csv from the trends page attempted to convert to the users timzone, this now directly uses the devices time.

#### New Items:
- **HDMI Hotplugging:** Added HDMI hotplugging functionality(ability to plug HDMI in live)
- **Set Real Time Clock:** Added the ability to set the real time clock and date when not using a DE-4000 as the main device.
- **FIFO SD Card Export:** Added the ability to use FIFO option for SD Card Export.
- **SD Card Export by Month and Device:** Added the ability to export SD Card data by month and device.
- **SD Card Export via browser:** Added the ability to export SD Card data directly downloaded to a connected PC(Must use USB when using HMI)
- **Trending Search Series:** Added the ability to search for a series on the trending page.

   

## Where To Find This Release

### ACM-4000 bootloader update version 1.2.0

[MDI 1.2.0](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi/mdi-1.2.0/mdi-1.2.0.atf)

## Update Instructions

### For ACM-4000 with MDI Already Installed

1. **Download MDI 1.2.0**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/PR/mdi/mdi-1.2.0/mdi-1.2.0.atf?download=)
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
