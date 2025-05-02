## Latest Release : [MDI 1.0.1 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/Final/1.0.1/mdi-1.0.1.atf)


**1.0.1 Changelog:**
- Feature: Add key bind Alt+F4 to exit browser.
- Feature: Add key bind Ctrl+Alt+T to open Terminal.
- Fix: Fix issue where HDMI 2 did not duplicate HDMI 1
- Fix: Ensure Redis & Nginx are started before running processes.
- Fix: Fixed an issue where the Data Explorer showed Push/Pull on HMI.
- Fix: Fixed an issue where if there is no data on the Data Explorer it would show a Blank Gray screen.
- Fix: Removed Redis bind from 98.102.65.175 to just localhost (this caused an issue if there was power loss while writing eth0, if 98.102.65.175 was not defined it could not run the network config script)

