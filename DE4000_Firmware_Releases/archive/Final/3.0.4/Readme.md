# [DE-4000 Bootloader 3.0.4](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.4/bootloader_3.0.4.atf)

> **Copyright (c) 2025. All rights reserved.**  
> HOERBIGER ENGINE DIVISION  
> Altronic, LLC  
> 712 Trumbull Avenue  
> Girard, Ohio 44420  
> United States of America

## Release Kind: Final Release

## Intended Use and Users
The officially released and fully validated version. This is the recommended version for production use. Once a version is marked Final, it represents the most stable and trusted release for that product or application.

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
- **Adding to Dashboard:** Fixed an issue where dashboard items would not be added in the correct position & adding new rows to the dashboard would cause a black screen on any page other than 1 (Fixed in RC12)
- **Memory Issue:** Fixed an issue causing increase in memory usage when navigating between pages in the User Interface (Fixed in RC11)
- **Performance Issue:** Fixed an issue causing slow performance when logged in while a timer is ticking down after several inputs (Fixed in RC10)
- **Trending Dynamic IP:** Modified the trending so that IP address can be used dynamically (Fixed in RC9)
- **Setting Buttons Formatting:** Fixed a formatting issue on settings buttons which caused overlap on some resolutions (Fixed in RC8)
- **Importing Config with Script:** Fixed an issue where due to previous changes in this release candidate, when importing a config, imported script would not always save properly (Fixed in RC8)
- **Reset Button:** Fixed an issue where the physical hardware reset button no longer reset timers (Fixed in RC7)
- **Memory Issue:** Fixed an issue in memory which would cause intermittent freezing when paired with the MDI (Fixed in RC7)
- **Dashboard Radial Gauge:** Fixed an issue where the ticks in a Radial Gauge would not show if the value was below 5 (Fixed in RC2)
- **Startup State Timers:** Fixed an issue where the user could enter a blank value for startup timer and timeout minutes and seconds (Fixed in RC1)

#### New Features:
- **Pop-up Version:** Added Pop-up informing the User of mismatched firmware when first loading the DE-4000 (Added in RC12)
- **Status LCD Color:** Added the ability to set the color of the Status LCD in script (Added in RC12)

#### Quality of Life Improvements:
- **Pop-up Modal UI:** Added Pop-up window when you change Type and Changed the color of the text of Pop-up window when you change the timer of Input Class C to 0 in Safety Shutdown Settings (Added in RC9)
- **Pop-up Modal changing Types:** Implemented the functionality when changing the type of the sensor shows pop-up modal with toggle switch between Previous-default values for Safety, Control and Alarm (High and Low Setpoints) (Added in RC9)
- **Control PID Ramp in Manual:** Added logic to have the Control PID ramp from idle to low rpm when in Manual instead of just in auto (Added in RC8)
- **Lua Script:** Modification to script to allow Panel Engineers to override a function (Added in RC8)
- **DE-4000 Update with MDI:** Addressed changes with MDI 1.1.0 which will not show the new update screen unless using this firmware or higher (Added in RC8)
- **Communication Loss Timer:** Changed the communication loss timeout to 6s from 30s on the controller board (Added in RC7)
- **Optimized Saving:** Optimized saving process on controller board which reduced time to save by half (Added in RC7)
- **HSC:** Modified Terminal board to send HSC status over ethernet as an extra safeguard if no HSC wire is present (Added in RC7)
- **Optimized Gauge Rendering:** Fixed an issue where the Linear and Radial Gauges would rerender when a new value the same as the previous (Added in RC7)


## Where To Find This Release

### DE-4000 bootloader update version 3.0.4

# [DE-4000 Bootloader 3.0.4](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.4/bootloader_3.0.4.atf)


## Update Instructions

### For DE-4000 with Version >= 3.0.0
1. **Download DE-4000 Bootloader Version 3.0.4**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.4/bootloader_3.0.4.atf?download=)
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


