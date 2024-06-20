# Latestest Release #

[3.0.1 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.1.zip)
[3.0.1 Bootloader Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/bootloader_3.0.1.zip)

# Release Notes #

[3.0.1 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.1.zip)
[3.0.1 Bootloader Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/bootloader_3.0.1.zip)

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


[3.0.0 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.0.zip)

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
