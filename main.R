library(hereR)
library(sf)

bucharest <- read_sf(here::here("bucharest.geojson"))

hereR::set_key(Sys.getenv("HERE"))

x <- hereR::flow(aoi=bucharest)

print(paste0("data/", Sys.time(), ".csv"))

write.csv(x, paste0("data/", Sys.time(), ".csv"))
