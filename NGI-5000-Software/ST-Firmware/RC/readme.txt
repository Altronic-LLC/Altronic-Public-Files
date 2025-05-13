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
