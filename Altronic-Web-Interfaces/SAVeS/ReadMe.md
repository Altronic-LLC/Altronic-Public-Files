# ACM-4000 Files - SAVeS

## Overview  
This directory contains the **Altronic Web Interface (AWI)** dashboards and configuration files for **Smart Altronic Vibration Sensor (SAVeS)**.
These files have been tested and validated by Altronic engineering to ensure proper communication, performance, and compatibility with supported Altronic systems.

Each file within this folder supports a specific configuration or communication setup and has been verified for proper data polling and visualization within the AWI or ACM-4000 environment.

---

## Dashboard Variant Types  
### Standard Interface Dashboards  
These pull **all available registers** relevant to the device or engine (even those not shown on the dashboard) to support full data coverage and diagnostics.  
**Use case:** For users or applications needing comprehensive visibility.

### Dashboard-Only (DBO) Interfaces  
Files with the suffix `_DBO` (Dashboard Only) poll **only the registers displayed on the dashboard**, providing faster refresh rates due to reduced polling load.  
**Use case:** For monitoring where **speed and responsiveness** are more important than full data coverage.

---

## Naming Convention  
Each file typically follows this format:

**Examples:**  
- `ExampleA v0` – Standard dashboard for Example A  
- `ExampleA_DBO v0` – Dashboard-Only version for Example A  
- `ExampleB_DBO vR0` – Dashboard-Only version for Example B

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
