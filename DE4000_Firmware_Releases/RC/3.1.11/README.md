# [DE-4000 Bootloader 3.1.11](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/PR/3.1.11/bootloader_3.1.11.atf)

> **Copyright (c) 2026. All rights reserved.**  
> Altronic, LLC  
> 712 Trumbull Avenue  
> Girard, Ohio 44420  
> United States of America

## Release Kind: Release Candidate

Inteded for Application Testing prior to Final Release.

## Intended Use and Users

A staging Software/Firmware version intended for Application Testing.

This software is not for sale or general distribution.
.

#### Versioning:
- **Controller App:** 3.1.11

### Changelog:

#### New Features:
- **Output Safe-State on Controller Fault:** When the controller latches a fault — a script (Lua) error, a failure to initialize the script engine, a hardware safety circuit (HSC) trip, or loss of communication with a terminal board — it now drives all analog outputs (4-20 mA) and all digital outputs to 0 and commands the engine to stop (start request cleared and the unit returned to State 0). Previously outputs could retain their last commanded values through such a fault.

#### Bug Fixes:
- **Fault Recovery on RESET:** When a RESET is performed while a script fault is active, the controller now clears the fault state, reinitializes the script engine, re-runs script first-run logic, and clears the controller alarm/fault flags directly in firmware (mirroring the script `reset()` behavior). This ensures the unit recovers cleanly from an internal script fault on RESET.


## Where To Find This Release

### DE-4000 bootloader update version 3.1.11

# [DE-4000 Bootloader 3.1.11](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/PR/3.1.11/bootloader_3.1.11.atf)


## Update Instructions

### For DE-4000 with Version >= 3.0.0
1. **Download DE-4000 Bootloader Version 3.1.11**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/PR/3.1.11/bootloader_3.1.11.atf?download=)
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
---
