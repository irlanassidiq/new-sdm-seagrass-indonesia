library('sdm')
library('raster')

#predictors==========================================================================================
# temperature
sstmean_mask60 <- mask(x=temp.sur.mean, mask=depth60)
plot(sstmean_mask60)

sstmax_mask60 <- mask(temp.sur.max, mask=depth60)
plot(sstmax_mask60)

# salinity
sal.sur.mean_mask60 <- mask(sal.sur.mean, mask=depth60)
plot(sal.sur.mean_mask60)

# nitrate
nit.sur.mean_mask60 <- mask(nit.sur.mean, mask=depth60)
plot(nit.sur.mean_mask60)

#phosphate
pho.ben.mean_mask60 <- mask(pho.ben.mean, mask=depth60)
plot(pho.ben.mean_mask60)

#current velocity
cv.ben.mean_mask60 <- mask(cv.ben.mean, mask=depth60)
plot(cv.ben.mean_mask60)

cv.sur.mean_mask60 <- mask(cv.sur.mean, mask=depth60)
plot(cv.sur.mean_mask60)

# diffuse attenuation
da.sur.mean_mask60 <- mask(da.sur.mean, mask=depth60)
plot(da.sur.mean_mask60)

preds_new <- stack(sstmean_mask60, #temperature
                   sstmax_mask60,
                   sal.sur.mean_mask60, #salinity
                   nit.sur.mean_mask60, #Nitrate
                   pho.ben.mean_mask60, #Phosphate
                   cv.sur.mean_mask60, #Current velocity
                   cv.ben.mean_mask60,
                   da.sur.mean_mask60) #Diffuse Attenuation

#Thalassia hemprichii Indonesia======================================================================

# Indonesia
library('sdm')
installAll()
th9.new <- read.csv('D:/Project/true data/th.csv')

th9_occur.new <- data.frame(table(th9.new$lon))

species <- c()
for (i in 1:nrow(th9_occur.new)) {
  species <- c(species, rep(th9_occur.new$Freq[i], th9_occur.new$Freq[i]))
}
th9.new <- cbind(th9.new, species)
th9.new$species[th9.new$species> 0] <- 1
th9.new

# converting data to spatial points dataframe for sdm
class(th9.new)
coordinates(th9.new) <- ~lon + lat
class(th9.new)
head(th9.new)
tail(th9.new)

# Generate pseudo-absences and sdm data preparation
th9.sdm.new <- sdmData(species~., th9.new, predictors = preds_new)

th9.sdm.new# still presence-only, 77 records

# pseudo-absences
th9.preabs.new <- sdmData(species~., th9.new, predictors = preds_new, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

th9.preabs.new # presence-background 1077, 1000 + 77 (pseudo-absences + real presence)

plot(th9.preabs.new)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


th9.hsm.new <- sdm(species~., th9.preabs.new, methods= 'maxent',
                  replication=c('boot'), test.percent=30, n=10)
th9.hsm.new
gui(th9.hsm.new) # AUC test 0.895

th9.id.new <- predict(th9.hsm.new, preds_new)

plot(th9.id.new) # habitat suitability models based on maxent method

th9.en.new <- ensemble(th9.hsm.new, preds_new,
                   setting = list(method='weighted', stat='AUC'))
plot(th9.en.new)
plot(indonesia, add=T)

#Response curve
rcurve(th9.hsm.new)

th_idnew <- getVarImp(th9.hsm.new, id=1:10,wtest='test.dep') # specify the modelIDs of the models

th_idnew

plot(th_idnew,'cor')

#Syringodium isoetifolium Indonesia======================================================

# Indonesia
library('sdm')
installAll()
si9.new <- read.csv('D:/Project/true data/si.csv')

si9_occur.new <- data.frame(table(si9.new$lon))

species <- c()
for (i in 1:nrow(si9_occur.new)) {
  species <- c(species, rep(si9_occur.new$Freq[i], si9_occur.new$Freq[i]))
}
si9.new <- cbind(si9.new, species)
si9.new$species[si9.new$species> 0] <- 1
si9.new #155 records

# converting data to spatial points dataframe for sdm
class(si9.new)
coordinates(si9.new) <- ~lon + lat
class(si9.new)
head(si9.new)
tail(si9.new)

# Generate pseudo-absences and sdm data preparation
si9.sdm.new <- sdmData(species~., si9.new, predictors = preds_new)

si9.sdm.new# still presence-only, 55 records

# pseudo-absences
si9.preabs.new <- sdmData(species~., si9.new, predictors = preds_new, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

si9.preabs.new # presence-background 1055, 1000 + 55 (pseudo-absences + real presence)

plot(si9.preabs.new)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


si9.hsm.new <- sdm(species~., si9.preabs.new, methods= 'maxent',
                  replication=c('boot'), test.percent=30, n=10)
si9.hsm.new
gui(si9.hsm.new) #0.931

si9.id.new <- predict(si9.hsm.new, preds_new)

plot(si9.id.new) # habitat suitability models based on maxent method

si9.en.new <- ensemble(si9.hsm.new, preds_new,
                   setting = list(method='weighted', stat='AUC'))
plot(si9.en.new)
plot(indonesia, add=T)

#Response curve
rcurve(si9.hsm.new)

si_idnew <- getVarImp(si9.hsm.new, id=1:10,wtest='test.dep') # specify the modelIDs of the models

si_idnew

plot(si_idnew,'cor')

#Halodule uninervis Indonesia======================================================

# Indonesia
library('sdm')
installAll()
hu9.new <- read.csv('D:/Project/true data/hu.csv')

hu9_occur.new <- data.frame(table(hu9.new$lon))

species <- c()
for (i in 1:nrow(hu9_occur.new)) {
  species <- c(species, rep(hu9_occur.new$Freq[i], hu9_occur.new$Freq[i]))
}
hu9.new <- cbind(hu9.new, species)
hu9.new$species[hu9.new$species> 0] <- 1
hu9.new #104 records

# converting data to spatial points dataframe for sdm
class(hu9.new)
coordinates(hu9.new) <- ~lon + lat
class(hu9.new)
head(hu9.new)
tail(hu9.new)

# Generate pseudo-absences and sdm data preparation
hu9.sdm.new <- sdmData(species~., hu9.new, predictors = preds_new)

hu9.sdm.new # still presence-only, 49 records

# pseudo-absences
hu9.preabs.new <- sdmData(species~., hu9.new, predictors = preds_new, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

hu9.preabs.new # presence-background 1049, 1000 + 49 (pseudo-absences + real presence)

plot(hu9.preabs.new)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


hu9.hsm.new <- sdm(species~., hu9.preabs.new, methods= 'maxent',
                  replication=c('boot'), test.percent=30, n=10)
hu9.hsm.new
gui(hu9.hsm.new) #0.869

hu9.id.new <- predict(hu9.hsm.new, preds_new)

plot(hu9.id.new) # habitat suitability models based on maxent method

hu9.en.new <- ensemble(hu9.hsm.new, preds_new,
                   setting = list(method='weighted', stat='AUC'))
plot(hu9.en.new)
plot(indonesia, add=T)

#Response curve
rcurve(hu9.hsm.new)

hu_idnew <- getVarImp(hu9.hsm.new, id=1:10,wtest='test.dep') # specify the modelIDs of the models

hu_idnew

plot(hu_idnew,'cor')

#Halodule pinifolia Indonesia======================================================

# Indonesia
library('sdm')
installAll()
hp9.new <- read.csv('D:/Project/true data/hp.csv')

hp9_occur.new <- data.frame(table(hp9.new$lon))

species <- c()
for (i in 1:nrow(hp9_occur.new)) {
  species <- c(species, rep(hp9_occur.new$Freq[i], hp9_occur.new$Freq[i]))
}
hp9.new <- cbind(hp9.new, species)
hp9.new$species[hp9.new$species> 0] <- 1
hp9.new #70 records

# converting data to spatial points dataframe for sdm
class(hp9.new)
coordinates(hp9.new) <- ~lon + lat
class(hp9.new)
head(hp9.new)

# Generate pseudo-absences and sdm data preparation
hp9.sdm.new <- sdmData(species~., hp9.new, predictors = preds_new)

hp9.sdm.new # still presence-only, 28 records

# pseudo-absences
hp9.preabs.new <- sdmData(species~., hp9.new, predictors = preds_new, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

hp9.preabs.new # presence-background 1028, 1000 + 28 (pseudo-absences + real presence)

plot(hp9.preabs.new)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


hp9.hsm.new <- sdm(species~., hp9.preabs.new, methods= 'maxent',
                  replication=c('boot'), test.percent=30, n=10)
hp9.hsm.new
gui(hp9.hsm.new) #0.917

hp9.id.new <- predict(hp9.hsm.new, preds_new)

plot(hp9.id.new) # habitat suitability models based on maxent method

hp9.en.new <- ensemble(hp9.hsm.new, preds_new,
                   setting = list(method='weighted', stat='AUC'))
plot(hp9.en.new)
plot(indonesia, add=T)

#Response curve
rcurve(hp9.hsm.new)

hp9.avr.new <- calc(hp9.id.new, mean)
plot(hp9.avr.new)

hp_idnew <- getVarImp(hp9.hsm.new, id=1:10,wtest='test.dep') # specify the modelIDs of the models

hp_idnew

plot(hp_idnew,'cor')

#Halophila ovalis Indonesia======================================================

# Indonesia
library('sdm')
installAll()
ho9.new <- read.csv('D:/Project/true data/ho.csv')

ho9_occur.new <- data.frame(table(ho9.new$lon))

species <- c()
for (i in 1:nrow(ho9_occur.new)) {
  species <- c(species, rep(ho9_occur.new$Freq[i], ho9_occur.new$Freq[i]))
}
ho9.new <- cbind(ho9.new, species)
ho9.new$species[ho9.new$species> 0] <- 1
ho9.new #92 records

# converting data to spatial points dataframe for sdm
class(ho9.new)
coordinates(ho9.new) <- ~lon + lat
class(ho9.new)
head(ho9.new)

# Generate pseudo-absences and sdm data preparation
ho9.sdm.new <- sdmData(species~., ho9.new, predictors = preds_new)

ho9.sdm.new # still presence-only, 42 records

# pseudo-absences
ho9.preabs.new <- sdmData(species~., ho9.new, predictors = preds_new, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

ho9.preabs.new # presence-background 1042, 1000 + 42 (pseudo-absences + real presence)

plot(ho9.preabs.new)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


ho9.hsm.new <- sdm(species~., ho9.preabs.new, methods= 'maxent',
                  replication=c('boot'), test.percent=30, n=10)
ho9.hsm.new
gui(ho9.hsm.new) #AUC 0.911

ho9.id.new <- predict(ho9.hsm.new, preds_new)

plot(ho9.id.new) # habitat suitability models based on maxent method

ho9.en.new <- ensemble(ho9.hsm.new, preds_new,
                   setting = list(method='weighted', stat='AUC'))
plot(ho9.en.new)
plot(indonesia, add=T)

#Response curve
rcurve(ho9.hsm.new)

ho9.avr.new <- calc(ho9.id.new, mean)
plot(ho9.avr.new)

ho_idnew <- getVarImp(ho9.hsm.new, id=1:10,wtest='test.dep') # specify the modelIDs of the models

plot(ho_idnew,'cor')

#Enhalus acoroides Indonesia======================================================

# Indonesia
library('sdm')
installAll()
ea9.new <- read.csv('D:/Project/true data/ea.csv')

ea9_occur.new <- data.frame(table(ea9.new$lon))

species <- c()
for (i in 1:nrow(ea9_occur.new)) {
  species <- c(species, rep(ea9_occur.new$Freq[i], ea9_occur.new$Freq[i]))
}
ea9.new <- cbind(ea9.new, species)
ea9.new$species[ea9.new$species> 0] <- 1
ea9.new #144 records

# converting data to spatial points dataframe for sdm
class(ea9.new)
coordinates(ea9.new) <- ~lon + lat
class(ea9.new)
head(ea9.new)

# Generate pseudo-absences and sdm data preparation
ea9.sdm.new <- sdmData(species~., ea9.new, predictors = preds_new)

ea9.sdm.new # still presence-only, 65 records

# pseudo-absences
ea9.preabs.new <- sdmData(species~., ea9.new, predictors = preds_new, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

ea9.preabs.new # presence-background 1065, 1000 + 65 (pseudo-absences + real presence)

plot(ea9.preabs.new)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


ea9.hsm.new <- sdm(species~., ea9.preabs.new, methods= 'maxent',
                  replication=c('boot'), test.percent=30, n=10)
ea9.hsm.new
gui(ea9.hsm.new) #0.879

ea9.id.new <- predict(ea9.hsm.new, preds_new)

plot(ea9.id.new) # habitat suitability models based on maxent method

ea9.en.new <- ensemble(ea9.hsm.new, preds_new,
                   setting = list(method='weighted', stat='AUC'))
plot(ea9.en.new)
plot(indonesia, add=T)

#Response curve
rcurve(ea9.hsm.new)

ea_idnew <- getVarImp(ea9.hsm.new, id=1:10,wtest='test.dep') # specify the modelIDs of the models

ea_idnew

plot(ea_idnew,'cor')

#Cymodocea serrulata Indonesia======================================================

# Indonesia
library('sdm')
installAll()
cs9.new <- read.csv('D:/Project/true data/cs.csv')

cs9_occur.new <- data.frame(table(cs9.new$lon))

species <- c()
for (i in 1:nrow(cs9_occur.new)) {
  species <- c(species, rep(cs9_occur.new$Freq[i], cs9_occur.new$Freq[i]))
}
cs9.new <- cbind(cs9.new, species)
cs9.new$species[cs9.new$species> 0] <- 1
cs9.new #79 records

# converting data to spatial points dataframe for sdm
class(cs9.new)
coordinates(cs9.new) <- ~lon + lat
class(cs9.new)
head(cs9.new)

# Generate pseudo-absences and sdm data preparation
cs9.sdm.new <- sdmData(species~., cs9.new, predictors = preds_new)

cs9.sdm.new # still presence-only, 41 records

# pseudo-absences
cs9.preabs.new <- sdmData(species~., cs9.new, predictors = preds_new, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

cs9.preabs.new # presence-background 1041, 1000 + 41 (pseudo-absences + real presence)

plot(cs9.preabs.new)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


cs9.hsm.new <- sdm(species~., cs9.preabs.new, methods= 'maxent',
                  replication=c('boot'), test.percent=30, n=10)
gui(cs9.hsm.new) #AUC 0.906

cs9.id.new <- predict(cs9.hsm.new, preds_new)

plot(cs9.id.new) # habitat suitability models based on maxent method

cs9.en.new <- ensemble(cs9.hsm.new, preds_new,
                   setting = list(method='weighted', stat='AUC'))
plot(cs9.en.new)
plot(indonesia, add=T)

#Response curve
rcurve(cs9.hsm.new)

cs9.avr.new <- calc(cs9.id.new, mean)
plot(cs9.avr.new)

cs_idnew <- getVarImp(cs9.hsm.new, id=1:10,wtest='test.dep') # specify the modelIDs of the models

cs_idnew

plot(cs_idnew,'cor')

#Cymodocea rotundata Indonesia======================================================

# Indonesia
library('sdm')
installAll()
cr9.new <- read.csv('D:/Project/true data/cr.csv')

cr9_occur.new <- data.frame(table(cr9.new$lon))

species <- c()
for (i in 1:nrow(cr9_occur.new)) {
  species <- c(species, rep(cr9_occur.new$Freq[i], cr9_occur.new$Freq[i]))
}
cr9.new <- cbind(cr9.new, species)
cr9.new$species[cr9.new$species> 0] <- 1
cr9.new #134 records

# converting data to spatial points dataframe for sdm
class(cr9.new)
coordinates(cr9.new) <- ~lon + lat
class(cr9.new)
head(cr9.new)

# Generate pseudo-absences and sdm data preparation
cr9.sdm.new <- sdmData(species~., cr9.new, predictors = preds_new)

cr9.sdm.new # still presence-only, 57 records

# pseudo-absences
cr9.preabs.new <- sdmData(species~., cr9.new, predictors = preds_new, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

cr9.preabs.new # presence-background 1057, 1000 + 57 (pseudo-absences + real presence)

plot(cr9.preabs.new)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


cr9.hsm.new <- sdm(species~., cr9.preabs.new, methods= 'maxent',
                  replication=c('boot'), test.percent=30, n=10)
cr9.hsm.new
gui(cr9.hsm.new) #0.856

cr9.id.new <- predict(cr9.hsm.new, preds_new)

plot(cr9.id.new) # habitat suitability models based on maxent method

cr9.en.new <- ensemble(cr9.hsm.new, preds_new,
                   setting = list(method='weighted', stat='AUC'))
plot(cr9.en.new)
plot(indonesia, add=T)

#Response curve
rcurve(cr9.hsm.new)

cr9.avr.new <- calc(cr9.id.new, mean)
plot(cr9.avr.new)

cr_idnew <- getVarImp(cr9.hsm.new, id=1:10,wtest='test.dep') # specify the modelIDs of the models

cr_idnew

plot(cr_idnew,'cor')
