## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(spacey)

## ---- echo=FALSE--------------------------------------------------------------
knitr::include_graphics(pkgload::package_file("man/figures/README-johns_brook_basic-1.png"))

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics(pkgload::package_file("man/figures/README-johns_brook_overlay-1.png"))

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics(pkgload::package_file("man/figures/README-johns_brook_3d-1.png"))

## -----------------------------------------------------------------------------
get_centroid_bounding_box(c(
  "lat" = 44.121268,
  "lng" = -73.903734
),
distance = 10
)

## -----------------------------------------------------------------------------
df <- data.frame(
  lat = c(44.05771, 44.18475),
  lng = c(-73.99212, -73.81515)
)

get_coord_bounding_box(df$lat, df$lng)

## -----------------------------------------------------------------------------
get_centroid(df$lat, df$lng)

get_centroid_bounding_box(get_centroid(df$lat, df$lng), 10)

## ---- echo=FALSE--------------------------------------------------------------
knitr::include_graphics(pkgload::package_file("man/figures/README-johns_brook_basic-1.png"))

