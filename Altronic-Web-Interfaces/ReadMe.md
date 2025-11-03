# Altronic Web Interfaces

## Overview  
This directory contains the official web-interface configuration and dashboard files released by Altronic, LLC for use with its ACM-4000 mdevice.  
These files support a range of Altronic products, enabling browser-based dashboards for configuration interfaces, device communication, and visualization of engine/process data.

The Altronic Web Interface (AWI) is designed to operate fully in a web browser (even offline), replacing traditional terminal programs and providing monitoring and control of supported Altronic systems.
The AWI is embedded in the ACM‑4000 Module used in Altronic control panels.

---

## Directory Structure & Purpose  
Each folder in this directory corresponds to a different product offering (eg. SAVeS) or specific function (eg. CAT-CDL-COMS). The naming convention and purpose are described below:

In each of these folders you will typically find:  
- AWI Configuration JSON files (used for communications)  
- AWI Dashboard HTML files 
- Revision or version indicators (v0, v1 etc.)  
- “_DBO” variants which are optimized for dashboard-only polling (see below)  
- Documentation or readme files explaining specific file naming, usage, and variants

---

## Dashboard Variant Types  
Within each folder you may find two main categories of interface files:

### Standard Interface Dashboards  
These pull **all available registers** relevant to the device or engine (even those not shown on the dashboard) to support full data coverage and diagnostics.  
Use case: For engineers or applications needing comprehensive visibility.

### Dashboard-Only (DBO) Interfaces  
Files with the suffix `_DBO` (Dashboard Only) poll **only the registers displayed on the dashboard**, resulting in faster update/polling performance but fewer underlying data points.  
Use case: For monitoring where speed and responsiveness are more important than full data coverage.

---

## Naming Convention  
Each file typically follows this format:

**Examples:**  
- `3616A3 v0` – Standard dashboard for CAT 3616A3 engine  
- `3616A3_DBO v0` – Dashboard-Only version for CAT 3616A3  
- `3512_ULB_DBO vR0` – Dashboard-Only version for CAT 3512 ULB engine (Revision R0)

---

## How to Use This Folder  
1. Navigate into the specific folder (e.g., `CAT-CDL-COMS/`).  
2. Choose the correct interface file for your system (standard vs. DBO).  
3. Download the file and load into your ACM-4000.  
4. Ensure network and communication settings match your device (IP address, protocol, node ID, poll settings).
5. Use the documentation included in each sub-folder (or in this repo) for further configuration details.

---

## Notes
- These dashboards represent **Altronic’s official and released standards**.  
- Updates or revisions will be tagged and versioned in this repository.  
- For questions or support, contact Altronic Support at **Altronic.Support@hoerbiger.com**.
