# NGI-3000 Logic Module Software RELEASE NOTES

README-NGI-3000-Logic-FW-1.2.7-RN.txt

Copyright (c) 2026.
All rights reserved.

Altronic, LLC
712 Trumbull Avenue
Girard, Ohio 44420
United States of America

## Version 1.2.7 Files 

* NGI-3000-Logic-ST_v1.2.7.bin - Binary file used to flash the STMicro on the Logic Module.

## Release Kind

Release Candidate.

## Intended Use and Users

This is the NGI-3000 STM Logic Module firmware package. It contains code for controlling the engine and reporting diagnostics.

It is for use in internal testing and demos.

## What has Changed from Previous Version

N/A.

## What Has Been Fixed

* Increases startup RPM in special features from 200 to 250 to match CPU-95 behavior
* Fault reset key command now clears the fault output
* Open primary warnings can now appear (previously, diagnostic updates never ran for coils w/open primary)
* Extends kV map interpolation down to 0 SDT and past the highest SDT (allows low/0 kV values to appear)

