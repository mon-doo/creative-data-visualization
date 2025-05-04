#Script

library(xml2)
library(XML)
dat <- read_xml("https://raw.githubusercontent.com/mon-doo/creative-data-visualization/refs/heads/main/DOC0002.XML")
dat <- xmlParse(dat, useInternalNodes=TRUE, 
                addAttributeNamespaces=TRUE)
procedure_list <- getNodeSet(dat, "//ClinicalDocument/component/structuredBody/component/section/entry/organizer/component/act")
dat2 <- xmlToDataFrame(dat, nodes = procedure_list, homogenous = FALSE)
dat2 <- xmlToDataFrame(dat2)

