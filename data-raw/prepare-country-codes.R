


js <- jsonlite::read_json("data-raw/country-flags/countries.json")
country_codes <- dplyr::tibble(ccode = tolower(names(js)), country = unname(unlist(js)))

usethis::use_data(country_codes, internal = FALSE, overwrite = FALSE)
