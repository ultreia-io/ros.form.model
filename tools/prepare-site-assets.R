# Require the package root before preparing generated website assets.
if (!dir.exists("inst/models") || !file.exists("LICENSE"))
  stop("Run Rscript tools/prepare-site-assets.R from the package root.", call. = FALSE)

# Replace generated assets so removed form models cannot remain in the site input.
website_assets <- "pkgdown/assets"
unlink(website_assets, recursive = TRUE)
dir.create(website_assets, recursive = TRUE, showWarnings = FALSE)

# Copy form model definitions and the licence without changing their contents.
if (!all(file.copy(c("inst/models", "LICENSE"), website_assets, recursive = TRUE)))
  stop("Could not prepare website downloads.", call. = FALSE)
