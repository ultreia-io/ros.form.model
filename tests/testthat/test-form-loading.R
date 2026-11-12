test_that("every advertised form and version loads its matching definition", {
  for (form_name in ROS_FORMS) {
    for (form_version in ROS_FORM_VERSIONS) {
      form_definition <- ros_form(form_name, form_version)
      form_identity <- form.model::form_metadata(form_definition)$form
      expect_s3_class(form_definition, "form_model")
      expect_identical(form_identity$id, form_name)
      expect_identical(form_identity$version, form_version)
    }
  }
})

test_that("packaged definitions match the advertised form and version combinations", {
  model_directory <- system.file("models", package = "ros.form.model")
  packaged_definitions <- list.files(model_directory, pattern = "-form[.]yaml$", recursive = TRUE)
  expected_definitions <- unlist(lapply(ROS_FORM_VERSIONS, function(form_version) {
    paste0(form_version, "/", ROS_FORMS, "-form.yaml")
  }))
  expect_setequal(packaged_definitions, expected_definitions)
})

test_that("an explicit supported form and version are required", {
  expect_error(ros_form(ROS_FORM_LL), "explicit ROS data-model version")
  for (form_name in list("unknown", NA_character_, character(), c("ll", "ps"), 1)) {
    expect_error(ros_form(form_name, ROS_FORM_VERSION_4_2_0), "Unknown ROS form name")
  }
  for (form_version in list("0.0.0", NA_character_, character(), c("3.3.0", "4.2.0"), 1)) {
    expect_error(ros_form(ROS_FORM_LL, form_version), "Unsupported ROS data-model version")
  }
})
