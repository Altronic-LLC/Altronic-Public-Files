
## Latest Release Candidate: [3.0.4-RC8 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.4-RC/bootloader_3.0.4-RC8.atf)

### Changelog:

#### Bug Fixes:
- **Fixed formatting issue on setting buttons:** Fixed a formatting issue on settings buttons which caused overlap on some resolutions.
- **Importing Config with Script:** Fixed an issue where due to previous changes in this release candidate, when importing a config, imported script would not always save properly.

#### Quality of Life:
- **Control PID Ramp in Manual:** Added logic to have the Control PID ramp from idle to low rpm when in Manual instead of just in auto.
- **Lua Script:** Modification to script to allow Panel Engineers to override a function.
- **DE-4000 Update with MDI:** Addressed changes with MDI 1.1.0 which will not show the new update screen unless using this firmware or higher.

## 3.0.4-RC7 Release Candidate: [3.0.4-RC7 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.4-RC/bootloader_3.0.4-RC7.atf)

### Changelog:

#### Bug Fixes:
- **Reset Button:** Fixed an issue where the physical hardware reset button no longer reset timers.
- **Memory Issue:** Fixed an issue in memory which would cause intermittant freezing when paired with the MDI.

#### Quality of Life:
- **Communication Loss Timer:** Changed the communication loss timeout to 6s from 30s on the controller board.
- **Optimized Saving:** Optimized saving process on controller board which reduced time to save by half.
- **HSC:** Modified Terminal board to send HSC status over ethernet as an extra safeguard if no HSC wire is present.
- **Optimized Guage Rendering:** Fixed an issue where the Linear and Radial Gauges would rerender when a new value the same as the previous.


## 3.0.4-RC2 Release Candidate: [3.0.4-RC2 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.4-RC/bootloader_3.0.4-RC2.atf)

### Changelog:

#### Bug Fixes:
- **Dashboard Radial Gauge:** Fixed an issue where the ticks in a Radial Gauge would not show if the value was below 5

## 3.0.4-RC1 Release Candidate: [3.0.4-RC1 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.4-RC/bootloader_3.0.4-RC1.atf)

### Changelog:

#### Bug Fixes:
- **Startup State Timers:** Fixed an issue where the user could enter a blank value for startup timer and timeout minutes and seconds.
