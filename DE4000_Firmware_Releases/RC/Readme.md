# [DE-4000 Bootloader 3.0.4-RC13](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC13/bootloader_3.0.4-RC13.atf)

> **Copyright (c) 2025. All rights reserved.**  
> HOERBIGER ENGINE DIVISION  
> Altronic, LLC  
> 712 Trumbull Avenue  
> Girard, Ohio 44420  
> United States of America

## Release Kind: Release Candidate

Inteded for Application Testing prior to Final Release.

## Intended Use and Users

A staging Software/Firmware version intended for Application Testing.

This software is not for sale or general distribution.

### Changelog:

#### Bug Fixes:
- **Performance:** Fixed an issue regarding slow performance when switching between screens.
- **RPM Live Update:** Fixed an issue where updating an rpm channel live would cause a ppr that would be offset by 1.
- **Lua Scripting:** Added 4 new Lua Functions, get_channel_high_alarm_sp, get_channel_low_alarm_sp, get_channel_high_safety_sp, get_channel_low_safety_sp
- **Lube No Flow Test Fault** Fixed an issue where if using test mode, if a lube no flow faulted the fault would not be clearable until a new fault occured.
- **False Pressure Shutdown** Added additional checks to ensure there are no false shutdowns on analog input channels.
- **Bootloader Update** Fixed an issue that caused intermittant failure of bootloader process when updating Controller or Terminal Boards
- **Bootloader Update** Added Bootloader Update instructions
- **Bootloader Update** Added a pop up under any condition the bootloader process were to fail, to show the failure error to the user and exit the loading screen.
- **Version Registers** Added registers 705-760 to the node 200 32-bit modbus registers containing the version information for the boards.
- **Version Pop-Up** Fixed an issue with the version popup if firmware is mismatched that the OK button was black on a black background, this is now white.


## Where To Find This Release

### DE-4000 bootloader update version 3.0.4-RC13

# [DE-4000 Bootloader 3.0.4-RC13](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC13/bootloader_3.0.4-RC13.atf)


## Update Instructions

### For DE-4000 with Version >= 3.0.0
1. **Download DE-4000 Bootloader Version 3.0.4-RC13**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC13/bootloader_3.0.4-RC13.atf?download=)
2. **Prepare USB**: Copy downloaded file onto USB Flash Drive
3. **Prepare Device**: Power on DE-4000 which you would like to update
4. **Connect USB**: Insert USB Flash Drive into DE-4000
5. **Access Menu**: Click Settings
6. **Navigate to System**: Click System Info
7. **Locate Update File**:
   - Click Refresh 
   - You will see the file you added to the USB
8. **Select Update**:
   - Click the checkbox for this file
   - Click update
9. **Finalize**: Once update is complete, the ACM-4000 will power cycle automatically

### For DE-4000 With Version < 3.0.0
https://www.altronic-llc.com/wp-content/uploads/DE-4000-Firmware-Download-Quick-Start-Guide.pdf

### Required Hardware
- DE-4000 Controller Board
- DE-4000 Terminal Board
- USB Flash Drive (≥ 2GB)
- HMI or PC

---

## Latest Release Candidate: [3.0.4-RC12 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC/bootloader_3.0.4-RC12.atf)

### Changelog:

#### Bug Fixes:
- **Adding to Dashboard:** Fixed an issue where dashboard items would not be added in the correct position & adding new rows to the dashboard would cause a black screen on any page other than 1(Issue arrived in 3.0.4-RC11)

#### New Features:
- **Pop-up Version:** Added Pop-up informing the User of mismatched firmware when first loading the DE-4000.
- **Status LCD Color:** Added the ability to set the color of the Status LCD in script.

---


## 3.0.4-RC11 Release Candidate: [3.0.4-RC11 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC/bootloader_3.0.4-RC11.atf)

### Changelog:

#### Bug Fixes:
- **Memory Issue:** Fixed an issue causing increase in memory usage when navigating between pages in the User Interface.

---

## 3.0.4-RC10 Release Candidate: [3.0.4-RC10 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC/bootloader_3.0.4-RC10.atf)

### Changelog:

#### Bug Fixes:
- **Performance Issue:** Fixed an issue causing slow performance when logged in while a timer is ticking down after several inputs.

---

## 3.0.4-RC9 Release Candidate:[3.0.4-RC9 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC/bootloader_3.0.4-RC9.atf)

### Changelog:

#### Bug Fixes:
- **Modify Trending to use Dyanamic IP address:** Modified the trending so that IP address can be used dyanamically.

#### Quality of Life:
- **Pop-up Modal UI:** Added Pop-up window when you change Type and Changed the color of the text of Pop-up window when you change the timer of Input Class C to 0 in Safety Shutdown Settings.
- **Pop-up Modal changing Types:** Implemented the functionality when changing the type of the sensor shows pop-up modal with toggle switch between Previous-default values for Safety, Control and Alarm (High and Low Setpoints).

---

## 3.0.4-RC8 Release Candidate: [3.0.4-RC8 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC/bootloader_3.0.4-RC8.atf)

### Changelog:

#### Bug Fixes:
- **Fixed formatting issue on setting buttons:** Fixed a formatting issue on settings buttons which caused overlap on some resolutions.
- **Importing Config with Script:** Fixed an issue where due to previous changes in this release candidate, when importing a config, imported script would not always save properly.

#### Quality of Life:
- **Control PID Ramp in Manual:** Added logic to have the Control PID ramp from idle to low rpm when in Manual instead of just in auto.
- **Lua Script:** Modification to script to allow Panel Engineers to override a function.
- **DE-4000 Update with MDI:** Addressed changes with MDI 1.1.0 which will not show the new update screen unless using this firmware or higher.

---

## 3.0.4-RC7 Release Candidate: [3.0.4-RC7 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC/bootloader_3.0.4-RC7.atf)

### Changelog:

#### Bug Fixes:
- **Reset Button:** Fixed an issue where the physical hardware reset button no longer reset timers.
- **Memory Issue:** Fixed an issue in memory which would cause intermittant freezing when paired with the MDI.

#### Quality of Life:
- **Communication Loss Timer:** Changed the communication loss timeout to 6s from 30s on the controller board.
- **Optimized Saving:** Optimized saving process on controller board which reduced time to save by half.
- **HSC:** Modified Terminal board to send HSC status over ethernet as an extra safeguard if no HSC wire is present.
- **Optimized Guage Rendering:** Fixed an issue where the Linear and Radial Gauges would rerender when a new value the same as the previous.

---

## 3.0.4-RC2 Release Candidate: [3.0.4-RC2 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC/bootloader_3.0.4-RC2.atf)

### Changelog:

#### Bug Fixes:
- **Dashboard Radial Gauge:** Fixed an issue where the ticks in a Radial Gauge would not show if the value was below 5

---

## 3.0.4-RC1 Release Candidate: [3.0.4-RC1 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.4-RC1/bootloader_3.0.4-RC1.atf)

### Changelog:

#### Bug Fixes:
- **Startup State Timers:** Fixed an issue where the user could enter a blank value for startup timer and timeout minutes and seconds.
