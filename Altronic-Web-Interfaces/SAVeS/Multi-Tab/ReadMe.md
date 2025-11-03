# AWI Files - SAVeS

## Overview  
This directory contains the **Altronic Web Interface (AWI)** dashboards and configuration files for **Smart Altronic Vibration Sensor (SAVeS) Multi-Tab AWI**.
These files have been tested and validated by Altronic engineering to ensure proper communication, performance, and compatibility with supported Altronic systems.

The **SAVeS Multi-Tab AWI** introduces a new interface design that consolidates multiple vibration sensor dashboards into a single, unified AWI file.
Instead of multiple individual AWI tabs for each vibration device, the Multi-Tab interface provides a single AWI entry point with multiple navigation buttons inside — allowing quick access to each vibration sensor’s data under one organized layout.

This design improves usability, reduces clutter, and provides a more cohesive view of vibration data across all monitored devices.

This is an advanced feature set if the ACM-4000's AWI capability and the manual for setup and operation is available on the Altronic website.
--- INSERT LINK WHEN READY ---

---

## Dashboard Variant Types  
### Standard Interface Dashboards  
These pull **all available registers** relevant to the device or engine (even those not shown on the dashboard) to support full data coverage and diagnostics.  
**Use case:** For users or applications needing comprehensive visibility.

### Dashboard-Only (DBO) Interfaces  
Files with the suffix `_DBO` (Dashboard Only) poll **only the registers displayed on the dashboard**, providing faster refresh rates due to reduced polling load.  
**Use case:** For monitoring where **speed and responsiveness** are more important than full data coverage.

---

## Multi-Tab Dashboard Overview 
The Multi-Tab AWI uses a layered navigation approach:
- A primary home screen provides navigation buttons for each connected vibration sensor or device group.
- Each button opens a dedicated sensor-specific tab within the same AWI file.

**Benefits:**
- Unified access to all SAVeS vibration sensors in one interface
- Simplified maintenance and navigation
- Faster loading and fewer open AWI tabs in the browser
- Consistent data visualization across all sensors

---

## Naming Convention  
The filenames in this repository are pre-named to work with the SAVeS_MultiTab AWI.
If you wish to use the SAVeS_MultiTab AWI as is, all additional AWIs must remain the same name whent hey are loaded.

---

## How to Use  
1. Download the appropriate dashboard or configuration file for your system.  
2. Load the file into your **ACM-4000**.  
3. Confirm communication settings (IP address, protocol, node ID, polling rate) match your setup.  
4. Refer to any additional documentation or instructions in this folder for configuration details.

---

## Notes
- These files represent **Altronic’s current standards**.  
- Updates or revisions will be tagged and versioned in this repository.  
- For questions or support, contact Altronic Support at **Altronic.Support@hoerbiger.com**.
