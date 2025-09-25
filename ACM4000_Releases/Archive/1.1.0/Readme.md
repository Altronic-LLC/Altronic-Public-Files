# [MDI 1.1.0-PR](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/ACM4000_Releases/PR/1.1.0/mdi-1.1.0-PR.atf)

### Changelog:

#### System Changes:
- **Static IP:** Removed Static IP address of **98.102.65.175** due to issues when 2 ACM's are connected on the same network.

> **Note:** After this update, your secondary IP address for Eth Gbit will be removed, and the old static IP address of **98.102.65.175** will become the IP address of the Eth Gbit port.


#### QOL Changes:
- **DE-4000 IP:** Added the ability to change the DE-4000 Ip address due to issues when 2 DE-4000's are connected on the same network.
- **RS-485 Timout:** Lowered Timeout for RS-485 failed request from 2 seconds to 1 second due to impact on polling other devices on the bus.

#### Bug Fixes:
- **First Run Modal:** Fixed an issue when importing a config under certain circumstances you would keep recieving Are you using the DE-4000 pop up after pressing yes.