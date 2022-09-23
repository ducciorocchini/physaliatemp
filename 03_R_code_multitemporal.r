# Multitemporal analysis in R

setwd("~/lab/greenland/")

lst_2000 <- raster("lst_2000.tif")

# import all the data
rlist <- list.files(pattern="lst")
import <- lapply(rlist,raster)

TGr <- stack(import)
TGr
plot(TGr)

plotRGB(TGr, 1, 2, 4, stretch="Lin") 

# European Nitrogen (EN) example
setwd("~/lab/en") # Linux

rlist <- list.files(pattern="EN") # if you set wd, no additional problems with path
import <- lapply(rlist,raster)
en <- stack(import)

cl <- colorRampPalette(c('red','orange','yellow'))(100) # 
plot(en, col=cl)

plotRGB(en, 1, 3, 13, stretch="Lin")
plotRGB(en, 1, 3, 13, stretch="Hist")

difen <-  en[[1]] - en[[13]]
cldif <- colorRampPalette(c('blue','white','red'))(100) # 
plot(difen, col=cldif)




