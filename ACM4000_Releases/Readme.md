# Latestest Release #

[MDI 1.0.1 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/mdi-1.0.1.atf)

**1.0.1 Changelog:**
- Feature: Add key bind Alt+F4 to exit browser.
- Feature: Add key bind Ctrl+Alt+T to open Terminal.
- Fix: Fix issue where HDMI 2 did not duplicate HDMI 1
- Fix: Ensure Redis & Nginx are started before running processes.
- Fix: Fixed an issue where the Data Explorer showed Push/Pull on HMI.
- Fix: Fixed an issue where if there is no data on the Data Explorer it would show a Blank Gray screen.
- Fix: Removed Redis bind from 98.102.65.175 to just localhost (this caused an issue if there was power loss while writing eth0, if 98.102.65.175 was not defined it could not run the network config script)

## Latest Release Candidate: [MDI 1.0.2-RC2](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC2.atf)

**Important:**  
If you're installing this on a system running a version earlier than 1.0.2-RC1, please rename the file to `mdi-1.0.2.atf`. This ensures the system will recognize the update file. This naming issue has been resolved in this release.

### Changelog:

#### Fixes:
- **Trending Updates:** Resolved an issue where trending data would not update while connected via Ethernet unless the page was refreshed or reopened.
- **UI Layout:** Corrected an issue where the overlay and stack buttons on the trending screen occasionally wrapped to the next line.
- **Nginx Configuration:** Fixed an issue where the Nginx config would not update during installation, but would update on first provision.
- **Push Config:** Fixed an issue where the push config would be overridden on the HMI when first pulling data.
- **CSV Export:** Fixed an issue where labels for the full export were not appearing at the top of the CSV file.
- **Trending Lag:** Fixed an issue where trending seemed to lag for a second or two during batch writes to the database. Data now writes immediately.

#### Quality of Life (QOL) Improvements:
- **SD Card Safeguards:** Added additional safeguards to protect against SD card corruption.
- **Device Naming:** Modified the device name in InfluxDB to use unique names without relying on unique IDs. Device names will now auto-increment if needed. Note: This change will automatically update charts on the HMI, but charts stored in your browser will need manual updates.

#### New Features:
- **Chart Naming:** Added the ability to name charts directly on the trending screen

# Initial 1.0.0 Field Image #
[MDI 1.0.0 Image Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.0.zip)

**1.0.0 Changelog:**
- Added selectable datalogging interval.
- Added selectable DE4000 Time Zone.
- Added Push & Pull config to the Altronic Data Explorer.
- Fixed an issue where when changing the layout the DE-4000 would not load and would have to reboot.
- Added network initialization on startup (in case of power loss during configuration).

# Documentation #
[ACM Imaging Instructions](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/ACM%20imaging_R2.docx)

[MDI Documentation](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Altronic%20MDI%20Documentation7-23-2024.docx)


