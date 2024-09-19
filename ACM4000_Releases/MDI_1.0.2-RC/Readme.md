# Latest Release Candidate: [MDI 1.0.2-RC6](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC6.atf)
**Important:**  
**If you're installing this on a system running a version earlier than 1.0.2-RC1, please rename the file to `mdi-1.0.2.atf`. This ensures the system will recognize the update file. This naming issue has been resolved in this release.**

### Changelog:

#### Fixes:
- **Trending:** Fixed an issue where if the labels are very large, the dropdown would wrap to the next line hiding certain buttons on the DE-4000.

#### Quality of Life (QOL) Improvements:
- **Main Device:** Added Main device refresh message if device is not connected for any reason. 
- **Networking:** Added Static IP Address to the Ethernet Settings.
- **Main Device:** Added a Message for the device if there are no ethernet ports specified in the same subnet as the device's IP Address.

This release includes all the changes from the previous release candidates.
# Latest Release Candidate: [MDI 1.0.2-RC5](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC5.atf)
**Important:**  
**If you're installing this on a system running a version earlier than 1.0.2-RC1, please rename the file to `mdi-1.0.2.atf`. This ensures the system will recognize the update file. This naming issue has been resolved in this release.**

### Changelog:

#### Fixes:
- **UI Layout:** Fixed an issue where the hamburger button would not scale properly with the DE-4000 on certain resolutions like the 8" TruVu.
- **Networking:** Fixed and issue when updating the main device to wait for nginx server to restart.

#### New Features:
- **Screen Sleep Timer:** Added the ability to set a timer for the HMI to go to sleep in minutes. 0 will set this to never go to sleep.

# 1.0.2-RC3: [MDI 1.0.2-RC4](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC4.atf)

### Changelog:

#### Fixes:
- **Datalogging:** Fixed an issue where Influx would not datalog registers with labels that contain certain characters like `, )` etc.
- **TCP:** Fixed an issue where the PLC+ devices TCP connection would not be closed upon IP change and importing a new config.
- **Import Config:** Fixed an issue where the import config would sometimes cause the file containing the ethernet config to write values twice, causing that port to have no IP address.

#### Quality of Life (QOL) Improvements:
- **Gateway Logs:** Removed some non-required logging to improve performance and storage.


# 1.0.2-RC3: [MDI 1.0.2-RC3](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC3.atf)

### Changelog:

#### Quality of Life (QOL) Improvements:
- **Operating System:** Removed Linux boot up command line text when powering the unit.

# 1.0.2-RC2: [MDI 1.0.2-RC2](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC2.atf)

### Changelog:

#### Fixes:
- **Trending Updates:** Resolved an issue where trending data would not update while connected via Ethernet unless the page was refreshed or reopened.
- **UI Layout:** Corrected an issue where the overlay and stack buttons on the trending screen occasionally wrapped to the next line.
- **Nginx Configuration:** Fixed an issue where the Nginx config would not update during installation but would update on first provision.
- **Push Config:** Fixed an issue where the push config would be overridden on the HMI when first pulling data.
- **CSV Export:** Fixed an issue where labels for the full export were not appearing at the top of the CSV file.
- **Trending Lag:** Fixed an issue where trending seemed to lag for a second or two during batch writes to the database. Data now writes immediately.

#### Quality of Life (QOL) Improvements:
- **SD Card Safeguards:** Added additional safeguards to protect against SD card corruption.
- **Device Naming:** Modified the device name in InfluxDB to use unique names without relying on unique IDs. Device names will now auto-increment if needed. Note: This change will automatically update charts on the HMI, but charts stored in your browser will need manual updates.

#### New Features:
- **Chart Naming:** Added the ability to name charts directly on the trending screen.


# 1.0.2-RC1: [MDI 1.0.2-RC1](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC1.atf)

**Note:** When installing this on the system, change the name of this file to `mdi-1.0.2.atf`. Otherwise, the system will not recognize the update file. This issue has been fixed in this release.

**Changelog:**
- Fixed an issue where if DE-4000 Timezone was not 0 or the default, it would cause the system storage to fill up (similar to the browser refresh issue on the DE-4000).
- Fixed an issue where the update process did not recognize an `mdi-X.X.X-RCX` file and would only recognize `mdi-1.0.1`.
