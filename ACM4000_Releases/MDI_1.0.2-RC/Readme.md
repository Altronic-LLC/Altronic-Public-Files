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
- **Chart Naming:** Added the ability to name charts directly on the trending screen.


# 1.0.2-RC1 Release Candidate #
[MDI 1.0.2-RC1 Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC1.atf)

**Note:** When installing this on the system, change the name of this file to mdi-1.0.2.atf. Otherwise, the system will not recognize the update file. This issue has been fixed in this release.

**Changelog:**
- Fixed an issue where if DE-4000 Timezone was not 0 or the default, it would cause the system storage to fill up (similar to the browser refresh issue on the DE-4000).
- Fixed an issue where the update process did not recognize an mdi-X.X.X-RCX file and would only recognize mdi-1.0.1.
