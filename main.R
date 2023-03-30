library(hereR)
library(sf)
library(geojsonsf)
library(geojson)
bucharest <- read_sf(here::here("bucharest.geojson"))

hereR::set_key(Sys.getenv("HERE"))

x <- hereR::flow(aoi=bucharest)

x <- geojsonsf::sf_geojson(x)
geo_write(x, paste0("data/", Sys.time(), ".geojson"))
