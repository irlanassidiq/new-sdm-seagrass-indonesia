library(readxl)  # install.packages("readxl") or install.packages("tidyverse")
library(plyr)
library(tibble)


# Thalassia hemprichii
th_west <- read_excel("D:/Project/true data/TH/filtered/Thalassia hemprichii.xlsx", sheet = "West")
th_east <- read_excel("D:/Project/true data/TH/filtered/Thalassia hemprichii.xlsx", sheet = "East")

# Thinnning
library('spThin')
## Thinning for 4 km
### West
th.west.thin4 <- thin(th_west, lat.col = "decimalLat", long.col = "decimalLon", 
              spec.col = "species", 
              thin.par = 4, #4 km
              reps = 25, 
              locs.thinned.list.return = T,
              write.files = F, 
              write.log.file = F)
th.west.thin4

plotThin(th.west.thin4)
View(th.west.thin4[[25]]) #80 occurences
write.csv(th.west.thin4[25],"D:/Project/th west 4.csv", row.names = T)

### East
th.east.thin4 <- thin(th_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
th.east.thin4

plotThin(th.east.thin4)
View(th.east.thin4[[25]]) #159 occurences
write.csv(th.east.thin4[25],"D:/Project/th east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
th.west.thin9 <- thin(th_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
th.west.thin9

plotThin(th.west.thin9)
View(th.west.thin9[[25]]) #60 occurences
write.csv(th.west.thin9[25],"D:/Project/th west 9.csv", row.names = T)

### East
th.east.thin9 <- thin(th_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
th.east.thin9

plotThin(th.east.thin9)
View(th.east.thin9[[25]]) #108 occurences
write.csv(th.east.thin9[25],"D:/Project/th east 9.csv", row.names = T)
#====================================================================================================================================

# Thalassodendron ciliatum
tc_west <- read_excel("D:/Project/true data/TC/filter/Thalassodendron ciliatum.xlsx", sheet = "West")
tc_east <- read_excel("D:/Project/true data/TC/filter/Thalassodendron ciliatum.xlsx", sheet = "East")

# Thinnning
## Thinning for 4 km
### West
tc.west.thin4 <- thin(tc_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
tc.west.thin4

plotThin(tc.west.thin4)
View(tc.west.thin4[[25]]) #10 occurences
write.csv(tc.west.thin4[25],"D:/Project/tc west 4.csv", row.names = T)

### East
tc.east.thin4 <- thin(tc_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
tc.east.thin4

plotThin(tc.east.thin4)
View(tc.east.thin4[[25]]) #159 occurences
write.csv(tc.east.thin4[25],"D:/Project/tc east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
tc.west.thin9 <- thin(tc_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
tc.west.thin9

plotThin(tc.west.thin9)
View(tc.west.thin9[[25]]) #60 occurences
write.csv(tc.west.thin9[25],"D:/Project/tc west 9.csv", row.names = T)

### East
tc.east.thin9 <- thin(tc_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
tc.east.thin9

plotThin(tc.east.thin9)
View(tc.east.thin9[[25]]) #108 occurences
write.csv(tc.east.thin9[25],"D:/Project/tc east 9.csv", row.names = T)

#====================================================================================================================================

# Syringodium isoetifolium
si_west <- read_excel("D:/Project/true data/SI/filter/Syringodium isoetifolium.xlsx", sheet = "West")
si_east <- read_excel("D:/Project/true data/SI/filter/Syringodium isoetifolium.xlsx", sheet = "East")

# Thinnning
## Thinning for 4 km
### West
si.west.thin4 <- thin(si_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
si.west.thin4

plotThin(si.west.thin4)
View(si.west.thin4[[25]]) #113 occurences
write.csv(si.west.thin4[25],"D:/Project/si west 4.csv", row.names = T)

### East
si.east.thin4 <- thin(si_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
si.east.thin4

plotThin(si.east.thin4)
View(si.east.thin4[[25]]) #95 occurences
write.csv(si.east.thin4[25],"D:/Project/si east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
si.west.thin9 <- thin(si_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
si.west.thin9

plotThin(si.west.thin9)
View(si.west.thin9[[25]]) #83 occurences
write.csv(si.west.thin9[25],"D:/Project/si west 9.csv", row.names = T)

### East
si.east.thin9 <- thin(si_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
si.east.thin9

plotThin(si.east.thin9)
View(si.east.thin9[[25]]) #72 occurences
write.csv(si.east.thin9[25],"D:/Project/si east 9.csv", row.names = T)

#====================================================================================================================================

# Halodule uninervis
hu_west <- read_excel("D:/Project/true data/HU/filter/Halodule uninervis.xlsx", sheet = "West")
hu_east <- read_excel("D:/Project/true data/HU/filter/Halodule uninervis.xlsx", sheet = "East")

# Thinnning
## Thinning for 4 km
### West
hu.west.thin4 <- thin(hu_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
hu.west.thin4

plotThin(hu.west.thin4)
View(hu.west.thin4[[25]]) #65 occurences
write.csv(hu.west.thin4[25],"D:/Project/hu west 4.csv", row.names = T)

### East
hu.east.thin4 <- thin(hu_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
hu.east.thin4

plotThin(hu.east.thin4)
View(hu.east.thin4[[25]]) #71 occurences
write.csv(hu.east.thin4[25],"D:/Project/hu east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
hu.west.thin9 <- thin(hu_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
hu.west.thin9

plotThin(hu.west.thin9)
View(hu.west.thin9[[25]]) #52 occurences
write.csv(hu.west.thin9[25],"D:/Project/hu west 9.csv", row.names = T)

### East
hu.east.thin9 <- thin(hu_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
hu.east.thin9

plotThin(hu.east.thin9)
View(hu.east.thin9[[25]]) #52 occurences
write.csv(hu.east.thin9[25],"D:/Project/hu east 9.csv", row.names = T)

#====================================================================================================================================

# Halodule pinifolia
hp_west <- read_excel("D:/Project/true data/HP/filter/Halodule pinifolia.xlsx", sheet = "West")
hp_east <- read_excel("D:/Project/true data/HP/filter/Halodule pinifolia.xlsx", sheet = "East")

# Thinnning
## Thinning for 4 km
### West
hp.west.thin4 <- thin(hp_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
hp.west.thin4

plotThin(hp.west.thin4)
View(hp.west.thin4[[25]]) #30 occurences
write.csv(hp.west.thin4[25],"D:/Project/hp west 4.csv", row.names = T)

### East
hp.east.thin4 <- thin(hp_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
hp.east.thin4

plotThin(hp.east.thin4)
View(hp.east.thin4[[25]]) #53 occurences
write.csv(hp.east.thin4[25],"D:/Project/hp east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
hp.west.thin9 <- thin(hp_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
hp.west.thin9

plotThin(hp.west.thin9)
View(hp.west.thin9[[25]]) #26 occurences
write.csv(hp.west.thin9[25],"D:/Project/hp west 9.csv", row.names = T)

### East
hp.east.thin9 <- thin(hp_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
hp.east.thin9

plotThin(hp.east.thin9)
View(hp.east.thin9[[25]]) #44 occurences
write.csv(hp.east.thin9[25],"D:/Project/hp east 9.csv", row.names = T)

#====================================================================================================================================

# Halophila ovalis 
ho_west <- read_excel("D:/Project/true data/HO/filter/Halophila ovalis.xlsx", sheet = "West")
ho_east <- read_excel("D:/Project/true data/HO/filter/Halophila ovalis.xlsx", sheet = "East")

# Thinnning
## Thinning for 4 km
### West
ho.west.thin4 <- thin(ho_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
ho.west.thin4

plotThin(ho.west.thin4)
View(ho.west.thin4[[25]]) #57 occurences
write.csv(ho.west.thin4[25],"D:/Project/ho west 4.csv", row.names = T)

### East
ho.east.thin4 <- thin(ho_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
ho.east.thin4

plotThin(ho.east.thin4)
View(ho.east.thin4[[25]]) #71 occurences
write.csv(ho.east.thin4[25],"D:/Project/ho east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
ho.west.thin9 <- thin(ho_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
ho.west.thin9

plotThin(ho.west.thin9)
View(ho.west.thin9[[25]]) #43 occurences
write.csv(ho.west.thin9[25],"D:/Project/ho west 9.csv", row.names = T)

### East
ho.east.thin9 <- thin(ho_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
ho.east.thin9

plotThin(ho.east.thin9)
View(ho.east.thin9[[25]]) #49 occurences
write.csv(ho.east.thin9[25],"D:/Project/ho east 9.csv", row.names = T)

#====================================================================================================================================

# Enhalus acoroides 
ea_west <- read_excel("D:/Project/true data/EA/filtered/Enhalus acoroides.xlsx", sheet = "West")
ea_east <- read_excel("D:/Project/true data/EA/filtered/Enhalus acoroides.xlsx", sheet = "East")

# Thinnning
## Thinning for 4 km
### West
ea.west.thin4 <- thin(ea_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
ea.west.thin4

plotThin(ea.west.thin4)
View(ea.west.thin4[[25]]) #68 occurences
write.csv(ea.west.thin4[25],"D:/Project/ea west 4.csv", row.names = T)

### East
ea.east.thin4 <- thin(ea_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
ea.east.thin4

plotThin(ea.east.thin4)
View(ea.east.thin4[[25]]) #141 occurences
write.csv(ea.east.thin4[25],"D:/Project/ea east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
ea.west.thin9 <- thin(ea_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
ea.west.thin9

plotThin(ea.west.thin9)
View(ea.west.thin9[[25]]) #49 occurences
write.csv(ea.west.thin9[25],"D:/Project/ea west 9.csv", row.names = T)

### East
ea.east.thin9 <- thin(ea_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
ea.east.thin9

plotThin(ea.east.thin9)
View(ea.east.thin9[[25]]) #95 occurences
write.csv(ea.east.thin9[25],"D:/Project/ea east 9.csv", row.names = T)

#====================================================================================================================================

# Cymodocea serrulata 
cs_west <- read_excel("D:/Project/true data/CS/filtered/Cymodocea serrulata.xlsx", sheet = "West")
cs_east <- read_excel("D:/Project/true data/CS/filtered/Cymodocea serrulata.xlsx", sheet = "East")

# Thinnning
## Thinning for 4 km
### West
cs.west.thin4 <- thin(cs_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
cs.west.thin4

plotThin(cs.west.thin4)
View(cs.west.thin4[[25]]) #48 occurences
write.csv(cs.west.thin4[25],"D:/Project/cs west 4.csv", row.names = T)

### East
cs.east.thin4 <- thin(cs_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
cs.east.thin4

plotThin(cs.east.thin4)
View(cs.east.thin4[[25]]) #54 occurences
write.csv(cs.east.thin4[25],"D:/Project/cs east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
cs.west.thin9 <- thin(cs_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
cs.west.thin9

plotThin(cs.west.thin9)
View(cs.west.thin9[[25]]) #36 occurences
write.csv(cs.west.thin9[25],"D:/Project/cs west 9.csv", row.names = T)

### East
cs.east.thin9 <- thin(cs_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
cs.east.thin9

plotThin(cs.east.thin9)
View(cs.east.thin9[[25]]) #43 occurences
write.csv(cs.east.thin9[25],"D:/Project/cs east 9.csv", row.names = T)

#====================================================================================================================================

# Cymodocea rotundata
cr_west <- read_excel("D:/Project/true data/CR/filter/Cymodocea rotundata.xlsx", sheet = "West")
cr_east <- read_excel("D:/Project/true data/CR/filter/Cymodocea rotundata.xlsx", sheet = "East")

# Thinnning
## Thinning for 4 km
### West
cr.west.thin4 <- thin(cr_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
cr.west.thin4

plotThin(cr.west.thin4)
View(cr.west.thin4[[25]]) #61 occurences
write.csv(cr.west.thin4[25],"D:/Project/cr west 4.csv", row.names = T)

### East
cr.east.thin4 <- thin(cr_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 4, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
cr.east.thin4

plotThin(cr.east.thin4)
View(cr.east.thin4[[25]]) #123 occurences
write.csv(cr.east.thin4[25],"D:/Project/cr east 4.csv", row.names = T)

## Thinning for 9.2 km
### West
cr.west.thin9 <- thin(cr_west, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
cr.west.thin9

plotThin(cr.west.thin9)
View(cr.west.thin9[[25]]) #48 occurences
write.csv(cr.west.thin9[25],"D:/Project/cr west 9.csv", row.names = T)

### East
cr.east.thin9 <- thin(cr_east, lat.col = "decimalLat", long.col = "decimalLon", 
                      spec.col = "species", 
                      thin.par = 9.2, #4 km
                      reps = 25, 
                      locs.thinned.list.return = T,
                      write.files = F, 
                      write.log.file = F)
cr.east.thin9

plotThin(cr.east.thin9)
View(cr.east.thin9[[25]]) #86 occurences
write.csv(cr.east.thin9[25],"D:/Project/cr east 9.csv", row.names = T)

#End




