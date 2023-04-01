library(xml2)

url <- paste0("https://traffic.ls.hereapi.com/traffic/6.2/flow.xml?apiKey=", Sys.getenv("HERE"), "&bbox=44.5414092689562,25.9666736896155;44.3342474501834,26.2255725292719&responseattributes=sh,fc")
xml2::download_xml(url, file=paste0("data/", Sys.time(), ".xml"))
