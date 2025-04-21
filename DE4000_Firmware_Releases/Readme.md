## Latest Release : [3.0.3 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.3/bootloader_3.0.3.atf)
[3.0.3 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.3/3.0.3.zip)

> **Note:** Bootloader updates should complete within 10 minutes, whether using the Terminal Controller or WebApp. If the update appears stuck at 99% for longer than 10 minutes, power cycle the system and attempt the update again.

### Changelog:

#### Bug Fixes:
- **PID Override:** Fixed an issue with the new PID override feature where if the ramp is lower than 1 and there are states being actively overridden, the PID would not ramp to the target value.
- **PID UI:** Fixed an issue in the PID UI where there was a red scrollbar at the bottom of the screen.

## Latest Release Candidate: [3.0.4-RC12 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.4-RC/bootloader_3.0.4-RC12.atf)

> **Note:** Bootloader updates should complete within 10 minutes, whether using the Terminal Controller or WebApp. If the update appears stuck at 99% for longer than 10 minutes, power cycle the system and attempt the update again.

### Changelog:

#### Bug Fixes:
- **Adding to Dashboard:** Fixed an issue where dashboard items would not be added in the correct position & adding new rows to the dashboard would cause a black screen on any page other than 1(Issue arrived in 3.0.4-RC11)

#### New Features:
- **Pop-up Version:** Added Pop-up informing the User of mismatched firmware when first loading the DE-4000.
- **Status LCD Color:** Added the ability to set the color of the Status LCD in script.