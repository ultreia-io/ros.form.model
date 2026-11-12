# ros.form.model 0.4.0

* Bind model references to named catalogue lookups configured in `ros.form.references`.
* Add optional keys and row completeness constraints to LL sheets.
* Require `form.model` 0.6.2 from CRAN.
* [tests] Check every supported ROS form and version.
* [docs] Add Getting started and Terminology guides, model downloads and author details.
* [build] Add full CRAN checks, shared CI caches and Codecov coverage.
* [build] Submit the checked GitHub release archive to CRAN with duplicate protection.
* [build] Use standard pkgdown builds with prepared site assets.

# ros.form.model 0.3.0

* Add LL 4.2.0 fields for buoy counts, floatline lengths and branchline distance.
* Update LL 4.2.0 mitigation fields and PS 4.2.0 specimen fields.
* Correct form version declarations for LL and PS 4.1.0 and 4.2.0.

# ros.form.model 0.2.0

* Define primary keys for ROS table sheets.
* Declare code lists and registries separately, with field-level checks in all six models.
* Align the V4 data-source reference with the IOTC catalogue.
* Document the code-list and registry inventory.
* Update `form.model` from 0.3.1 to 0.4.0.

# ros.form.model 0.1.1

* Update dependency from `form.model` 0.3.0 to 0.3.1.
* Prepare for CRAN submission: include generated help, preserve the vignette index and update maintainer details.
* Improve website branding, GitHub navigation and contributor guidance.
* Update Linux CI containers and website dependency caching.

# ros.form.model 0.1.0

* Provide LL and PS form definitions for versions 3.3.0, 4.0.0 and 4.1.0.
* Describe sheets, fields, cell locations and validation constraints.
* Load and inspect definitions using `form.model` 0.3.0.
* Provide usage guides and automated releases.
