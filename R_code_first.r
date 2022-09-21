# This is the first script for the course

library(raster)

# Set the working directory
setwd("~/lab/data_book/raster_data/final/") # Linux 
# setwd("C:/lab/")  # windows
# setwd("/Users/name/lab/") # mac

l2011 <- brick("p224r63_2011.grd")
l1988 <- brick("p224r63_1988.grd")

l2011
# crs        : +proj=utm +zone=22 +datum=WGS84 +units=m +no_defs 

plot(l2011)

#b1 = blue
#b2 = green
#b3 = red
#b4 = nir
#b5 = swir
#b6 = thermal ir (res. 60m)
#b7 = swir

cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(l2011, col=cl)

plot(l2011$B1_sre, col=cl)
plot(l2011[[1]], col=cl)

clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011[[1]], col=clb)

par(mfrow=c(2,2)) # the first number is the number of rows in the multiframe, while the second one is the mnumber of columns
plot(l2011[[1]], col=cl)
plot(l2011[[2]], col=cl)
plot(l2011[[3]], col=cl)
plot(l2011[[4]], col=cl)
dev.off()

plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")  # natural colours
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=3, g=4, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=3, g=2, b=4, stretch="Lin")  # false colours

par(mfrow=c(2,1)) # the first number is the number of rows in the multiframe, while the second one is the mnumber of columns
plotRGB(l1988, r=4, g=3, b=2, stretch="Lin")  # false colours
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")  # false colours










