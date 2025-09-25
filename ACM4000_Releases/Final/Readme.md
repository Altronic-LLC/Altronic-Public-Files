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

## [MDI 1.0.2 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/1.0.2/mdi-1.0.2.atf)

  ### Fixes:
  - **TCP (RC7):** Fixed an issue where the port 502 override for TCP devices did not save properly.
  - **Trending (RC6):** Fixed an issue where if the labels are very large, the dropdown would wrap to the next line hiding certain buttons on the DE-4000.
  - **UI Layout (RC5):** Fixed an issue where the hamburger button would not scale properly with the DE-4000 on certain resolutions like the 8" TruVu.
  - **Networking (RC5):** Fixed an issue when updating the main device to wait for nginx server to restart.
  - **Datalogging (RC4):** Fixed an issue where Influx would not datalog registers with labels that contain certain characters like `, )` etc.
  - **TCP (RC4):** Fixed an issue where the PLC+ devices' TCP connection would not be closed upon IP change and importing a new config.
  - **Import Config (RC4):** Fixed an issue where the import config would sometimes cause the file containing the ethernet config to write values twice, causing that port to have no IP address.
  - **Trending Updates (RC2):** Resolved an issue where trending data would not update while connected via Ethernet unless the page was refreshed or reopened.
  - **UI Layout (RC2):** Corrected an issue where the overlay and stack buttons on the trending screen occasionally wrapped to the next line.
  - **Nginx Configuration (RC2):** Fixed an issue where the Nginx config would not update during installation but would update on first provision.
  - **Push Config (RC2):** Fixed an issue where the push config would be overridden on the HMI when first pulling data.
  - **CSV Export (RC2):** Fixed an issue where labels for the full export were not appearing at the top of the CSV file.
  - **Trending Lag (RC2):** Fixed an issue where trending seemed to lag for a second or two during batch writes to the database. Data now writes immediately.
  - **Update Process (RC1):** Fixed an issue where the update process did not recognize an `mdi-X.X.X-RCX` file and would only recognize `mdi-1.0.1`.
  - **Timezone (RC1):** Fixed an issue where if DE-4000 Timezone was not 0 or the default, it would cause the system storage to fill up (similar to the browser refresh issue on the DE-4000).

  ### Quality of Life (QOL) Improvements:
  - **Trending (RC7):** Added Chart type(Stacked or Overlay) to be stored in config. The last chart type is remembered when selecting charts.
  - **Main Device (RC6):** Added Main device refresh message if device is not connected for any reason.
  - **Networking (RC6):** Added Static IP Address to the Ethernet Settings.
  - **Main Device (RC6):** Added a Message for the device if there are no ethernet ports specified in the same subnet as the device's IP Address.
  - **Gateway Logs (RC4):** Removed some non-required logging to improve performance and storage.
  - **Operating System (RC3):** Removed Linux boot up command line text when powering the unit.
  - **SD Card Safeguards (RC2):** Added additional safeguards to protect against SD card corruption.
  - **Device Naming (RC2):** Modified the device name in InfluxDB to use unique names without relying on unique IDs. Device names will now auto-increment if needed. Note: This change will automatically update charts on the HMI, but charts stored in your browser will need manual updates.
  - **Time Synchronization:** Fixed an issue where the ACM-4000 would not update its time with the DE-4000

  ### New Features:
  - **Screen Sleep Timer (RC5):** Added the ability to set a timer for the HMI to go to sleep in minutes. 0 will set this to never go to sleep.
  - **Chart Naming (RC2):** Added the ability to name charts directly on the trending screen.

---

## [MDI 1.0.1 Final Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Archive/1.0.1/mdi-1.0.1.atf)

**Now Archived**

**1.0.1 Changelog:**
- Feature: Add key bind Alt+F4 to exit browser.
- Feature: Add key bind Ctrl+Alt+T to open Terminal.
- Fix: Fix issue where HDMI 2 did not duplicate HDMI 1
- Fix: Ensure Redis & Nginx are started before running processes.
- Fix: Fixed an issue where the Data Explorer showed Push/Pull on HMI.
- Fix: Fixed an issue where if there is no data on the Data Explorer it would show a Blank Gray screen.
- Fix: Removed Redis bind from 98.102.65.175 to just localhost (this caused an issue if there was power loss while writing eth0, if 98.102.65.175 was not defined it could not run the network config script)



