# NGI-5000 Software — Release Candidate (RC)

Release candidates. An RC release contains the latest Final and RC files, so it can include files that are already Final on their own.

Each release folder holds the files meant to be installed together. Release notes (`README-NGI-5000-<component>-<version>-RN.txt`) are included for each file that is new in that release; files carried over from an earlier release are listed under *Release details* with a link to the release holding their notes. The *Release Kind* inside each notes file gives the stage of that individual file. Where a release includes the CIU .hex file, it is in a `CIU Manual Update` folder together with `Uploader.bat`. A dash (—) means the release has no file for that component; keep the version already installed.

See the [NGI-5000-Software README](../README.md) for how releases are numbered and which components apply to Legacy mode and Full System.

## Releases

| Release | Date | Logic CM4 | Logic ST | DCPM CM4 | CIU |
|---|---|---|---|---|---|
| [2.0.4](2.0.4) | 2025-05-13 | 2.0.4 | 2.0.3 | — | — |
| [2.0.5](2.0.5) | 2025-05-14 | 2.0.4 | 2.0.4 | — | — |
| [2.2.0](2.2.0) | 2025-10-02 | 2.2.1 | 2.1.0 | 1.2.2 | — |
| [2.2.1](2.2.1) | 2026-03-25 | 2.2.2 | 2.1.0 | 1.2.2 | — |
| [2.3.0](2.3.0) | 2026-05-08 | 2.3.0 | 2.2.1 | 1.2.3 | 1.1.0 (.ciu) |
| [2.3.1](2.3.1) | 2026-05-15 | 2.3.0 | 2.2.1 | 1.2.3 | 1.1.0 (.ciu, .hex) |
| [2.3.2](2.3.2) | 2026-09-21 | 2.3.1 | 2.2.1 | 1.2.3 | 1.1.0 (.ciu, .hex) |

## Release details

* **2.3.2** — Adds Logic CM4 2.3.1 (a Final file). It is intended for use with ST 2.2.1, DCPM 1.2.3 and CIU 1.1.0, which are still RC, so it cannot be part of a Final release yet.
    * Carried over from earlier releases: Logic ST 2.2.1 (notes in [RC/2.3.0](../RC/2.3.0)); DCPM CM4 1.2.3 (notes in [RC/2.3.0](../RC/2.3.0)); CIU 1.1.0 (.ciu) (notes in [RC/2.3.0](../RC/2.3.0)); CIU 1.1.0 (.hex) (notes in [RC/2.3.1](../RC/2.3.1))
* **2.3.1** — Adds the CIU 1.1.0 .hex file and Uploader.bat for direct programming (in the CIU Manual Update folder).
    * Carried over from earlier releases: Logic CM4 2.3.0 (notes in [RC/2.3.0](../RC/2.3.0)); Logic ST 2.2.1 (notes in [RC/2.3.0](../RC/2.3.0)); DCPM CM4 1.2.3 (notes in [RC/2.3.0](../RC/2.3.0)); CIU 1.1.0 (.ciu) (notes in [RC/2.3.0](../RC/2.3.0))
* **2.3.0** — Logic CM4 2.3.0 (2026-05-07), DCPM 1.2.3 and CIU 1.1.0 (2026-05-08) combined into one release. Logic CM4 2.3.0 is intended for use with ST 2.2.1 and DCPM 1.2.3.
* **2.2.1** — Adds Logic CM4 2.2.2. ST 2.1.0 is used because its notes cover CM4 2.2.1 and later; no notes confirm ST 2.2.1 with CM4 2.2.X.
    * Carried over from earlier releases: Logic ST 2.1.0 (notes in [RC/2.2.0](../RC/2.2.0)); DCPM CM4 1.2.2 (notes in [RC/2.2.0](../RC/2.2.0))
* **2.2.0** — Logic CM4 2.2.1, ST 2.1.0 and DCPM 1.2.2 were uploaded together and are documented as used together. ST 2.1.0 requires CM4 2.2.1+ and DCPM 1.2.2+.
* **2.0.5** — Adds ST 2.0.4 RC. Uploaded one day after ST 2.0.3; kept as its own release so both remain available.
    * Carried over from earlier releases: Logic CM4 2.0.4 (notes in [Final/2.0.1](../Final/2.0.1))
* **2.0.4** — Adds ST 2.0.3 RC.
    * Carried over from earlier releases: Logic CM4 2.0.4 (notes in [Final/2.0.1](../Final/2.0.1))
