library(hereR)
library(sf)
print(Sys.getenv("HERE"))

bucharest <- read_sf(here::here("bucharest.geojson"))
hereR::set_key("clXxRYVvCcsgW6wEUpPDAOQKGKsCH6WL6pLKpd0-pug")

x <- hereR::flow(aoi=bucharest)
x <- x[,1:10, drop=T]
write.csv(x, paste0("data/", Sys.time(), ".csv"))
