# Latestest Release #

[3.0.0 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/3.0.0.zip)

# Release Notes #

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
