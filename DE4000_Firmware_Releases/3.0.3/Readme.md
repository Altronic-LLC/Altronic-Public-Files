## 3.0.3 Release: [3.0.3 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.3/bootloader_3.0.3.atf)
[3.0.3 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.3/3.0.3.zip)

### Changelog:

#### Bug Fixes:
- **PID Override:** Fixed an issue with the new PID override feature where if the ramp is lower than 1 and there are states being actively overridden, the PID would not ramp to the target value.
- **PID UI:** Fixed an issue in the PID UI where there was a red scrollbar at the bottom of the screen.