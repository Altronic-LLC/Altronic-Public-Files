# Altronic Web Interfaces

## Overview  
This directory contains the official web-interface configuration and dashboard files released by **Altronic, LLC** for use with its ACM-4000 module and associated devices.  
These files support a range of Altronic products, ranging from device communication setup to enabling browser-based dashboards for configuration interfaces and visualization of process data.

The **Altronic Web Interface (AWI)** is designed to operate fully in a web browser (even offline), replacing traditional terminal programs and providing monitoring and control of supported Altronic systems.
The AWI is embedded in the **ACM-4000 Compute Module**, which serves as part of the central platform for Altronic’s digital control and monitoring system.

---

## File Types Explained  
Altronic Web Interface files come in several formats, each serving a specific role in configuration and deployment workflows.

### Master AWI File (.html)
- Downloaded from altronic.netlify.app
- Contains the latest version of the AWI with all supported device templates.
- Used as the base project file where new devices and dashboards are configured and exported.

**Use case:**
For creating and managing exported AWIs for individual devices.

### Device (Exported) AWI File (.html)
- Generated from the MASTER AWI after selecting a single device configuration.
- Represents a self-contained dashboard and interface for that specific device.
- Used for adding or integrating a single device into a Multi-Device Interface (MDI) system.

**Use case:**
For uploading or importing an AWI configuration for one device into an MDI project.

### MDI Configuration (.json)
- Exported from the MDI system (via the Settings page → Download Config / Export Config).
- Contains all device configurations, communication settings, and dashboard assignments for an entire MDI setup.
- Used for backup, replication, or bulk deployment of MDI configurations.

**Use case:**
For restoring or deploying complete multi-device setups to another ACM-4000 or system instance.

---

## Directory Structure & Purpose  
Each folder in this directory corresponds to a different **product offering** (eg. `SAVeS/`) or **specific function** (e.g., `CAT-CDL-COMS/`). The naming convention and purpose are described below:

In each of these folders you will typically find:  
- AWI configuration `.json` files (for communications and setup)  
- AWI dashboard `.html` files (for web-based visualization)
- Revision or version indicators (`v0`, `v1`, etc.)  
- `_DBO` variants which are optimized for dashboard-only polling (see below)  
- Documentation or ReadMe files explaining specific specific file naming and usage

---

## Dashboard Variant Types  
Within each folder you may find two main categories of interface files:

### Standard Interface Dashboards  
These pull **all available registers** relevant to the device or engine (even those not shown on the dashboard) to support full data coverage and diagnostics.  
**Use case:**
For users or applications needing comprehensive visibility.

### Dashboard-Only (DBO) Interfaces  
Files with the suffix `_DBO` (Dashboard Only) poll **only the registers displayed on the dashboard**, providing faster refresh rates due to reduced polling load.  
**Use case:**
For monitoring where **speed and responsiveness** are more important than full data coverage.

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
2. Choose the correct interface file for your system (standard vs. `_DBO`).  
3. Download and load the file into your ACM-4000.  
4. Ensure network and communication settings match your device (IP address, protocol, node ID, poll settings).
5. Use the documentation included in each sub-folder (or in this repo) for further configuration details.

---

## Notes
- These dashboards represent **Altronic’s official and released standards**.  
- Updates or revisions will be tagged and versioned in this repository.  
- For questions or support, contact Altronic Support at **Altronic.Support@hoerbiger.com**.
