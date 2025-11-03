# AWI Files - CAT Engine CDL Communications

## Overview
This repository contains the web-interface configuration and dashboard files released by **Altronic, LLC** for use with **CAT Engine CDL communications**.  
These dashboards are designed and validated by Altronic engineering to ensure compatibility, performance, and reliability across supported engine types.

Each dashboard file corresponds to a specific CAT engine configuration and has been tested for proper data polling and visualization within the Altronic Web Interface.

---

## Dashboard Variants

### 1. **Standard Dashboards (e.g., `3616A3 v0`)**
These dashboards poll **all available data registers**, including those not displayed on the dashboard or relevant to the specific engine.  
This approach ensures comprehensive data acquisition but may result in **slightly slower polling rates** due to the larger number of registers requested.

**Use case:**  
For engineers or users who require complete data coverage — including less frequently used or diagnostic registers.

---

### 2. **DBO (Dashboard Only) Dashboards (e.g., `3616A3_DBO v0`)**

**DBO** stands for **Dashboard Only**.  
These dashboards poll **only the registers displayed on the dashboard**, which results in **faster data updates** due to reduced polling load.

**Use case:**  
For applications prioritizing **speed and responsiveness** where only key operational data (visible on the dashboard) is needed.

**Altronic recommends using the DBO files**

---

## Naming Convention
Each dashboard file follows the naming format:

```
[EngineModel]_[Variant] v[Revision]
```

Examples:
- `3616A3 v0` – Standard AWI Dashboard for CAT 3616A3 Engine
- `3616A3_DBO v0` – Dashboard Only version for CAT 3616A3 Engine 
- `3512_ULB_DBO v0` – Dashboard Only version for CAT 3512 ULB Engine

---

## Notes
- These files represent **Altronic’s current standards**.
- Updates or revisions will be tagged and versioned in this repository.  
- For questions or support, contact Altronic Support at **Altronic.Support@hoerbiger.com**.
