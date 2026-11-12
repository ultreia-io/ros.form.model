# ros.form.model

[![Build](https://img.shields.io/github/actions/workflow/status/ultreia-io/ros.form.model/Build.yaml?branch=develop&label=Build&logo=githubactions&logoColor=white)](https://github.com/ultreia-io/ros.form.model/actions/workflows/Build.yaml?query=branch%3Adevelop)
[![Website](https://img.shields.io/badge/website-documentation-blue?logo=readthedocs&logoColor=white)](https://ultreia-io.github.io/ros.form.model/index.html)
[![License](https://img.shields.io/badge/license-GPL--3-blue?logo=gnu&logoColor=white)](https://github.com/ultreia-io/ros.form.model/blob/main/LICENSE)

[![Latest release](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.github.com%2Frepos%2Fultreia-io%2Fros.form.model%2Freleases%2Flatest&query=%24.tag_name&label=Latest%20release&color=blue&logo=github&logoColor=white)](https://github.com/ultreia-io/ros.form.model/releases/latest)
![CRAN release](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fcrandb.r-pkg.org%2Fros.form.model&query=%24.Version&label=CRAN%20release&color=brightgreen&logo=r&logoColor=white)

[![Coverage develop](https://img.shields.io/codecov/c/github/ultreia-io/ros.form.model/develop?label=coverage%20develop&logo=codecov)](https://app.codecov.io/gh/ultreia-io/ros.form.model/tree/develop)
[![Coverage main](https://img.shields.io/codecov/c/github/ultreia-io/ros.form.model/main?label=coverage%20main&logo=codecov)](https://app.codecov.io/gh/ultreia-io/ros.form.model/tree/main)

## About this project

> `ros.form.model` supplies versioned ROS form models for consumers of longline and purse-seine data.

Read the [Terminology](https://ultreia-io.github.io/ros.form.model/articles/terminology.html) for the concepts used here.

A ROS form is an Excel workbook used to report observations to the Indian Ocean Tuna Commission.

Its form model describes the expected sheets, fields, cell locations, keys and constraints in YAML.

This package provides LL and PS definitions for versions 3.3.0, 4.0.0, 4.1.0 and 4.2.0.

Consumers select an explicit gear and version, then inspect the definition through `form.model`.

Exporters, importers and validators can share the same definition without maintaining their own workbook layouts.

## Related packages

* [form.model](https://github.com/ultreia-io/form.model) reads and checks the form definitions.
* [ros.form.references](https://github.com/ultreia-io/ros.form.references) supplies ROS catalogues and lookup policies.
* [ros.form.validation](https://github.com/ultreia-io/ros.form.validation) validates submitted forms and produces reports.

## Installation

Install the latest version available on CRAN:

```r
# Install ros.form.model from CRAN.
install.packages("ros.form.model")
```

Alternatively, install the latest GitHub release:

```r
# Install the package installer once.
install.packages("pak")
# Install the latest released ros.form.model package.
pak::pak("ultreia-io/ros.form.model@*release")
```

For the development version:

```r
# Install ros.form.model from the development branch.
pak::pak("ultreia-io/ros.form.model@develop")
```

## Getting started

Follow the [Getting started guide](https://ultreia-io.github.io/ros.form.model/articles/ros.form.model.html) to inspect a form model.

## Guides

* [ROS reference data](https://ultreia-io.github.io/ros.form.model/articles/reference-data.html).
* [Function reference](https://ultreia-io.github.io/ros.form.model/reference/index.html).
* [Contributing](https://ultreia-io.github.io/ros.form.model/CONTRIBUTING.html).
* [Maintainer guide](https://ultreia-io.github.io/ros.form.model/DEVELOPMENT.html).
