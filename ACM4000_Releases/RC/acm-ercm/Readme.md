## **What is a Pre-Release Candidate (PR)?**
A **Pre-Release Candidate (PR)** version is an early release of software intended for internal testing and evaluation. These versions are not final and may contain bugs or incomplete features. They are distributed for testing purposes and are not to be used for production environments or field deployment.

### Key Characteristics of PR Versions:
- Tagged with `-PR` in the version number (e.g., `1.0.0-PR`).
- Used for internal evaluation, testing, and feedback.
- Not validated for deployment on production systems.
- Publicly available in the **PR folder** of the repository for transparency and testing.

---

## **Instructions for PR Usage**
- **Testing Focus:** PR versions should be thoroughly tested in controlled environments before proceeding to the **Release Candidate (RC)** stage.
- **Feedback Loop:** Any issues found during testing should be logged and addressed before moving forward.

---
# [mdi-1.1.14](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi-1.1.14/mdi-1.1.14.atf)

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

> **⚠️ Important:** This version is incompatible with use of the DE-4000 version < 3.0.5. When updating, please update the DE-4000 Prior to the ACM-4000, or the ACM-4000 will not be able to recieve the permission level which you are logged into the DE-4000.


#### Versioning:
- **MDI:** 1.1.14

#### Quality of Life Changes:
- **UI Scaling** - Several changes to the User Interface which fixes certain scaling issues when using a display that is not 1080p
- **Deleting Additional HTML Files** - Added the ability to delete additional html files that are uploaded.
- **RS485** - Fixed an intermittant issue with RS485 ports where ports disconnect and reconnect at a different mounting location causing RS485 communication to be lost until a power cycle.
- **Bridge Ports** - Fixed an intermittant issue where Ethernet ports where ports disconnect and reconnect where the ethernet ports will not rejoin the bridge once reconnected.

#### Bug Fixes:
- **Time Synronization** - Fixed an issue when using client wifi mode where the ACM-4000 will update it's time from the internet, while at the same time if using a DE-4000 and connected to the internet there will be differing times being set at the same time causing intermittant issues in the AWI.

#### New Features:
- **Permissions** - Added the ability to use Permissions on the ACM-4000 which gives the ability to set up a login on a standalone ACM-4000, or use the Permissions set on an existing DE-4000.
- **Screen Zoom** - Added the ability to set a "Screen Zoom" to allow smaller HMI the ability to zoom in while keeping the same resolution.
- **RS485 Slave** - Added the ability to set an RS485 port to a slave. This will allow external polling of any device on the MDI with Modbus RTU using the proxy node id of the device.




## Where To Find This Release

### ACM-4000 bootloader update version mdi-1.1.14

[mdi-1.1.14](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi-1.1.14/mdi-1.1.14.atf)

## Update Instructions

### For ACM-4000 with MDI Already Installed

> **⚠️ Important:** When updating a system where the Main Device is the DE-4000, Altronic recommends updating the DE-4000 prior to the ACM-4000 to ensure proper compatibility and system synchronization.

1. **Download mdi-1.1.14**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/PR/mdi-1.1.14/mdi-1.1.14.atf?download=)
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

## Preview Release Change Log

## [MDI 1.1.11-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/1.1.11/mdi-1.1.11.atf)

**Upgraded to Release Candidate**

### Changelog:

#### Bug Fixes:
- **Time Synchronization:** Fixed an issue where the ACM-4000 would not update its time with the DE-4000

## Where To Find This Release

### ACM-4000 bootloader update version 1.1.10

[MDI 1.1.10](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.10/mdi-1.1.10.atf)

## [MDI 1.1.10-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.10/mdi-1.1.10.atf)

### Changelog:

#### Bug Fixes:
- **Time Synchronization:** Fixed an issue where the ACM-4000 would not update its time if the DE-4000 time was changed to a time before the previous.
- **Time Zone Settings:** Fixed an issue where the ACM-4000 required a time zone offset settings for the Trending to be correct on an external PC. The time zone offset setting has been removed and the time will always be the same.
- **Trending Display:** Fixed an issue where the Trending x-axis time's were not always in the same format HH:MM:SS.

## Where To Find This Release

### ACM-4000 bootloader update version 1.1.10

[MDI 1.1.10](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.10/mdi-1.1.10.atf)

---

## [MDI 1.1.9-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.9/mdi-1.1.9.atf)

### Changelog:

#### New Features:
- **TCP Modbus Slave Server:** Implemented a Modbus TCP Slave server accessible on port 502 from any configured IP address on the ACM-4000. Connected devices can be polled using their proxy node IDs, with the same register map as the device.

## Where To Find This Release

### ACM-4000 bootloader update version 1.1.9

[MDI 1.1.9](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.9/mdi-1.1.9.atf)

---

## [MDI 1.1.8-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/1.1.8/mdi-1.1.8-RC.atf)

**Upgraded to Release Candidate**

### Changelog:

#### Quality of Life Changes:

#### Bug Fixes:
- **Data Explorer/Trending:** Fixed an issue where the Trending backend would still reference the 98.102.65.174 IP address when using a seperate IP address for the DE-4000

---

## [MDI 1.1.7-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/1.1.7/mdi-1.1.7-RC.atf)

**Upgraded to Release Candidate**

### Changelog:

#### Bug Fixes:
- **Data Explorer/Trending:** Fixed an issue importing a config where the new EthGbit2 IP address would not update properly. Also Fixed an issue where the EthGbit2 IP address would not update if it was the only Ip Address Changed.

---

## [MDI 1.1.5-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.5/mdi-1.1.5-PR.atf)

### Changelog:

#### Quality of Life Changes:
- **Ethernet Gbit:** Added the ability to set 2 IP Adresses on Ethernet Gbit
- **Ethernet Gbit:** Added a default ip address to the 2nd ip address off 192.168.1.175 when first provisioning.
- **Master AWI:** Added the master awi when it does not exist. version 2.0.1.
- **Keyboard:** Modified keyboard background opacity so in situations like the HMI sleep in settings, the number behind the keyboard is visible.
- **Keyboard:** Changed functionality of the backspace button on the keyboard to allow holding down of the button to delete multiple characters.

#### Bug Fixes:
- **Data Explorer/Trending:** Fixed an issue where Trending UI would not update when accessing the MDI via. the former static ip address of 98.102.65.175

---

## [MDI 1.1.4-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.4/mdi-1.1.4-PR.atf)

### Changelog:

#### Quality of Life Changes:
- **Import Config:** Added a loading spinner while importing a config.

#### Bug Fixes:
- **Screen Sleep Timer/Import Config:** Fixed an issue with importing a config where the saving process would not go through due to the addition of the Screen Sleep Timer.

---

## [MDI 1.1.3-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.3/mdi-1.1.3-PR.atf)

### Changelog:

#### Bug Fixes:
- **Settings Save:** Fixed an issue added in 1.1.2 where settings would be stuck on save if saving with a sleep timer active.
- **HMI Sleep:** Fixed an issue added in 1.1.2 where if using a sleep timer, when the display would go to sleep the ACM would initiate a reboot due to the watchdog in the MDI-Gateway.

---
## [MDI 1.1.2-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.2/mdi-1.1.2-PR.atf)

### Changelog:

#### Quality of Life Changes:
- **Screen Sleep Timer:** Added the ability to ignore the first input when pressing the screen, for this to take effect re-save the screen sleep timer.

#### Bug Fixes:
- **Main Device:** Fixed an issue in 1.1.1 where when selecting an AWI as the main device, this did not show properly.

#### New Feature:
- **Device Poll Errors:** Added an option to view communication errors for each device up to the last 50 available.
- **Device Poll Errors Location:** 
![Error Locations](./ErrorsLocation.png)
- **Device Poll Errors Example:** 
![Error Screenshot 1](./ErrorsSS.png)

---

## [MDI 1.1.0-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.0/mdi-1.1.0-PR.atf)

### Changelog:

#### System Changes:
- **Static IP:** Removed Static IP address of **98.102.65.175** due to issues when 2 ACM's are connected on the same network.

> **Note:** After this update, your secondary IP address for Eth Gbit will be removed, and the old static IP address of **98.102.65.175** will become the IP address of the Eth Gbit port.


#### QOL Changes:
- **DE-4000 IP:** Added the ability to change the DE-4000 Ip address due to issues when 2 DE-4000's are connected on the same network.
- **RS-485 Timout:** Lowered Timeout for RS-485 failed request from 2 seconds to 1 second due to impact on polling other devices on the bus.

#### Bug Fixes:
- **First Run Modal:** Fixed an issue when importing a config under certain circumstances you would keep recieving Are you using the DE-4000 pop up after pressing yes.

---

## [MDI 1.0.4-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.0.4/mdi-1.0.4-PR.atf)

### Changelog:

#### Fixes:
- **Memory Issue:** Fixed an issue where memory usage increased over time until the browser refreshed.

---

## [MDI 1.0.3-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.0.3/mdi-1.0.3-PR1.atf)
**Important:**  
**If you're installing this on a system running a version earlier than 1.0.2-RC1, please rename the file to `mdi-1.0.2.atf`. This ensures the system will recognize the update file. This naming issue has been resolved in this release.**

### Changelog:

#### Fixes:
- **AWI Reupload:** Fixed an issue when reuploading an AWI device registers would not update if the registers changed until a reboot.

#### Quality of Life (QOL) Improvements:
- **CM4:** Added Datalogging for CM4 Temperature, CPU Usage, CPU Clock, and System Ram.
- **Temperature:** Added Graphic for CM4 Temperature this will show you the current temperature in C or F.  
    ![Temperature](TemperatureImage.png)
- **RTU:** Added the ability to set Parity, Data Bits, and Stop Bits for RS-485 Ports.  
    ![alt text](RS-485.png)
- **RTU:** Set Defaults to baud rates for RS-485 1 at 9600 baud and RS-485 2 at 38400 baud instead of empty selections.
- **QOL-GENERAL:** Removed non-required browser console logging.
- **Gateway Caching:** Changed Cache time from 500ms to 1s to speed up networking when using multiple browsers. 
- **Main Device:** Added none option for Main Device.