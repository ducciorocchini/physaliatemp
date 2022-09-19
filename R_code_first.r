# This is the first script for the course

library(raster)

# Set the working directory
setwd("~/lab/data_book/raster_data/final/") # Linux 
# setwd("C:/lab/")  # windows
# setwd("/Users/name/lab/") # mac

l2011 <- brick("p224r63_2011.grd")

l2011
# crs        : +proj=utm +zone=22 +datum=WGS84 +units=m +no_defs 

plot(l2011)


