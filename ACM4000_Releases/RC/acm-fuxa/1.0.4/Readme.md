# [ACM-FUXA 1.0.4](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/acm-fuxa/1.0.4/acm-fuxa-1.0.4.atf)

> **Copyright (c) 2025. All rights reserved.**
> HOERBIGER ENGINE DIVISION
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
- **ACM-FUXA:** 1.0.4

### Changelog:
- **Config Removal on Update:** Fixed an issue where the fuxa project would be removed when updating fuxa. all future updates will keep project.
- **Fuxa Logs Storage:** Removed logging debug message to the system to avoid increasing storage.
- **Fuxa Persistant Data:** Added the ability for fuxa the last values seen for registers to recover values on boot.

#### New Items:

## Where To Find This Release

### ACM-FUXA update version 1.0.4

[ACM-FUXA 1.0.4](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/acm-fuxa/1.0.4/acm-fuxa-1.0.4.atf)

## Update Instructions

1. **Download ACM-FUXA 1.0.4**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/RC/acm-fuxa/1.0.4/acm-fuxa-1.0.4.atf?download=)
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
