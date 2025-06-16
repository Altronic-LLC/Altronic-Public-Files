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