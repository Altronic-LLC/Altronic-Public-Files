# Release Notes #

[3.0.2 Firmware Release](https://github.com/Altronic-LLC/Altronic-Public-Files/blob/main/DE4000_Firmware_Releases/Final/3.0.2.zip)

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

