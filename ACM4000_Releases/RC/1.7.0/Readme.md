# [MDI 1.7.0](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/1.7.0/mdi-1.7.0.atf)

> **Copyright (c) 2026. All rights reserved.**  
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
- **MDI:** 1.7.0

### Changelog:

#### New In 1.7.0:

##### Bug Fixes:
- **HMI No Longer Freezes After Saving:** Resolved an issue, introduced in 1.6.3, where the screen on legacy ACM-4000 units could stop responding after saving on the Settings or Layout page. The unit also uses noticeably less memory overall.

##### New Items:
- **Reset To Factory:** System Info now has a Reset to Factory button (Admin only). It returns the unit to the state it shipped in, keeping the installed software, and confirms with a typed **RESET** before anything happens. The unit restarts on its own and comes back at its default address with the first-run prompt, about a minute later.
- **Restart From The Screen:** A Restart System button on System Info restarts the unit after a confirmation, so a power cycle is no longer needed.
- **Live Data Viewer:** Open a device from the Devices page and choose Live Data Viewer to watch its registers update live, and to write values to registers that allow it. Viewing and writing each have their own permission setting.
- **Update Over The Network (newer ACM-4000 units only):** On newer ACM-4000 units, a firmware update file can now be uploaded from a web browser on the same network instead of a USB drive. Legacy ACM-4000 units keep the USB method only. The Update section of System Info is now organised by update source.

#### Everything Since 1.1.17:

This release also carries every change made since the 1.1 series. If you
are updating from 1.1.17, everything below is new to your unit as well.

##### Quality of Life(QOL):
- **Save Buttons Are Always Reachable:** The Save and Cancel buttons stay pinned to the bottom of the Settings window, and the Permissions page shows a Save bar whenever you have unsaved changes - no more scrolling through a long form to find Save.
- **Steadier Ethernet Connection:** A power-saving feature on the gigabit Ethernet port that could briefly interrupt communication has been turned off, and the unit now checks its Ethernet settings at every power-up.
- **Your AWI Version Is Kept When Importing:** Importing a configuration no longer overwrites the Master AWI already on the unit. The default Master AWI shipped with the unit is now version 2.0.6.

##### Bug Fixes:
- **Devices No Longer Stuck Disconnected After Power-Up:** Resolved an intermittent issue where devices could come up disconnected after a power-up and stay that way until the unit was restarted.
- **The Unit Recovers On Its Own:** In some cases the unit could appear to be running normally while no longer updating data or applying changes, and only a power cycle would clear it. It now detects this condition and recovers on its own within a few seconds.
- **Slower Devices Are No Longer Dropped:** Devices that respond a little more slowly are no longer incorrectly marked as disconnected, and a device that does drop now reconnects faster.
- **Network Changes Now Apply Reliably:** Resolved an issue where a network change could appear to save successfully without actually taking effect. The unit also now corrects its own network settings at power-up if they do not match what is saved.
- **Settings That Used To Need A Power Cycle Now Take Effect Right Away:** RS-485 port settings, the Screen Sleep Timer, the Screen Zoom, and registers from a newly uploaded AWI now apply shortly after saving instead of waiting for the next power cycle.
- **The Settings Page Now Tells You If Something Did Not Apply:** Saving settings previously always reported success. If part of the save could not be applied, it now says so on screen.
- **Large Encrypted DE-4000 Program Files Load Through The MDI:** These files could previously fail to finish loading. Note that a large file can still take the DE-4000 several minutes to process, during which its screens may not respond - let it finish, do not power cycle.
- **Live Readings Show Correctly On Newer AWI Versions:** Certain devices could show no live values on screen with newer AWI versions, even though the device was working normally.
- **Dashboards Stay With The Right Device:** A device's dashboard could occasionally appear blank or show another device's layout. Downloading a device's AWI now also includes the dashboard and register changes made on the unit, instead of the originals.
- **Datalog Problems No Longer Affect The Rest Of The Unit:** A problem with the datalog database could produce excessive internal logging, which affected the unit's stored diagnostic history and the SD card. The SD card gauge on screen also now recovers on its own once a card is inserted.
- **Also Fixed:** Configuration import and export now allow much larger files; trending downloads use the unit's own time instead of the PC's; IP address fields no longer accept invalid text; the time value sent to the DE-4000 is now correct; and several permissions problems were corrected.

##### New Items:
- **Edit Dashboards Right On The Unit:** Rearrange a device's AWI dashboard directly on the HMI, with live values, using drag and drop. No more downloading the AWI to a PC, editing, and uploading it back. All connected screens refresh when you save.
- **Edit Device Registers On The Unit:** A device's register profile can be edited directly on the HMI.
- **See And Control The Unit From Any PC:** Browse to `http://<device-ip>:6080` from a PC on the same network to view and use the unit's screen in a web browser. Nothing to install.
- **More Ways To Get Data Off The Unit:** SD card exports can be filtered by month and by device, downloaded straight to a connected PC, and set to overwrite the oldest data first when the card fills. The trending page also gained a search box.
- **Send Readings To The DE-4000 By Name:** A reading forwarded to the DE-4000 can be sent under its name (for example T1_IN1) instead of a register number, which makes DE-4000 scripts easier to read and write.
- **Set The Clock Without A DE-4000:** The date and time can now be set on units that do not use a DE-4000 as the main device.
- **Plug In A Monitor While Running:** HDMI can now be connected without restarting the unit.
- **New Permission Settings:** Dashboard editing and register-profile editing each have their own permission, and an RS-485 port timeout setting was added.

## Where To Find This Release

### ACM-4000 bootloader update version 1.7.0

[MDI 1.7.0](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/1.7.0/mdi-1.7.0.atf)

## Update Instructions

### For ACM-4000 with MDI Already Installed

1. **Download MDI 1.7.0**: [Download from GitHub](https://github.com/Altronic-LLC/Altronic-Public-Files/raw/refs/heads/main/ACM4000_Releases/RC/1.7.0/mdi-1.7.0.atf?download=)
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
