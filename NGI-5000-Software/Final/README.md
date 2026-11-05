# NGI-5000 Software — Final

Validated and approved releases. A Final release contains only Final files.

Each release folder holds the files meant to be installed together. Release notes (`README-NGI-5000-<component>-<version>-RN.txt`) are included for each file that is new in that release; files carried over from an earlier release are listed under *Release details* with a link to the release holding their notes. The *Release Kind* inside each notes file gives the stage of that individual file. Where a release includes the CIU .hex file, it is in a `CIU Manual Update` folder together with `Uploader.bat`. A dash (—) means the release has no file for that component; keep the version already installed.

See the [NGI-5000-Software README](../README.md) for how releases are numbered and which components apply to Legacy mode and Full System.

## Releases

| Release | Date | Logic CM4 | Logic ST | DCPM CM4 | CIU |
|---|---|---|---|---|---|
| [1.0.0](1.0.0) | 2023-12-13 | 1.1 | 10-11-23 | — | — |
| [1.1.0](1.1.0) | 2024-03-26 | 1.4 | 1-9-24 | — | — |
| [1.1.1](1.1.1) | 2024-10-04 | 1.4 | 1.4.1 | — | — |
| [1.1.2](1.1.2) | 2025-01-24 | 1.4.2 | 1.4.1 | — | — |
| [2.0.0](2.0.0) | 2024-10-04 | 2.0.3 (image, .deb) | 2.0.0 | — | — |
| [2.0.1](2.0.1) | 2025-01-21 | 2.0.4 | 2.0.0 | — | — |
| [2.0.2](2.0.2) | 2025-02-17 | 2.0.4 | 2.0.1 | — | — |
| [2.0.3](2.0.3) | 2025-04-25 | 2.0.4 | 2.0.2 | — | — |

## Release details

* **2.0.3** — Adds ST 2.0.2 (uploaded as RC, promoted to Final 2025-05-02 under ECN250042).
    * Carried over from earlier releases: Logic CM4 2.0.4 (notes in [Final/2.0.1](../Final/2.0.1))
* **2.0.2** — Adds ST 2.0.1 (uploaded as RC, promoted to Final 2025-03-21).
    * Carried over from earlier releases: Logic CM4 2.0.4 (notes in [Final/2.0.1](../Final/2.0.1))
* **2.0.1** — Adds Logic CM4 2.0.4 (uploaded as RC, promoted to Final 2025-03-21).
    * Carried over from earlier releases: Logic ST 2.0.0 (notes in [Final/2.0.0](../Final/2.0.0))
* **2.0.0** — First 2.X.X release. Includes the CM4 2.0.3 image needed to move a Logic Module from 1.4.X to 2.X.X.
* **1.1.2** — Adds Logic CM4 1.4.2 (uploaded as RC, promoted to Final 2025-03-21).
    * Carried over from earlier releases: Logic ST 1.4.1 (notes in [Final/1.1.1](../Final/1.1.1))
* **1.1.1** — Adds ST 1.4.1 (documented for the released CM4 1.4).
    * Carried over from earlier releases: Logic CM4 1.4 (notes in [Final/1.1.0](../Final/1.1.0))
* **1.1.0** — Logic CM4 1.4 and ST 1-9-24 were uploaded together; each is documented for use with the other.
* **1.0.0** — Earliest files available. Logic CM4 1.1 is documented to work with ST 10-11-23.

## Note on Logic CM4 2.3.1

Logic Module CM4 2.3.1 is a Final file, but its release notes state it is intended for use with Logic ST 2.2.1, DCPM CM4 1.2.3 and CIU 1.1.0, which are still release candidates. It is therefore released in [RC/2.3.2](../RC/2.3.2) until those files are promoted.
