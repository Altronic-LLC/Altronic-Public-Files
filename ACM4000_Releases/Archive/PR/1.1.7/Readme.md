# [MDI 1.1.7-RC](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/RC/1.1.7/mdi-1.1.7-RC.atf)

### Changelog Since Last Release Candidate:
#### Quality of Life Changes:
- **Ethernet Gbit:** Added the ability to set 2 IP Adresses on Ethernet Gbit
- **Ethernet Gbit:** Added a default ip address to the 2nd ip address off 192.168.1.175 when first provisioning.
- **Master AWI:** Added the master awi when it does not exist. version 2.0.1.
- **Keyboard:** Modified keyboard background opacity so in situations like the HMI sleep in settings, the number behind the keyboard is visible.
- **Keyboard:** Changed functionality of the backspace button on the keyboard to allow holding down of the button to delete multiple characters.
- **Import Config:** Added a loading spinner while importing a config.
- **Screen Sleep Timer:** Added the ability to ignore the first input when pressing the screen, for this to take effect re-save the screen sleep timer.
- **DE-4000 IP:** Added the ability to change the DE-4000 Ip address due to issues when 2 DE-4000's are connected on the same network.
- **RS-485 Timout:** Lowered Timeout for RS-485 failed request from 2 seconds to 1 second due to impact on polling other devices on the bus.
- **CM4:** Added Datalogging for CM4 Temperature, CPU Usage, CPU Clock, and System Ram.
- **Temperature:** Added Graphic for CM4 Temperature this will show you the current temperature in C or F.  
- **RTU:** Added the ability to set Parity, Data Bits, and Stop Bits for RS-485 Ports.  
- **RTU:** Set Defaults to baud rates for RS-485 1 at 9600 baud and RS-485 2 at 38400 baud instead of empty selections.
- **QOL-GENERAL:** Removed non-required browser console logging.
- **Gateway Caching:** Changed Cache time from 500ms to 1s to speed up networking when using multiple browsers. 
- **Main Device:** Added none option for Main Device.

#### Bug Fixes:
- **Data Explorer/Trending:** Fixed an issue importing a config where the new EthGbit2 IP address would not update properly. Also Fixed an issue where the EthGbit2 IP address would not update if it was the only Ip Address Changed.
- **Data Explorer/Trending:** Fixed an issue where Trending UI would not update when accessing the MDI via. the former static ip address of 98.102.65.175
- **Screen Sleep Timer/Import Config:** Fixed an issue with importing a config where the saving process would not go through due to the addition of the Screen Sleep Timer.
- **Settings Save:** Fixed an issue added in 1.1.2 where settings would be stuck on save if saving with a sleep timer active.
- **HMI Sleep:** Fixed an issue added in 1.1.2 where if using a sleep timer, when the display would go to sleep the ACM would initiate a reboot due to the watchdog in the MDI-Gateway.
- **Screen Sleep Timer:** Fixed an issue where the screen sleep timer would not save properly, causing no sleep to occur.
- **First Run Modal:** Fixed an issue when importing a config under certain circumstances you would keep recieving Are you using the DE-4000 pop up after pressing yes.
- **AWI Reupload:** Fixed an issue when reuploading an AWI device registers would not update if the registers changed until a reboot.

#### New Features:
- **Main Device:** Fixed an issue in 1.1.1 where when selecting an AWI as the main device, this did not show properly.
- **Device Poll Errors:** Added an option to view communication errors for each device up to the last 50 available.
- **Static IP:** Removed Static IP address of **98.102.65.175** due to issues when 2 ACM's are connected on the same network.

> **Note:** After this update, your secondary IP address for Eth Gbit will be removed, and the old static IP address of **98.102.65.175** will become the IP address of the Eth Gbit port.
