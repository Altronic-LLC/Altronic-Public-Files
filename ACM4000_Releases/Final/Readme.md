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



