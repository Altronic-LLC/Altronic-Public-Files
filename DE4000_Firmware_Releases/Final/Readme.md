## [3.0.3 Bootloader Firmware](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.3/bootloader_3.0.3.atf)
[3.0.3 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.3/3.0.3.zip)

> **Note:** Bootloader updates should complete within 10 minutes, whether using the Terminal Controller or WebApp. If the update appears stuck at 99% for longer than 10 minutes, power cycle the system and attempt the update again.

### Changelog:

#### Bug Fixes:
- **PID Override:** Fixed an issue with the new PID override feature where if the ramp is lower than 1 and there are states being actively overridden, the PID would not ramp to the target value.
- **PID UI:** Fixed an issue in the PID UI where there was a red scrollbar at the bottom of the screen.

---

[3.0.2 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/archive/3.0.2.zip)

**Now Archived**

- SOM: Fixed an issue where the Timers would not arm when using a 4-20mA channel as RPM.

- SOM: Fixed an issue where the timer settings on Global->System would cause hard limits to go off the page when Exceed B Timer RPM was selected.

- SOM: Fixed issue where calibration on 4-20mA channel as RPM would not affect the engine RPM.

- SOM: Implements Flow Meter logic into the lua script by default.

- SOM: Added 3 more Flow-Meters

- SOM: Added to option to set up linear controls under the “PID” tab which is now named “Loops”

- SOM: Fixed an issue where the system was faulting for low setpoint when in cooldown mode.

- SOM: Added the ability to test lube no flow’s when that channel is in test mode so that there is no fault.

- SOM: Fixed an issue where when clicking on Power Supply Voltage under values the HMI would go black.

- SOM: Added the ability to override PID’s in the UI and set a maximum ramp rate when switching override states.

- SOM: Added Ramp from Idle Rpm to low Rpm when using control PID’s

- SOM: Fixed an issue where discharge control PID deadband changes did not save.

- SOM: Added bumpless transfer from auto/manual when using discharge PID.

- SOM: Fixed an issue where the HMI would go black when using the MDI due to the trending inside of the Channels.

- SOM: Fixed an issue where when cooldown state was blank, this would cause a lua error.

- SOM: Fixed an issue with scaling the Advanced trending on MDI in the DE-4000.

- CONTROLLER: Corrected a problem where the system was faulting in low setpoint Cooldown mode even when the cooldown box was enabled.

- CONTROLLER: Fixed issue where calibration on 4-20mA channel as RPM would not affect the engine RPM.

---

[3.0.1 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/archive/3.0.1/3.0.1.zip)
[3.0.1 Bootloader Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/archive/3.0.1/bootloader_3.0.1.zip)

**Now Archived**

- NOTE: This release has an issue when using a 4-20mA channel as RPM that causes timers to not arm.

- SOM: Permissions for startup timers. 

- SOM: DE-4k Gateway handling Modbus HTTP. 

- SOM: Test mode test fault display. 

- SOM: Digital output for terminal boards 3-5. 

- SOM: Added new lua function reset_c_timers() to allow class C timers to be re-armed when transitioning from cooldown (state 9) back to running (state 8).

- SOM: Autosave Dashboard after 30 seconds when there are no permissions set(Admin User ect.)

- SOM: Changes to lua server to fix “00000” register reads.

- SOM: Bootloader Update only available through static IP 98.102.65.174, if using VLAN(IP set in 4000) gives old version screen.

- SOM: Fixed Terminal Board 4 not updating with Bootloader & getting stuck on lockout mode on reboot.

- SOM: Fixed Issue where socket would not connect with MDI.

- SOM: Fixed Issue where on the MDI could not use bootloader.

- SOM: Added deadband input for suction and discharge PID.

- SOM: Limited PID setpoints between channel alarm value.

- SOM: Added 3 more Lube no flow’s.

- SOM: Added functionality for 4mA - 20mA channel to be used as rpm.

- SOM: Added speed toggle by default in Lua Script.

- SOM: Fixed speed toggle causing drastic rpm change with suction pressure PID.

- SOM: Fixed Virtual channels for suctsp and dischsp.

- SOM: Added Desired RPM to lua code(no longer needed in master script).

- SOM: Added Setting ManualSpeed with ManualSpeedBump in lua code(no longer needed). 

- SOM: Permissions for clearing channel faults.

- CONTROLLER Firmware: Test mode test fault display.

- CONTROLLER Firmware: Added functionality for 4mA - 20mA channel to be used as rpm.

---

[3.0.0 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/archive/3.0.0/3.0.0.zip)

**Now Archived**

- SOM: Updated the switch setting pictures on the Channels page to match the new terminal board switch settings.

- SOM: Added ability to adjust permission level to access the Bootloader loading screen under system info. This can be done in lua scripting by using the   ```setPermissions()``` function. The permissions name is “firmUpdate”.

- SOM: Fixed Bug: bootloader staying at 99% when running web app update.

- SOM: Moved Function to come out of lockout mode when update is complete to the server side.

- SOM: Added client reset when coming out of lockout to each client not triggering the client resets from the client that starts the update.

- SOM: Enabled Scrolling on Outputs page.

- SOM: Set the password input boxes on the settings page to type “password” to hide entry.

- SOM: Set the password input boxes on the change password modals to type “password” to hide entry.

- SOM: Moved Debug button under the Settings screen to allow for MDI overlay on smaller screens.

- SOM: Allowed viewing of startup permissive settings during the startup.

- SOM: Added current state timer and timeout values on startup page during startup.

- SOM: Added current permissive channel value on startup page during startup.

- SOM: Added Timers Armed status led in Values page.

- CONTROLLER Firmware: General code cleanup.

- CONTROLLER Firmware: Modbus task uses ChannelUnlock function to improve shared memory usage.

- CONTROLLER Firmware: Added TimersArmed message structure to allow status led in UI.

- CONTROLLER Firmware: Rev increased to match WebApp.

- TERMINAL Firmware: General code cleanup.

- TERMINAL Firmware: Added TimersArmed message structure to allow status led in UI.

- TERMINAL Firmware: Rev increased to match WebApp.


