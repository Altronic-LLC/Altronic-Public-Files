# [MDI 1.1.11](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/1.1.11/mdi-1.1.11.atf)

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

#### Quality of Life Changes:
- **Ethernet Gbit:** Added the ability to set 2 IP Adresses on Ethernet Gbit
- **Ethernet Gbit:** Added a default ip address to the 2nd ip address off 192.168.1.175 when first provisioning.
- **Master AWI:** Added the master awi when it does not exist. version 2.0.1.
- **Keyboard:** Modified keyboard background opacity so in situations like the HMI sleep in settings, the number behind the keyboard is visible.
- **Keyboard:** Changed functionality of the backspace button on the keyboard to allow holding down of the button to delete multiple characters.
- **Import Config:** Added a loading spinner while importing a config.
- **Screen Sleep Timer:** Added the ability to ignore the first input when pressing the screen, for this to take effect re-save the screen sleep timer.
- **DE-4000 IP:** Added the ability to change the DE-4000 Ip address due to issues when 2 DE-4000's are connected on the same network.
- **RS-485 Timout:** Lowered Timeout for RS-485 failed request from 2 seconds to 1 second due to impact on polling other devices on the bus.
- **CM4:** Added Datalogging for CM4 Temperature, CPU Usage, CPU Clock, and System Ram.
- **Temperature:** Added Graphic for CM4 Temperature this will show you the current temperature in C or F.  
- **RTU:** Added the ability to set Parity, Data Bits, and Stop Bits for RS-485 Ports.  
- **RTU:** Set Defaults to baud rates for RS-485 1 at 9600 baud and RS-485 2 at 38400 baud instead of empty selections.
- **QOL-GENERAL:** Removed non-required browser console logging.
- **Gateway Caching:** Changed Cache time from 500ms to 1s to speed up networking when using multiple browsers. 
- **Main Device:** Added none option for Main Device.

#### Bug Fixes:
- **Data Explorer/Trending:** Fixed an issue importing a config where the new EthGbit2 IP address would not update properly. Also Fixed an issue where the EthGbit2 IP address would not update if it was the only Ip Address Changed.
- **Data Explorer/Trending:** Fixed an issue where Trending UI would not update when accessing the MDI via. the former static ip address of 98.102.65.175
- **Screen Sleep Timer/Import Config:** Fixed an issue with importing a config where the saving process would not go through due to the addition of the Screen Sleep Timer.
- **Settings Save:** Fixed an issue added in 1.1.2 where settings would be stuck on save if saving with a sleep timer active.
- **HMI Sleep:** Fixed an issue added in 1.1.2 where if using a sleep timer, when the display would go to sleep the ACM would initiate a reboot due to the watchdog in the MDI-Gateway.
- **Screen Sleep Timer:** Fixed an issue where the screen sleep timer would not save properly, causing no sleep to occur.
- **First Run Modal:** Fixed an issue when importing a config under certain circumstances you would keep recieving Are you using the DE-4000 pop up after pressing yes.
- **AWI Reupload:** Fixed an issue when reuploading an AWI device registers would not update if the registers changed until a reboot.
- **Data Explorer/Trending:** Fixed an issue where the Trending backend would still reference the 98.102.65.174 IP address when using a seperate IP address for the DE-4000
  - **Time Synchronization:** Fixed an issue where the ACM-4000 would not update its time with the DE-4000

#### New Features:
- **Main Device:** Fixed an issue in 1.1.1 where when selecting an AWI as the main device, this did not show properly.
- **Device Poll Errors:** Added an option to view communication errors for each device up to the last 50 available.
- **Static IP:** Removed Static IP address of **98.102.65.175** due to issues when 2 ACM's are connected on the same network.
- **TCP Server:** Added a TCP server on the MDI to poll device values.

## Where To Find This Release

### ACM-4000 bootloader update version 1.1.11

[MDI 1.1.11](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/1.1.11/mdi-1.1.11.atf)

## Update Instructions

### For ACM-4000 with MDI Already Installed

1. **Download MDI 1.1.11**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/Final/1.1.11/mdi-1.1.11.atf?download=)
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
