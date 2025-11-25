# [MDI 1.1.3-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.3/mdi-1.1.3-PR.atf)

### Changelog:

#### Bug Fixes:
- **Settings Save:** Fixed an issue added in 1.1.2 where settings would be stuck on save if saving with a sleep timer active.
- **HMI Sleep:** Fixed an issue added in 1.1.2 where if using a sleep timer, when the display would go to sleep the ACM would initiate a reboot due to the watchdog in the MDI-Gateway.