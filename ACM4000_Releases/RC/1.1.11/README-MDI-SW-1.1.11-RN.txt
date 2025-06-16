ACM-4000 Multi Device Interface Version 1.1.10 SOFTWARE RELEASE NOTES

README-MDI-SW-1.1.10-RN.txt

Copyright (c) 2025.
All rights reserved.
 
HOERBIGER ENGINE DIVISION
Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

RELEASE KIND: Pre-Release

For demonstration and shakedown. May contain incomplete features, 
bugs of various severity.

INTENDED USE AND USERS:

For initial operational evaluation and customer feedback, as controlled
by Altronic Sales.

This software is not for sale or general distribution.

CHANGELOG:

Bug Fixes:
- Time Synchronization: Fixed an issue where the ACM-4000 would not update its time if the DE-4000 time was changed to a time before the previous
- Time Zone Settings: Fixed an issue where the ACM-4000 required a time zone offset settings for the Trending to be correct on an external PC. The time zone offset setting has been removed and the time will always be the same.
- Trending Display: Fixed an issue where the Trending x-axis time's were not always in the same format HH:MM:SS

WHERE TO FIND THIS RELEASE:

ACM-4000 bootloader update version 1.1.10:
https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.10/mdi-1.1.10.atf

UPDATE INSTRUCTIONS:

For ACM-4000 with MDI Already Installed:

1. Download MDI 1.1.10: 
   https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/PR/1.1.10/mdi-1.1.10.atf?download=
2. Prepare USB: Copy downloaded file onto USB Flash Drive
3. Prepare Device: Power on ACM-4000 which you would like to update
4. Connect USB: Insert USB Flash Drive into ACM-4000
5. Access Menu: Click the Hamburger button on the MDI
6. Navigate to System: Click System Info
7. Locate Update File:
   - Click Refresh 
   - You will see the file you added to the USB
8. Select Update:
   - Click the checkbox for this file
   - Click update
9. Finalize: Once update is complete, the ACM-4000 will power cycle automatically

For ACM-4000 without MDI Already Installed:

1. Download MDI Image: 
   https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.0-Image/MDI_1.0.0.zip?download=
2. Install Base Image: Follow the ACM Imaging Instructions (https://www.altronic-llc.com/wiki-doc/acm-4000/acm-4000-imaging-guide/) to install the base MDI system
3. Update to Latest Version:
   - Once the base image is installed, follow the "For ACM-4000 with MDI Already Installed" instructions above to update to the latest version
   - This will bring your system from version 1.0.0 to the current version

TARGET, TOOLS, AND EQUIPMENT:

Required Hardware:
- ACM-4000 device
- USB Flash Drive (>= 2GB)

For Base Image Installation:
If your ACM-4000 does not currently have the MDI installed, you will need:

Software Tools:
- RPIboot utility
- Raspberry Pi Imager application
- MDI 1.0.0 base image file

Additional Hardware:
- USB-A to USB-C Cable from PC(USB A) to ACM-4000(USB-C) connected to USB OTG Port
- Jumper wire for RPI boot pin on the ACM 3rd PIN Over from DO1

Imaging Process Notes:
Complete imaging instructions can be found in the ACM Imaging Instructions documentation at:
https://www.altronic-llc.com/wiki-doc/acm-4000/acm-4000-imaging-guide/