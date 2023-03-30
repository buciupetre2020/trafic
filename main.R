library(hereR)
library(sf)
library(geojson)
bucharest <- read_sf(here::here("bucharest.geojson"))

hereR::set_key(Sys.getenv("HERE"))

x <- hereR::flow(aoi=bucharest)

geojson::geo_write(x, paste0("data/", Sys.time(), ".geojson"))
