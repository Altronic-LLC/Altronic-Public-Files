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



## [3.0.3 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.3/bootloader_3.0.3.atf)
[3.0.3 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.3/3.0.3.zip)

> **Note:** Bootloader updates should complete within 10 minutes, whether using the Terminal Controller or WebApp. If the update appears stuck at 99% for longer than 10 minutes, power cycle the system and attempt the update again.

### Changelog:

#### Bug Fixes:
- **PID Override:** Fixed an issue with the new PID override feature where if the ramp is lower than 1 and there are states being actively overridden, the PID would not ramp to the target value.
- **PID UI:** Fixed an issue in the PID UI where there was a red scrollbar at the bottom of the screen.

---

[3.0.2 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/archive/3.0.2.zip)

**Now Archived**

- SOM: Fixed an issue where the Timers would not arm when using a 4-20mA channel as RPM.

- SOM: Fixed an issue where the timer settings on Global->System would cause hard limits to go off the page when Exceed B Timer RPM was selected.

- SOM: Fixed issue where calibration on 4-20mA channel as RPM would not affect the engine RPM.

- SOM: Implements Flow Meter logic into the lua script by default.

- SOM: Added 3 more Flow-Meters

- SOM: Added to option to set up linear controls under the “PID” tab which is now named “Loops”

- SOM: Fixed an issue where the system was faulting for low setpoint when in cooldown mode.

- SOM: Added the ability to test lube no flow’s when that channel is in test mode so that there is no fault.

- SOM: Fixed an issue where when clicking on Power Supply Voltage under values the HMI would go black.

- SOM: Added the ability to override PID’s in the UI and set a maximum ramp rate when switching override states.

- SOM: Added Ramp from Idle Rpm to low Rpm when using control PID’s

- SOM: Fixed an issue where discharge control PID deadband changes did not save.

- SOM: Added bumpless transfer from auto/manual when using discharge PID.

- SOM: Fixed an issue where the HMI would go black when using the MDI due to the trending inside of the Channels.

- SOM: Fixed an issue where when cooldown state was blank, this would cause a lua error.

- SOM: Fixed an issue with scaling the Advanced trending on MDI in the DE-4000.

- CONTROLLER: Corrected a problem where the system was faulting in low setpoint Cooldown mode even when the cooldown box was enabled.

- CONTROLLER: Fixed issue where calibration on 4-20mA channel as RPM would not affect the engine RPM.

---

[3.0.1 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/archive/3.0.1/3.0.1.zip)
[3.0.1 Bootloader Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/archive/3.0.1/bootloader_3.0.1.zip)

**Now Archived**

- NOTE: This release has an issue when using a 4-20mA channel as RPM that causes timers to not arm.

- SOM: Permissions for startup timers. 

- SOM: DE-4k Gateway handling Modbus HTTP. 

- SOM: Test mode test fault display. 

- SOM: Digital output for terminal boards 3-5. 

- SOM: Added new lua function reset_c_timers() to allow class C timers to be re-armed when transitioning from cooldown (state 9) back to running (state 8).

- SOM: Autosave Dashboard after 30 seconds when there are no permissions set(Admin User ect.)

- SOM: Changes to lua server to fix “00000” register reads.

- SOM: Bootloader Update only available through static IP 98.102.65.174, if using VLAN(IP set in 4000) gives old version screen.

- SOM: Fixed Terminal Board 4 not updating with Bootloader & getting stuck on lockout mode on reboot.

- SOM: Fixed Issue where socket would not connect with MDI.

- SOM: Fixed Issue where on the MDI could not use bootloader.

- SOM: Added deadband input for suction and discharge PID.

- SOM: Limited PID setpoints between channel alarm value.

- SOM: Added 3 more Lube no flow’s.

- SOM: Added functionality for 4mA - 20mA channel to be used as rpm.

- SOM: Added speed toggle by default in Lua Script.

- SOM: Fixed speed toggle causing drastic rpm change with suction pressure PID.

- SOM: Fixed Virtual channels for suctsp and dischsp.

- SOM: Added Desired RPM to lua code(no longer needed in master script).

- SOM: Added Setting ManualSpeed with ManualSpeedBump in lua code(no longer needed). 

- SOM: Permissions for clearing channel faults.

- CONTROLLER Firmware: Test mode test fault display.

- CONTROLLER Firmware: Added functionality for 4mA - 20mA channel to be used as rpm.

---

[3.0.0 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/archive/3.0.0/3.0.0.zip)

**Now Archived**

- SOM: Updated the switch setting pictures on the Channels page to match the new terminal board switch settings.

- SOM: Added ability to adjust permission level to access the Bootloader loading screen under system info. This can be done in lua scripting by using the   ```setPermissions()``` function. The permissions name is “firmUpdate”.

- SOM: Fixed Bug: bootloader staying at 99% when running web app update.

- SOM: Moved Function to come out of lockout mode when update is complete to the server side.

- SOM: Added client reset when coming out of lockout to each client not triggering the client resets from the client that starts the update.

- SOM: Enabled Scrolling on Outputs page.

- SOM: Set the password input boxes on the settings page to type “password” to hide entry.

- SOM: Set the password input boxes on the change password modals to type “password” to hide entry.

- SOM: Moved Debug button under the Settings screen to allow for MDI overlay on smaller screens.

- SOM: Allowed viewing of startup permissive settings during the startup.

- SOM: Added current state timer and timeout values on startup page during startup.

- SOM: Added current permissive channel value on startup page during startup.

- SOM: Added Timers Armed status led in Values page.

- CONTROLLER Firmware: General code cleanup.

- CONTROLLER Firmware: Modbus task uses ChannelUnlock function to improve shared memory usage.

- CONTROLLER Firmware: Added TimersArmed message structure to allow status led in UI.

- CONTROLLER Firmware: Rev increased to match WebApp.

- TERMINAL Firmware: General code cleanup.

- TERMINAL Firmware: Added TimersArmed message structure to allow status led in UI.

- TERMINAL Firmware: Rev increased to match WebApp.


