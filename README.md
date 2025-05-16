# Altronic Public Files Repository
 
Welcome to the public firmware repository for Altronic, LLC.
 
This repository contains firmware and/or software files for a variety of Altronic products.
It is intended as a central location for customers and support personnel to access firmware organized by product and release status.
 
**Please Note:** Software/Firmware provided here is for use by qualified personnel. Use at your own risk. Altronic assumes no responsibility for improper installation or use.
 
---
 
## Repository Structure

This repository contains folders for a variety of Altronic products and tools. Folder naming and structure may vary depending on the type of content.
For product-related releases, folders typically follow this format:

ProductName-Release
Example: ACM4000_Releases
Within these folders, you'll find subfolders that represent the release status of the files:
•	PR – Preview Release Candidate Software/Firmware
•	RC – Release Candidate Software/Firmware
•	Final – Validated and approved Software/Firmware
•	Archive – Superseded versions no longer in active use
> Note: The same version file will move between these folders (promoted upon successful testing) during the release process without changing its name.
Some folders may not follow this structure. For example, interface tools, web applications, or other software utilities (e.g., Altronic-Web-Interfaces)
may not be tied to a specific hardware product and may have a simplified or standalone format.
Each folder is organized to best reflect the purpose of the files it contains, whether hardware-related firmware or support applications.
----------------------------------------------------------------------------------------------------------------------------------------------------------
 
## Versioning Format
 
Firmware and software follow this version format:
 
**MM.mm.bb**  
(Major.Minor.Bugfix)

Major Version (MM): 

	Indicates a significant functional or architectural milestone.
	This is incremented whenever major features are added or major internal changes to design are made.
	Such changes may significantly change operations.
	
Minor Version (mm): 

	Indicates incremental or planned additions to existing and related functionality.
	Incremented whenever improvements are made to an existing product.
	Such changes do not change operations.
	
Bug Version (bb): 

	Indicates bug repair with no change in functionality.
	Incremented whenever faulty operation is repaired.
	Such changes, well, repair errant existing operation.

 
Unlike internal Engineering environments where suffixes like `-PR` or `-RC` may be used, the files posted 
to this repository always retain the base version number only (e.g., `03.00.00`). 
The release stage is determined by which folder the file it is placed in.
 
### Release Stages:
 
- **PR (PreviewRelease)**  

 	"A preview release is an early version of software made available to users before the official stable release. 
	It showcases new features, improvements, or changes for testing and feedback, but may contain bugs
	or incomplete elements. Often called a beta or developer preview, it’s intended for evaluation and not for critical use."

 
- **RC (Release Candidate)**  

	"A release candidate (RC) is a pre-release version of software that is considered nearly ready 
	for final distribution. It has undergone significant testing and includes all planned features 
	and bug fixes, but may still require minor tweaks or validation before the official stable release."
 
- **Final**  
	
	The officially released and fully validated version. This is the recommended version for production use. 
	Once a version is marked Final, it represents the most stable and trusted release for that product or application.

- **Archive**  

	Contains previous versions that have since been replaced by a newer release. These versions are preserved, 
	but are no longer the recommended release. Files in the Archive folder should not be used for new installations unless specifically instructed.

---------------------------------------------------------------------------------------------------------------------------------------------------------

### How This Works in Practice:
 
Engineering creates version `03.00.00` and performs internal testing.  
Once approved, the file is uploaded to the **PR** folder as `03.00.00`.  
After further validation (e.g., application testing or field feedback), the exact same file is moved (promoted) to the **RC** folder—again as `03.00.00`.  
If it passes all validation checks, it is finally moved (promoted) to the **Final** folder.
 
> This process accomplishes two main things
-	Lowers the risk and complexity of testing a PR or RC that when the files are rebuilt as final has not been tested. 
	The files that were tested can continue to be used and considered as final once promoted in the process.

-	Eliminates the need to rebuild or rename files between release stages, ensuring more efficient delivery and better traceability. 

 
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 
## Release Workflow
 
1. A new version starts as a **Pre-Release (PR)**  in the PR folder
2. After internal Engineering testing, it is promoted to **Release Candidate (RC)** in the RC folder 
3. Once validated by Application Engineering and/or Field Testing, it is promoted to the **Final** folder  
4. Older versions are stored in the **Archive** folder
 
**Example:**
 - `03.00.00` placed in `/PR`
 - same `03.00.00` moved to `/RC`
 - same `03.00.00` moved to `/Final`
 - older versions moved to `/Archive`
 
Only the current Final version should appear in the Final folder.
 
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 
## Release Notes
 
Each version should include a release note file describing:
 
- New features or fixes
 - Known issues (if any)
 - Validation and testing performed
 
Example:
 
- Bug Fix: Modify trending to use Dynamic IP Address
- Quality of Life: Pop-up Modal UI
- Validated with test set and field feedback
 
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 
## Licensing and Use
 
This repository is considered to be the final build and released files
for updating or configuring Altronic products 
and does not use a general software license.
 
- Firmware is provided as-is for informational and support use.
 - Redistribution or modification is not allowed.
 - Use should follow standard Altronic Engineering and safety protocols.
 
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 
For questions or support, contact Altronic Support [Altronic.Support@hoerbiger.com] or visit [https://www.altronic-llc.com/].
 
© 2025 Altronic, LLC. All rights reserved.
 


