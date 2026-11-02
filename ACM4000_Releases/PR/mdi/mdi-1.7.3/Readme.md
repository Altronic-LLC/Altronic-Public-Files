# [MDI 1.7.3](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi/mdi-1.7.3/mdi-1.7.3.atf)

> **Copyright (c) 2026. All rights reserved.**  
> Altronic, LLC  
> 712 Trumbull Avenue  
> Girard, Ohio 44420  
> United States of America

## Release Kind: Preview Release

For demonstration and shakedown. May contain incomplete features, 
bugs of various severity.

## Intended Use and Users

An early release intended for internal testing and evaluation. Not
validated for deployment on production systems; not for sale or general
distribution.

This release supersedes [MDI 1.7.2](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi/mdi-1.7.2/). It is **MDI 1.7.2 with two fixes and nothing else**: the on-screen keyboard and the datalog export. Everything else in the unit's software is the same as in 1.7.2. Like 1.7.2, it contains every change made since MDI 1.1.17, so a unit on 1.1.17 can go straight to 1.7.3. Those changes are described in the [MDI 1.7.2 notes](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi/mdi-1.7.2/Readme.md).

#### Versioning:
- **MDI:** 1.7.3
- **Master AWI:** 2.0.7 (unchanged from 1.7.2)
- **Update Service:** 0.2.4 (unchanged from 1.7.2)

---

## Before You Update

> [!IMPORTANT]
> **The Master AWI is replaced with version 2.0.7.** Installing 1.7.3 always puts the Master AWI that ships with this release (2.0.7) on the unit, as 1.7.2 does. If you uploaded your own Master AWI, upload it again after the update (Settings > Upload Master AWI). Device AWIs and dashboards are not affected.

> [!NOTE]
> **Coming from a version older than 1.7.2?** Read [Before You Update in the 1.7.2 notes](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi/mdi-1.7.2/Readme.md#before-you-update) too. Those changes, such as communication faults now reported to your SCADA or PLC and the limits on device timing settings, are also in 1.7.3.

---

## At a Glance

**New in 1.7.3 (since 1.7.2):**
- Tapping a key on the on-screen keyboard no longer closes the keyboard without typing
- The datalog export catches up in one step after being more than a week behind

---

## What's New in 1.7.3

### On-Screen Keyboard

#### Tapping a Key No Longer Closes the Keyboard

On 1.7.2, the on-screen keyboard could close as soon as a key was tapped, and the letter was not typed. The keyboard still opened when a text field was tapped, but it could not be used. This happened mostly when the **Main Device** was set to **None** (the setting a new or reset unit starts with) or to a device's AWI, and it could last from start-up until the next restart. With the DE-4000, FUXA or eRCM as the Main Device it rarely happened.

The keyboard now keeps working after the screen reloads part of itself. The screen does that on its own:
- right after the unit starts;
- when you log in or change roles, and after permissions are saved;
- when you switch between devices with the buttons along the bottom of the screen.

Each tap types its key once, Shift gives one capital letter, and the keyboard stays open until you press Enter or tap outside the field.

The keyboard also closes now if the page behind it reloads while you are typing. Before, it could stay open with nothing to type into.

### Data, Export and Import

#### The Datalog Export Catches Up After a Long Gap

The unit exports its logged data to CSV files every hour. After an interruption, it catches up on the hours it missed, 6 hours per run. If it had fallen far behind, catching up took a very long time. Examples are a unit switched off for several weeks, or a unit whose clock jumped forward by months when it was synchronised with the DE-4000. During that time the CSV files stayed out of date.

Now:
- **More than a week behind:** the next export writes the most recent 6 hours and carries on from the present. The skipped period is recorded in the unit's log. Its data is not written to the CSV files, but it stays in the unit's database until the database's retention period removes it.
- **A week or less behind:** nothing changes. The missed hours are filled in as before, 6 hours per run.
- **The clock moved backwards:** the export carries on from the present, as before, and this is now recorded in the unit's log.

This applies to the hourly export and to **Export Data** (the download icon under the SD Card Usage gauge), whether the files go to a USB drive or are downloaded to a PC.

---

## Where To Find This Release

### ACM-4000 bootloader update version 1.7.3

[MDI 1.7.3](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/mdi/mdi-1.7.3/mdi-1.7.3.atf)

## Update Instructions

> [!IMPORTANT]
> Keep the file name `mdi-1.7.3.atf`. Keep the power connected during the update. The unit restarts on its own when the update is complete.

### For ACM-4000 on MDI 1.1.x up to 1.6.x

1. **Download MDI 1.7.3**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/PR/mdi/mdi-1.7.3/mdi-1.7.3.atf?download=)
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

### For ACM-4000 on MDI 1.7.0 or 1.7.1

1. **Download MDI 1.7.3** and copy it onto a USB Flash Drive, as above.
2. Insert the USB Flash Drive into the ACM-4000.
3. Click the Hamburger button, then **System Info**.
4. Under **Update from USB Drive**, check for the drive, select `mdi-1.7.3.atf` and start the update.
5. The ACM-4000 restarts automatically when the update is complete.

### For ACM-4000 on MDI 1.7.2 (and Future Updates)

1. Click the Hamburger button, then **System Info**.
2. Either:
   - **From a PC on the same network:** under **Upload Firmware** press **Select file...**, choose `mdi-1.7.3.atf`, then press **Send to unit**.
   - **From a USB drive:** insert the drive, press **Check for drive**, choose the file, then press **Send to unit**.
3. Check the **Ready to install** panel, then press **Install** (or **Install and restart**).
4. When the update finishes, the unit restarts if needed. Press **Reload this page** if the page asks you to.

### For ACM-4000 without MDI Already Installed

1. **Download MDI Image**: [Download MDI 1.0.0 from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/MDI_1.0.0-Image/MDI_1.0.0.zip?download=)
2. **Install Base Image**: Follow the [ACM Imaging Instructions](https://www.altronic-llc.com/wiki-doc/acm-4000/acm-4000-imaging-guide/) to install the base MDI system
3. **Update to Latest Version**: 
   - Once the base image is installed, follow the "For ACM-4000 on MDI 1.1.x up to 1.6.x" instructions above to update to the latest version
   - This will bring your system from version 1.0.0 to the current version

## Target, Tools, and Equipment

### Required Hardware
- ACM-4000 device
- USB Flash Drive (≥ 2GB), or a PC on the same network as the ACM-4000 (units already on 1.7.2 or later)

### For Base Image Installation
If your ACM-4000 does not currently have the MDI installed, you will need:

- **Software Tools**:
  - RPIboot utility
  - Raspberry Pi Imager application
  - MDI 1.0.0 base image file
- **Additional Hardware**:
  - USB-A to USB-C Cable from PC(USB A) to ACM-4000(USB-C) connected to USB OTG Port 
  - Jumper wire for RPI boot pin on the ACM 3rd PIN Over from DO1

### Imaging Process Notes
Complete imaging instructions can be found in the [ACM Imaging Instructions](https://www.altronic-llc.com/wiki-doc/acm-4000/acm-4000-imaging-guide/) documentation.
