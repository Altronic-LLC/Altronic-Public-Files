## 3.0.4-RC8 Release Candidate: [3.0.4-RC8 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC/bootloader_3.0.4-RC8.atf)

### Changelog:

#### Bug Fixes:
- **Fixed formatting issue on setting buttons:** Fixed a formatting issue on settings buttons which caused overlap on some resolutions.
- **Importing Config with Script:** Fixed an issue where due to previous changes in this release candidate, when importing a config, imported script would not always save properly.

#### Quality of Life:
- **Control PID Ramp in Manual:** Added logic to have the Control PID ramp from idle to low rpm when in Manual instead of just in auto.
- **Lua Script:** Modification to script to allow Panel Engineers to override a function.
- **DE-4000 Update with MDI:** Addressed changes with MDI 1.1.0 which will not show the new update screen unless using this firmware or higher.
