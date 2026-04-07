# [ACM-eRCM 1.0.6](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/acm-eRCM/1.0.6/acm-ercm-1.0.6.atf)

> **Copyright (c) 2025. All rights reserved.**
> Altronic, LLC
> 712 Trumbull Avenue
> Girard, Ohio 44420
> United States of America

## Release Kind: Release Candidate

A pre-release version that has undergone significant testing and includes 
all planned features and bug fixes, but may still require minor tweaks 
or validation before the official stable release.

## Intended Use and Users

For initial operational evaluation and customer feedback, as controlled
by Altronic Sales.

This software is not for sale or general distribution.


#### Versioning:
- **ACM-eRCM:** 1.0.6

### Changelog:

#### New Items:
- **ERCM Heartbeat:** Modify ercm to respond to heatbeat requests via. a tcp server.
- **Max Torque:** fixed an issue in shutdown avoidance where the max torque was set to 101% instead of 105%.
- **Shutdown Avoidance PS** - fixed an issue where min and max speed at current loadstep when using shutdown avoidance rpm and/or shutdown avoidance ps would should not be contrained to min/max values and would show - 2 billion.
- **CE Cylinder Info** - Fixed an issue where Crank End registers would only populate for Number of cylinders - 1, now populates all cylinders.
- **Tandem Info** - Added sending additional information to the DE-4000 required for tandems.

## Where To Find This Release

### ACM-eRCM update version 1.0.6

[ACM-eRCM 1.0.6](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/acm-eRCM/1.0.6/acm-ercm-1.0.6.atf)

## Update Instructions

1. **Download ACM-eRCM 1.0.6**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/RC/acm-eRCM/1.0.6/acm-ercm-1.0.6.atf?download=)
2. **Prepare USB**: Copy downloaded file onto USB Flash Drive
3. **Prepare Device**: Power on ACM-4000 which you would like to update
4. **Connect USB**: Insert USB Flash Drive into ACM-4000
5. **Access Menu**: Click the Hamburger button on the MDI
6. **Navigate to System**: Click System Info
7. **Locate Update File**:
   - Click Refresh
   - You will see the file you added to the USB
8. **Select Update**:
   - Click the checkbox for this file
   - Click update
9. **Finalize**: Once update is complete, the ACM-4000 will power cycle automatically

## Target, Tools, and Equipment

### Required Hardware
- ACM-4000 device
- USB Flash Drive (≥ 2GB)
