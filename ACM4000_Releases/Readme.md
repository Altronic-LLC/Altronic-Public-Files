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

# Latestest Release Candidate #
[MDI 1.0.2-RC1 Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.2-RC/mdi-1.0.2-RC1.atf)

**Note:** When installing this on the system, change the name of this file to mdi-1.0.2.atf. Otherwise, the system will not recognize the update file. This issue has been fixed in this release.

**Changelog:**
- Fixed an issue where if DE-4000 Timezone was not 0 or the default, it would cause the system storage to fill up (similar to the browser refresh issue on the DE-4000).
- Fixed an issue where the update process did not recognize an mdi-X.X.X-RCX file and would only recognize mdi-1.0.1.

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


