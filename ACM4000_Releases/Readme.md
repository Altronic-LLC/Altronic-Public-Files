# Overview

## Final Release Folder
  - The officially released and fully validated version. This is the recommended version for production use. Once a version is marked Final, it represents the most stable and trusted release for that product or application.
  ### When to Use:
  - Use this release to apply the latest fixes, quality of life improvements, and new features while ensuring stability. This is the new baseline version.
  ### Applicable Links:
  - [Click here to see final releases](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/1.0.2)
  - [Click here to see latest final release (MDI 1.0.2 Final)](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/1.0.2/)
  - [Click here to download latest final release (MDI 1.0.2 Final)](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/1.0.2/mdi-1.0.2.atf?download=)
  ### Change Log:
  <details>
  <summary><h3>📋 1.0.2 Changelog (Click to expand)</h3></summary>

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

  ### New Features:
  - **Screen Sleep Timer (RC5):** Added the ability to set a timer for the HMI to go to sleep in minutes. 0 will set this to never go to sleep.
  - **Chart Naming (RC2):** Added the ability to name charts directly on the trending screen.

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


