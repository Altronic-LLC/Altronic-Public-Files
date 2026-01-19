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
