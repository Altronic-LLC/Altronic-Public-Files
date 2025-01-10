
## Latest Release Candidate: [3.0.4-RC7 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.4-RC/bootloader_3.0.4-RC7.atf)

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
