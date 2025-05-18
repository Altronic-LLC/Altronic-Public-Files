[3.0.1 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.1/3.0.1.zip)
[3.0.1 Bootloader Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.1/bootloader_3.0.1.zip)

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


