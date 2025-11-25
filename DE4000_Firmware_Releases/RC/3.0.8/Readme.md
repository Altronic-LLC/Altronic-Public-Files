# [DE-4000 Bootloader 3.0.8](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.8/bootloader_3.0.8.atf)

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

#### New Features:
- **HMI Control Permissions:** Added the ability to disable HMI Start/Stop/Reset functions through system settings toggles. Physical button functionality remains independent of HMI settings.
- **State 0 Permissive Control:** Added permissive controls for State 0 that determine whether the unit can be started. Start operation is only allowed when all permissives are met.
- **Virtual Input PID Support:** Added the ability to use Script Virtual (SVirt) inputs for PID control loops.
- **Password Management:** Added factory-level functionality to reset Admin and User passwords.
- **Dashboard Row Management:** Added the ability to insert or remove rows in the middle of the dashboard without having to reorganize existing content.
- **Event Log Export:** Added the ability to export event logs while connected to the DE-4000 via PC.
- **Battery Saver Integration:** Added battery saver script functionality with UI configuration options available in the global settings.
- **Digital Output Usage Tracking:** Added system to track and display where digital outputs are being used throughout the system.
- **Advanced Trending UI:** Updated the exit button color in Advanced Trending for better visibility.

#### Bug Fixes:
- **Settings Screen Display:** Fixed scaling issues on the settings screen that caused text overlap. System information now properly displays across two lines instead of one.
- **Script Editor Scaling:** Fixed script editor scaling when auto-scaling is enabled. The editor now uses the full screen real estate for improved text resolution and readability.
- **Controller Performance:** Merged controller and Redis tasks on the DE-4000 Controller to resolve previous fault shutdown issues and improve system stability.
- **Modbus Script Timing:** Modified Node Red flow to ensure Modbus scripts run after all Controller tasks are complete, minimizing Redis server contention.
- **eRCM IP Address:** Fixed eRCM IP address initialization to prevent yellow/warning status at startup.
- **Channel Configuration:** Removed the unused Vibration channel option from the channels screen to simplify configuration.
- **Current Loop Labeling:** Updated Current Loop display name to "Current Loop (4-20 mA)" for clarity.
- **Script Refresh Function:** Fixed Redis key handling in RefreshScript function to include proper default values when keys don't exist for terminal board never connected.
- **ERCM Heartbeat:** Removed polling for the ercm heartbeat, ercm will now send this directly to the de-4000.
- **Digital Output Pulse Function:** Fixed an issue with digital output pulse functionality when used with a larger timeframe.

#### Quality of Life Improvements:
- **Lua Scripting:** Added get_alarm_status function to controller for lua master scripts, returns 1 if alarm is present.
- **Terminal Firmware Integration:** Updated terminal firmware to support new controller-redis merged functionality.


## Where To Find This Release

### DE-4000 bootloader update version 3.0.8

# [DE-4000 Bootloader 3.0.8](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.8/bootloader_3.0.8.atf)


## Update Instructions

### For DE-4000 with Version >= 3.0.0
1. **Download DE-4000 Bootloader Version 3.0.8**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/RC/3.0.8/bootloader_3.0.8.atf?download=)
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