library(hereR)
library(sf)

bucharest <- read_sf(here::here("bucharest.geojson"))
hereR::set_key(Sys.getenv("HERE"))

x <- hereR::flow(aoi=bucharest)
x <- x[,1:10, drop=T]
write.csv(x, paste0(Sys.time(), ".csv"))
