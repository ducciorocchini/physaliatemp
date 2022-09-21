library(raster)

# Set the working directory
setwd("~/lab/") # Linux 
# setwd("C:/lab/")  # windows
# setwd("/Users/name/lab/") # mac

l1992 <- brick("defor1.jpg")
l2006 <- brick("defor2.jpg")

# layer1 = nir (Red channel of RGB)
# layer2 = red
# layer3 = green

plotRGB(l1992, r=1, g=2, b=3, stretch="lin")

par(mfrow=c(2,1))
plotRGB(l1992, r=1, g=2, b=3, stretch="lin")
plotRGB(l2006, r=1, g=2, b=3, stretch="lin")

dvi1992 <- l1992[[1]] - l1992[[2]]
cl <- colorRampPalette(c('darkblue','yellow','red','black'))(100) # specifying a color scheme
plot(dvi1992, col=cl)

dvi2006 <- l2006[[1]] - l2006[[2]]
plot(dvi2006, col=cl)

par(mfrow=c(2,1))
plot(dvi1992, col=cl)
plot(dvi2006, col=cl)

dvidif <- dvi1992 - dvi2006 # the higher the value the higher the difference

cld <- colorRampPalette(c('blue','white','red'))(100) 
plot(dvidif, col=cld)
