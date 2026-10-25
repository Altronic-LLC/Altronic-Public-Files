# NGI-5000 Software

Software and firmware updates for the NGI-5000, grouped into releases. Each release folder contains a set of files intended to be installed together, plus release notes for each file that is new in that release. Notes for a file carried over from an earlier release are in the release where it first appeared (see the stage READMEs).

For update procedures, see Section 7.1 (Updating Firmware and Software) of the [NGI-5000 Operating Instructions](https://www.altronic-llc.com/wp-content/uploads/NGI-5000_OM_03-26.pdf#page=37).

## System Components

| Component | Legacy mode | Full System | Files |
|---|---|---|---|
| Logic Module CM4 (Logic CM4) | Yes | Yes | `.zip` update package (1.X.X), `.zip` CM4 image (2.0.3), `.deb` package (2.X.X) |
| Logic Module ST micro (Logic ST) | Yes | Yes | `.bin` binary file |
| DCPM CM4 | — | Yes | `.deb` package |
| DCPM Power micro | — | Yes | `.dcpm` (config tool update manager) |
| CIU micro | — | Yes | `.ciu` (config tool update manager) or `.hex` with `Uploader.bat` |

The same Logic Module software and firmware is used in both modes. In Legacy mode, only the Logic CM4 and Logic ST files in a release apply.

## Folder Layout

```
NGI-5000-Software/
├── Final/        validated releases (Final files only)
├── RC/           release candidates (latest Final + RC files)
└── PR/           preview releases (latest Final + RC + PR files)
    └── <release version>/
        ├── <software / firmware files>
        ├── README-NGI-5000-<component>-<version>-RN.txt   (one per file new in this release)
        └── CIU Manual Update/   (CIU .hex + Uploader.bat, where included)
```

Older releases stay in their stage folder, and the highest release version is the newest.

## Release version numbers

Release folders have their own version number, separate from the versions of the files inside them:

* **Major** matches the Logic Module software major version. `1.X.X` releases contain Logic 1.X.X software (Logic ST 1.4.X and earlier). `2.X.X` releases contain Logic 2.X.X software with DCPM and CIU 1.X.X.
* **Minor** increases when a release adds features. 
* **Bug** increases for bug fixes or packaging-only additions.
* Release numbers are unique across Final, RC and PR, so a number always identifies one release.

Not every release contains every component. Early releases in particular may not include a component if no update for it existed yet; keep the version already installed on the unit.

## Upgrade notes

* Updating anything from 1.4.X to 2.X.X requires reimaging the CM4. The image (`NGI-5000-Logic-CM4-2.0.3.zip`, about 1.56 GB) is in [Final/2.0.0](Final/2.0.0). After that, later 2.X.X `.deb` packages can be installed without reimaging.
* Updating 1.4.X to 1.4.Y uses the old way of updating the CM4 (transfer the zip to the Logic Module desktop still zipped, unzip, and double click the `.sh` file).
* From release 2.2.0 onward, update the ST first, then the Logic Module CM4 and finally the DCPM CM4 (per the DCPM CM4 1.2.2 release notes).
* Logic ST 2.0.0 loads default settings in place of the configured settings. Record the configured settings before updating so they can be re-entered.

## Latest releases

| Stage | 1.X.X | 2.X.X |
|---|---|---|
| Final | 1.1.2 | 2.0.3 |
| RC | — | 2.3.2 |
| PR | — | 2.1.0 |

PR 2.1.0 predates RC 2.2.0 and later; those RC releases contain newer Logic CM4 software.

## All releases

| Release | Stage | Date | Logic CM4 | Logic ST | DCPM CM4 | CIU |
|---|---|---|---|---|---|---|
| [1.0.0](Final/1.0.0) | Final | 2023-12-13 | 1.1 | 10-11-23 | — | — |
| [1.1.0](Final/1.1.0) | Final | 2024-03-26 | 1.4 | 1-9-24 | — | — |
| [1.1.1](Final/1.1.1) | Final | 2024-10-04 | 1.4 | 1.4.1 | — | — |
| [1.1.2](Final/1.1.2) | Final | 2025-01-24 | 1.4.2 | 1.4.1 | — | — |
| [2.0.0](Final/2.0.0) | Final | 2024-10-04 | 2.0.3 (image, .deb) | 2.0.0 | — | — |
| [2.0.1](Final/2.0.1) | Final | 2025-01-21 | 2.0.4 | 2.0.0 | — | — |
| [2.0.2](Final/2.0.2) | Final | 2025-02-17 | 2.0.4 | 2.0.1 | — | — |
| [2.0.3](Final/2.0.3) | Final | 2025-04-25 | 2.0.4 | 2.0.2 | — | — |
| [2.0.4](RC/2.0.4) | RC | 2025-05-13 | 2.0.4 | 2.0.3 | — | — |
| [2.0.5](RC/2.0.5) | RC | 2025-05-14 | 2.0.4 | 2.0.4 | — | — |
| [2.1.0](PR/2.1.0) | PR | 2025-08-29 | 2.1.0 | 2.0.4 | — | — |
| [2.2.0](RC/2.2.0) | RC | 2025-10-02 | 2.2.1 | 2.1.0 | 1.2.2 | — |
| [2.2.1](RC/2.2.1) | RC | 2026-03-25 | 2.2.2 | 2.1.0 | 1.2.2 | — |
| [2.3.0](RC/2.3.0) | RC | 2026-05-08 | 2.3.0 | 2.2.1 | 1.2.3 | 1.1.0 (.ciu) |
| [2.3.1](RC/2.3.1) | RC | 2026-05-15 | 2.3.0 | 2.2.1 | 1.2.3 | 1.1.0 (.ciu, .hex) |
| [2.3.2](RC/2.3.2) | RC | 2026-09-21 | 2.3.1 | 2.2.1 | 1.2.3 | 1.1.0 (.ciu, .hex) |

Stage READMEs with per-release details: [Final](Final/README.md) · [RC](RC/README.md) · [PR](PR/README.md)
