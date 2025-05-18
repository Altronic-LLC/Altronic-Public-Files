## Latest Release Candidate: [3.0.3-RC1 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.3-RC/bootloader_3.0.3-RC1.atf)

### Changelog:

#### Bug Fixes:
- **PID Override:** Fixed an issue with the new PID override feature where if the ramp is lower than 1 and there are states being actively overridden, the PID would not ramp to the target value.
- **PID UI:** Fixed an issue in the PID UI where there was a red scrollbar at the bottom of the screen.