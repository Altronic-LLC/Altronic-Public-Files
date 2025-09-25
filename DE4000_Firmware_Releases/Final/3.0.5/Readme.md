# [DE-4000 Bootloader 3.0.5](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.5/bootloader_3.0.5.atf)

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
- **WebApp - Memory Leak:** Fixed a memory leak when faults and alarms are added to the event log.
- **WebApp - Channel Selector:** Fixed unit types in channels page bleeding through the channel selector.
- **WebApp - Dashboard Navigation:** Fixed an issue when deleting a dashboard page, the home page would not update to its new page number.
- **WebApp - Dashboard Input Selection:** Fixed an issue when selecting Up/Down or toggle input on the dashboard page, these were swapped.
#### New Features:
- **WebApp - MDI Integration:** Added logic required to share current permission level with the MDI.
- **WebApp - ERCM Configuration:** Added ERCM page for configuration of the ACI Server on the MDI.
- **WebApp - Navigation Enhancement:** Changed the navigation bar on the DE-4000 to allow scrolling and added ERCM item to the navigation bar.
- **WebApp - ACM Connection:** Added the ability to enter the ACM-4000's IP address to ensure connection with the ACI-server.
- **WebApp - Channel Selection:** Added the ability to select channels which associate with certain pressures/temperatures required for the ACI server.
- **WebApp - File Transfer:** Added the ability to send ERCM license and viewer file from the DE-4000 to the ACM.
- **WebApp - Custom Alarms:** Added logic to allow custom alarms to be set from the lua script.
- **WebApp - ERCM Integration:** Added node red flow to get the ERCM heartbeat from the ACI server.
- **Lua Scripting:** Added 4 new Lua Functions: get_channel_high_alarm_sp, get_channel_low_alarm_sp, get_channel_high_safety_sp, get_channel_low_safety_sp.


#### Quality of Life Improvements:
- **WebApp - Documentation:** Updated Update Manual to show latest update instructions.
#### Known Issues:
- **Discrete Channels with Cooldown:** An issue has been identified affecting discrete channels when the Cooldown option is enabled. In certain cases, the channel may not fault after the start timer expires if the RPM1 timer remains active. Additionally, the channel may not display as armed once the timer has expired, even when the cooldown duration is set to zero.
   - **⚠️ Caution:** When creating a new discrete channel, if Class B or Class C is selected, the Cooldown option is automatically enabled by default.
   - **Workaround:** If cooldown is not required for your application, uncheck the Cooldown option when configuring the channel. This will allow the channel to fault and re-arm as expected.
   - **⚠️ Important:** This condition can affect overall system safety under certain operating scenarios. Please review your configuration and apply the above workaround where appropriate.
   - The root cause has been identified, and a permanent correction will be included in the next firmware release.



## Where To Find This Release

### DE-4000 bootloader update version 3.0.5

# [DE-4000 Bootloader 3.0.5](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.5/bootloader_3.0.5.atf)


## Update Instructions

### For DE-4000 with Version >= 3.0.0
> **⚠️ Important:** When updating a system using the MDI (Multi Device Interface), Altronic recommends updating the DE-4000 prior to the ACM-4000 to ensure proper compatibility and system synchronization.
1. **Download DE-4000 Bootloader Version 3.0.5**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.5/bootloader_3.0.5.atf?download=)
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
> **⚠️ Important:** When updating a system using the MDI (Multi Device Interface), Altronic recommends updating the DE-4000 prior to the ACM-4000 to ensure proper compatibility and system synchronization.
https://www.altronic-llc.com/wp-content/uploads/DE-4000-Firmware-Download-Quick-Start-Guide.pdf

### Required Hardware
- DE-4000 Controller Board
- DE-4000 Terminal Board
- USB Flash Drive (≥ 2GB)
- HMI or PC

---


