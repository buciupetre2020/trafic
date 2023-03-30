library(hereR)
library(sf)
library(geojsonio)

bucharest <- read_sf(here::here("bucharest.geojson"))

hereR::set_key(Sys.getenv("HERE"))

x <- hereR::flow(aoi=bucharest)


sf::write_sf(x, paste0("data/", Sys.time(), ".geojson"))
