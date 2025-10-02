Firmware update 20251002 RC
Version 2.1.0
-Only to be used with version 2.2.1 and later NGI-5000-Logic CM4 software and version 1.2.2 and later DCPM CM4 software (if NGI-5000 full system).

-Added the 275V low fault. This fault occurs anytime when rotating and seeing the DC HV go below 200 V.
    There has to be no rotation for the fault to be cleared. Fire confirm is cleared during fault.
    For the fault to not happen, the DC HV must be greater than 200V before any rotation.
    There is an issue on getting a 275V fault on power up.

-Added multiple Hall Effects per cycle register setting. 
  This should normally be set to 1, but on engines with a gear ratio that causes the CAM to spin at a different rate than normal, this can be set to the number of expected hall effects per cycle. 
  For example on a 1.5 to 1 gear ratio, the hall effects per cycle should be set to 3.
  If the counted hall effects per cycle is not the same as this setting, a fault will occur and the register "hall effects per cycle seen" will be the diagnostic for how many hall effects per cycle were seen.

-Added 1 coil per cylinder mode for NGI-5000 full system. Only channel 1 of the CIUs will fire in this mode if it is configured to do so in the engine config tool.

-Fixed miscellaneous input not being correct on power up.

-Fixed wrong last condition (missing gear tooth) during ending of test mode and during a user shutdown during the "TRYING" engine state.

-Fixed two extra firings occurring before the reset output when going from "INSYNC" to "TRYING".

Firmware update 20250514 RC
Version 2.0.4
- Only to be used with 2.0.3 and later CM4
- Removed setting of alarm output when Hall Effect occurs without a reset

Firmware update 20250512 RC
Version 2.0.3
- Only to be used with 2.0.3 and later CM4
- Attempt to allow the engine state to not fault when there are extra CAM pulses without a reset.
- There will be an alarm when there is a CAM pulse without a reset.
- As long as there is at least one CAM pulse with a reset, the NGI-5000 will go to firing and ground the fire confirm under normal operation.

Firmware update 20250424 RC
Version 2.0.2 (Promoted to FInal)
- Only to be used with 2.0.3 and later CM4
- Attempt to fix the engine state not going from "Trying" to "Firing" in legacy system when second plug cut-off advanced feature is active.

