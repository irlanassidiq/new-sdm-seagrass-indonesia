#Raster========================================================================================
## RCP 26
### 2050
# SST Mean
sstmean26_2050 <- raster('D:/Project/env predictors/[Future]/2050/rcp 26/2050AOGCM.RCP26.Surface.Temperature.Mean.asc.BOv2_1.asc')
sstmean26_2050 <- crop(sstmean26_2050, e)
plot(sstmean26_2050)

sstmean26_2050_mask <- mask(x=sstmean26_2050, mask=depth60)
plot(sstmean26_2050_mask)

# SST Max
sstmax26_2050 <- raster('D:/Project/env predictors/[Future]/2050/rcp 26/2050AOGCM.RCP26.Surface.Temperature.Max.asc.BOv2_1.asc')
sstmax26_2050 <- crop(sstmax26_2050, e)
plot(sstmax26_2050)

sstmax26_2050_mask <- mask(sstmax26_2050, mask=depth60)
plot(sstmax26_2050_mask)

new.new.preds26_2050 <- stack(sstmean26_2050_mask,
                      sstmax26_2050_mask,
                      sal.sur.mean_mask60, #salinity
                      nit.sur.mean_mask60, #Nitrate
                      pho.ben.mean_mask60, #Phosphate
                      cv.sur.mean_mask60, #Current velocity
                      cv.ben.mean_mask60,
                      da.sur.mean_mask60) #Diffuse Attenuation

### 2100
# SST Mean
sstmean26_2100 <- raster('D:/Project/env predictors/[Future]/2100/rcp 26/2100AOGCM.RCP26.Surface.Temperature.Mean.asc.BOv2_1.asc')
sstmean26_2100 <- crop(sstmean26_2100, e)
plot(sstmean26_2100)

sstmean26_2100_mask <- mask(x=sstmean26_2100, mask=depth60)
plot(sstmean26_2100_mask)

# SST Max
sstmax26_2100 <- raster('D:/Project/env predictors/[Future]/2100/rcp 26/2100AOGCM.RCP26.Surface.Temperature.Max.asc.BOv2_1.asc')
sstmax26_2100 <- crop(sstmax26_2100, e)
plot(sstmax26_2100)

sstmax26_2100_mask <- mask(sstmax26_2100, mask=depth60)
plot(sstmax26_2100_mask)

new.new.preds26_2100 <- stack(sstmean26_2100_mask,
                      sstmax26_2100_mask,
                      sal.sur.mean_mask60, #salinity
                      nit.sur.mean_mask60, #Nitrate
                      pho.ben.mean_mask60, #Phosphate
                      cv.sur.mean_mask60, #Current velocity
                      cv.ben.mean_mask60,
                      da.sur.mean_mask60) #Diffuse Attenuation

## RCP 45
### 2050
# SST Mean
sstmean45_2050 <- raster('D:/Project/env predictors/[Future]/2050/rcp 45/2050AOGCM.RCP45.Surface.Temperature.Mean.asc.BOv2_1.asc')
sstmean45_2050 <- crop(sstmean45_2050, e)
plot(sstmean45_2050)

sstmean45_2050_mask <- mask(x=sstmean45_2050, mask=depth60)
plot(sstmean45_2050_mask)

# SST Max
sstmax45_2050 <- raster('D:/Project/env predictors/[Future]/2050/rcp 45/2050AOGCM.RCP45.Surface.Temperature.Max.asc.BOv2_1.asc')
sstmax45_2050 <- crop(sstmax45_2050, e)
plot(sstmax45_2050)

sstmax45_2050_mask <- mask(sstmax45_2050, mask=depth60)
plot(sstmax45_2050_mask)

new.new.preds45_2050 <- stack(sstmean45_2050_mask,
                      sstmax45_2050_mask,
                      sal.sur.mean_mask60, #salinity
                      nit.sur.mean_mask60, #Nitrate
                      pho.ben.mean_mask60, #Phosphate
                      cv.sur.mean_mask60, #Current velocity
                      cv.ben.mean_mask60,
                      da.sur.mean_mask60) #Diffuse Attenuation

### 2100
# SST Mean
sstmean45_2100 <- raster('D:/Project/env predictors/[Future]/2100/rcp 45/2100AOGCM.RCP45.Surface.Temperature.Mean.asc.BOv2_1.asc')
sstmean45_2100 <- crop(sstmean45_2100, e)
plot(sstmean45_2100)

sstmean45_2100_mask <- mask(x=sstmean45_2100, mask=depth60)
plot(sstmean45_2100_mask)

# SST Max
sstmax45_2100 <- raster('D:/Project/env predictors/[Future]/2100/rcp 45/2100AOGCM.RCP45.Surface.Temperature.Max.asc.BOv2_1.asc')
sstmax45_2100 <- crop(sstmax45_2100, e)
plot(sstmax45_2100)

sstmax45_2100_mask <- mask(sstmax45_2100, mask=depth60)
plot(sstmax45_2100_mask)

new.new.preds45_2100 <- stack(sstmean45_2100_mask,
                      sstmax45_2100_mask,
                      sal.sur.mean_mask60, #salinity
                      nit.sur.mean_mask60, #Nitrate
                      pho.ben.mean_mask60, #Phosphate
                      cv.sur.mean_mask60, #Current velocity
                      cv.ben.mean_mask60,
                      da.sur.mean_mask60) #Diffuse Attenuation

## RCP 85
### 2050
# SST Mean
sstmean85_2050 <- raster('D:/Project/env predictors/[Future]/2050/rcp 85/2050AOGCM.RCP85.Surface.Temperature.Mean.asc.BOv2_1.asc')
sstmean85_2050 <- crop(sstmean85_2050, e)
plot(sstmean85_2050)

sstmean85_2050_mask <- mask(x=sstmean85_2050, mask=depth60)
plot(sstmean85_2050_mask)

# SST Max
sstmax85_2050 <- raster('D:/Project/env predictors/[Future]/2050/rcp 85/2050AOGCM.RCP85.Surface.Temperature.Max.asc.BOv2_1.asc')
sstmax85_2050 <- crop(sstmax85_2050, e)
plot(sstmax85_2050)

sstmax85_2050_mask <- mask(sstmax85_2050, mask=depth60)
plot(sstmax85_2050_mask)

new.new.preds85_2050 <- stack(sstmean85_2050_mask,
                      sstmax85_2050_mask,
                      sal.sur.mean_mask60, #salinity
                      nit.sur.mean_mask60, #Nitrate
                      pho.ben.mean_mask60, #Phosphate
                      cv.sur.mean_mask60, #Current velocity
                      cv.ben.mean_mask60,
                      da.sur.mean_mask60) #Diffuse Attenuation

### 2100
# SST Mean
sstmean85_2100 <- raster('D:/Project/env predictors/[Future]/2100/rcp 85/2100AOGCM.RCP85.Surface.Temperature.Mean.asc.BOv2_1.asc')
sstmean85_2100 <- crop(sstmean85_2100, e)
plot(sstmean85_2100)

sstmean85_2100_mask <- mask(x=sstmean85_2100, mask=depth60)
plot(sstmean85_2100_mask)

# SST Max
sstmax85_2100 <- raster('D:/Project/env predictors/[Future]/2100/rcp 85/2100AOGCM.RCP85.Surface.Temperature.Max.asc.BOv2_1.asc')
sstmax85_2100 <- crop(sstmax85_2100, e)
plot(sstmax85_2100)

sstmax85_2100_mask <- mask(sstmax85_2100, mask=depth60)
plot(sstmax85_2100_mask)

new.new.preds85_2100 <- stack(sstmean85_2100_mask,
                      sstmax85_2100_mask,
                      sal.sur.mean_mask60, #salinity
                      nit.sur.mean_mask60, #Nitrate
                      pho.ben.mean_mask60, #Phosphate
                      cv.sur.mean_mask60, #Current velocity
                      cv.ben.mean_mask60,
                      da.sur.mean_mask60) #Diffuse Attenuation

#Thalassia hemprichii Indonesia======================================================================

#Future projection
#RCP26 2050
# Generate pseudo-absences and sdm data preparation
new.th9.sdm.26_2050 <- sdmData(species~., th9.new, predictors = new.new.preds26_2050)

new.th9.sdm.26_2050# still presence-only, 77 records

# pseudo-absences
new.th9.preabs.26_2050 <- sdmData(species~., th9.new, predictors = new.new.preds26_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.th9.preabs.26_2050 # presence-background 1077, 1000 + 77 (pseudo-absences + real presence)

plot(new.th9.preabs.26_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package

new.th9.hsm.26_2050 <- sdm(species~., new.th9.preabs.26_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.th9.hsm.26_2050
gui(new.th9.hsm.26_2050)

new.new.th9.id.26_2050 <- predict(new.th9.hsm.26_2050, new.new.preds26_2050)

plot(new.new.th9.id.26_2050) # habitat suitability models based on maxent method

new.th9.en.26_2050 <- ensemble(new.th9.hsm.26_2050, new.new.preds26_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.th9.en.26_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.th9.hsm.26_2050)

new.th9.avr.26_2050 <- calc(new.new.th9.id.26_2050, mean)
plot(new.th9.avr.26_2050)

new.th_id.26_2050 <- getVarImp(new.th9.hsm.26_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.th_id.26_2050

plot(new.th_id.26_2050,'cor')

#RCP26 2100
# Generate pseudo-absences and sdm data preparation
new.th9.sdm.26_2100 <- sdmData(species~., th9.new, predictors = new.preds26_2100)

new.th9.sdm.26_2100# still presence-only, 77 records

# pseudo-absences
new.th9.preabs.26_2100 <- sdmData(species~., th9.new, predictors = new.preds26_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.th9.preabs.26_2100 # presence-background 1077, 1000 + 77 (pseudo-absences + real presence)

plot(new.th9.preabs.26_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package

new.th9.hsm.26_2100 <- sdm(species~., new.th9.preabs.26_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.th9.hsm.26_2100
gui(new.th9.hsm.26_2100)

new.th9.id.26_2100 <- predict(new.th9.hsm.26_2100, new.preds26_2100)

plot(new.th9.id.26_2100) # habitat suitability models based on maxent method

new.th9.en.26_2100 <- ensemble(new.th9.hsm.26_2100, new.preds26_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.th9.en.26_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.th9.hsm.26_2100)

new.th9.avr.26_2100 <- calc(new.new.th9.id.26_2100, mean)
plot(new.th9.avr.26_2100)

new.th_id.26_2100 <- getVarImp(new.th9.hsm.26_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.th_id.26_2100

plot(new.th_id.26_2100,'cor')

#RCP45 2050
# Generate pseudo-absences and sdm data preparation
new.th9.sdm.45_2050 <- sdmData(species~., th9.new, predictors = new.preds45_2050)

new.th9.sdm.45_2050# still presence-only, 77 records

# pseudo-absences
new.th9.preabs.45_2050 <- sdmData(species~., th9.new, predictors = new.preds45_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.th9.preabs.45_2050 # presence-background 1077, 1000 + 77 (pseudo-absences + real presence)

plot(new.th9.preabs.45_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package

new.th9.hsm.45_2050 <- sdm(species~., new.th9.preabs.45_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.th9.hsm.45_2050
gui(new.th9.hsm.45_2050)

new.th9.id.45_2050 <- predict(new.th9.hsm.45_2050, new.preds45_2050)

plot(new.th9.id.45_2050) # habitat suitability models based on maxent method

new.th9.en.45_2050 <- ensemble(new.th9.hsm.45_2050, new.preds45_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.th9.en.45_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.th9.hsm.45_2050)

new.th9.avr.45_2050 <- calc(new.th9.id.45_2050, mean)
plot(new.th9.avr.45_2050)
plot(new.th9.avr.45_2050, add=TRUE)

new.th_id.45_2050 <- getVarImp(new.th9.hsm.45_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.th_id.45_2050

plot(new.th_id.45_2050,'cor')

#RCP45 2100
# Generate pseudo-absences and sdm data preparation
new.th9.sdm.45_2100 <- sdmData(species~., th9.new, predictors = new.preds45_2100)

new.th9.sdm.45_2100# still presence-only, 77 records

# pseudo-absences
new.th9.preabs.45_2100 <- sdmData(species~., th9.new, predictors = new.preds45_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.th9.preabs.45_2100 # presence-background 1077, 1000 + 77 (pseudo-absences + real presence)

plot(new.th9.preabs.45_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package

new.th9.hsm.45_2100 <- sdm(species~., new.th9.preabs.45_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.th9.hsm.45_2100
gui(new.th9.hsm.45_2100)

new.th9.id.45_2100 <- predict(new.th9.hsm.45_2100, new.preds45_2100)

plot(new.th9.id.45_2100) # habitat suitability models based on maxent method

new.th9.en.45_2100 <- ensemble(new.th9.hsm.45_2100, new.preds45_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.th9.en.45_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.th9.hsm.45_2100)

new.th9.avr.45_2100 <- calc(new.th9.id.45_2100, mean)
plot(new.th9.avr.45_2100)

new.th_id.45_2100 <- getVarImp(new.th9.hsm.45_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.th_id.45_2100

plot(new.th_id.45_2100,'cor')

#RCP85 2050
# Generate pseudo-absences and sdm data preparation
new.th9.sdm.85_2050 <- sdmData(species~., th9.new, predictors = new.preds85_2050)

new.th9.sdm.85_2050# still presence-only, 77 records

# pseudo-absences
new.th9.preabs.85_2050 <- sdmData(species~., th9.new, predictors = new.preds85_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.th9.preabs.85_2050 # presence-background 1077, 1000 + 77 (pseudo-absences + real presence)

plot(new.th9.preabs.85_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package

new.th9.hsm.85_2050 <- sdm(species~., new.th9.preabs.85_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.th9.hsm.85_2050
gui(new.th9.hsm.85_2050)

new.th9.id.85_2050 <- predict(new.th9.hsm.85_2050, new.preds85_2050)

plot(new.th9.id.85_2050) # habitat suitability models based on maxent method

new.th9.en.85_2050 <- ensemble(new.th9.hsm.85_2050, new.preds85_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.th9.en.85_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.th9.hsm.85_2050)

new.th9.avr.85_2050 <- calc(new.th9.id.85_2050, mean)
plot(new.th9.avr.85_2050)

new.th_id.85_2050 <- getVarImp(new.th9.hsm.85_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.th_id.85_2050

plot(new.th_id.85_2050,'cor')

#RCP85 2100
# Generate pseudo-absences and sdm data preparation
new.th9.sdm.85_2100 <- sdmData(species~., th9.new, predictors = new.preds85_2100)

new.th9.sdm.85_2100# still presence-only, 77 records

# pseudo-absences
new.th9.preabs.85_2100 <- sdmData(species~., th9.new, predictors = new.preds85_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.th9.preabs.85_2100 # presence-background 1077, 1000 + 77 (pseudo-absences + real presence)

plot(new.th9.preabs.85_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package

new.th9.hsm.85_2100 <- sdm(species~., new.th9.preabs.85_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.th9.hsm.85_2100
gui(new.th9.hsm.85_2100)

new.th9.id.85_2100 <- predict(new.th9.hsm.85_2100, new.preds85_2100)

plot(new.th9.id.85_2100) # habitat suitability models based on maxent method

new.th9.en.85_2100 <- ensemble(new.th9.hsm.85_2100, new.preds85_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.th9.en.85_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.th9.hsm.85_2100)

new.th9.avr.85_2100 <- calc(new.new.th9.id.85_2100, mean)
plot(new.th9.avr.85_2100)
plot(new.th9.avr.85_2100, add=TRUE)

new.th_id.85_2100 <- getVarImp(new.th9.hsm.85_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.th_id.85_2100

plot(new.th_id.85_2100,'cor')

#Syringodium isoetifolium Indonesia======================================================================

#Future projection
#RCP26 2050
# Generate pseudo-absences and sdm data preparation
new.si9.sdm.26_2050 <- sdmData(species~., si9.new, predictors = new.preds26_2050)

new.si9.sdm.26_2050# still presence-only, 55 records

# pseudo-absences
new.si9.preabs.26_2050 <- sdmData(species~., si9.new, predictors = new.preds26_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.si9.preabs.26_2050 # presence-background 1055, 1000 + 55 (pseudo-absences + real presence)

plot(new.si9.preabs.26_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.si9.hsm.26_2050 <- sdm(species~., new.si9.preabs.26_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.si9.hsm.26_2050
gui(new.si9.hsm.26_2050)

new.si9.id.26_2050 <- predict(new.si9.hsm.26_2050, new.preds26_2050)

plot(new.si9.id.26_2050) # habitat suitability models based on maxent method

new.si9.en.26_2050 <- ensemble(new.si9.hsm.26_2050, new.preds26_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.si9.en.26_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.si9.hsm.26_2050)

new.si9.avr.26_2050 <- calc(new.si9.id.26_2050, mean)
plot(new.si9.avr.26_2050)

new.si_id.26_2050 <- getVarImp(new.si9.hsm.26_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.si_id.26_2050

plot(new.si_id.26_2050,'cor')

#RCP26 2100
# Generate pseudo-absences and sdm data preparation
new.si9.sdm.26_2100 <- sdmData(species~., si9.new, predictors = new.preds26_2100)

new.si9.sdm.26_2100# still presence-only, 55 records

# pseudo-absences
new.si9.preabs.26_2100 <- sdmData(species~., si9.new, predictors = new.preds26_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.si9.preabs.26_2100 # presence-background 1055, 1000 + 55 (pseudo-absences + real presence)

plot(new.si9.preabs.26_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package

new.si9.hsm.26_2100 <- sdm(species~., new.si9.preabs.26_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.si9.hsm.26_2100
gui(new.si9.hsm.26_2100)

new.si9.id.26_2100 <- predict(new.si9.hsm.26_2100, new.preds26_2100)

plot(new.si9.id.26_2100) # habitat suitability models based on maxent method

new.si9.en.26_2100 <- ensemble(new.si9.hsm.26_2100, new.preds26_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.si9.en.26_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.si9.hsm.26_2100)

new.si9.avr.26_2100 <- calc(new.si9.id.26_2100, mean)
plot(new.si9.avr.26_2100)

new.si_id.26_2100 <- getVarImp(new.si9.hsm.26_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.si_id.26_2100

plot(new.si_id.26_2100,'cor')

#RCP45 2050
# Generate pseudo-absences and sdm data preparation
new.si9.sdm.45_2050 <- sdmData(species~., si9.new, predictors = new.preds45_2050)

new.si9.sdm.45_2050# still presence-only, 55 records

# pseudo-absences
new.si9.preabs.45_2050 <- sdmData(species~., si9.new, predictors = new.preds45_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.si9.preabs.45_2050 # presence-background 1055, 1000 + 55 (pseudo-absences + real presence)

plot(new.si9.preabs.45_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.si9.hsm.45_2050 <- sdm(species~., new.si9.preabs.45_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.si9.hsm.45_2050
gui(new.si9.hsm.45_2050)

new.si9.id.45_2050 <- predict(new.si9.hsm.45_2050, new.preds45_2050)

plot(new.si9.id.45_2050) # habitat suitability models based on maxent method

new.si9.en.45_2050 <- ensemble(new.si9.hsm.45_2050, new.preds45_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.si9.en.45_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.si9.hsm.45_2050)

new.si9.avr.45_2050 <- calc(new.si9.id.45_2050, mean)
plot(new.si9.avr.45_2050)

new.si_id.45_2050 <- getVarImp(new.si9.hsm.45_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.si_id.45_2050

plot(new.si_id.45_2050,'cor')

#RCP45 2100
# Generate pseudo-absences and sdm data preparation
new.si9.sdm.45_2100 <- sdmData(species~., si9.new, predictors = new.preds45_2100)

new.si9.sdm.45_2100# still presence-only, 55 records

# pseudo-absences
new.si9.preabs.45_2100 <- sdmData(species~., si9.new, predictors = new.preds45_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.si9.preabs.45_2100 # presence-background 1055, 1000 + 55 (pseudo-absences + real presence)

plot(new.si9.preabs.45_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.si9.hsm.45_2100 <- sdm(species~., new.si9.preabs.45_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.si9.hsm.45_2100
gui(new.si9.hsm.45_2100)

new.si9.id.45_2100 <- predict(new.si9.hsm.45_2100, new.preds45_2100)

plot(new.si9.id.45_2100) # habitat suitability models based on maxent method

new.si9.en.45_2100 <- ensemble(new.si9.hsm.45_2100, new.preds45_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.si9.en.45_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.si9.hsm.45_2100)

new.si9.avr.45_2100 <- calc(new.si9.id.45_2100, mean)
plot(new.si9.avr.45_2100)

new.si_id.45_2100 <- getVarImp(new.si9.hsm.45_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.si_id.45_2100

plot(new.si_id.45_2100,'cor')

#RCP85 2050
# Generate pseudo-absences and sdm data preparation
new.si9.sdm.85_2050 <- sdmData(species~., si9.new, predictors = new.preds85_2050)

new.si9.sdm.85_2050# still presence-only, 55 records

# pseudo-absences
new.si9.preabs.85_2050 <- sdmData(species~., si9.new, predictors = new.preds85_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.si9.preabs.85_2050 # presence-background 1055, 1000 + 55 (pseudo-absences + real presence)

plot(new.si9.preabs.85_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.si9.hsm.85_2050 <- sdm(species~., new.si9.preabs.85_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.si9.hsm.85_2050
gui(new.si9.hsm.85_2050)

new.si9.id.85_2050 <- predict(new.si9.hsm.85_2050, new.preds85_2050)

plot(new.si9.id.85_2050) # habitat suitability models based on maxent method

new.si9.en.85_2050 <- ensemble(new.si9.hsm.85_2050, new.preds85_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.si9.en.85_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.si9.hsm.85_2050)

new.si9.avr.85_2050 <- calc(new.si9.id.85_2050, mean)
plot(new.si9.avr.85_2050)

new.si_id.85_2050 <- getVarImp(new.si9.hsm.85_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.si_id.85_2050

plot(new.si_id.85_2050,'cor')

#RCP85 2100
# Generate pseudo-absences and sdm data preparation
new.si9.sdm.85_2100 <- sdmData(species~., si9.new, predictors = new.preds85_2100)

new.si9.sdm.85_2100# still presence-only, 55 records

# pseudo-absences
new.si9.preabs.85_2100 <- sdmData(species~., si9.new, predictors = new.preds85_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.si9.preabs.85_2100 # presence-background 1055, 1000 + 55 (pseudo-absences + real presence)

plot(new.si9.preabs.85_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.si9.hsm.85_2100 <- sdm(species~., new.si9.preabs.85_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.si9.hsm.85_2100
gui(new.si9.hsm.85_2100)

new.si9.id.85_2100 <- predict(new.si9.hsm.85_2100, new.preds85_2100)

plot(new.si9.id.85_2100) # habitat suitability models based on maxent method

new.si9.en.85_2100 <- ensemble(new.si9.hsm.85_2100, new.preds85_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.si9.en.85_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.si9.hsm.85_2100)

new.si9.avr.85_2100 <- calc(new.si9.id.85_2100, mean)
plot(new.si9.avr.85_2100)

new.si_id.85_2100 <- getVarImp(new.si9.hsm.85_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.si_id.85_2100

plot(new.si_id.85_2100,'cor')

#Halodule uninervis Indonesia======================================================

#Future Projection
#2050
#RCP26

# Generate pseudo-absences and sdm data preparation
new.hu9.sdm.26_2050 <- sdmData(species~., hu9.new, predictors = new.preds26_2050)

new.hu9.sdm.26_2050 # still presence-only, 49 records

# pseudo-absences
new.hu9.preabs.26_2050 <- sdmData(species~., hu9.new, predictors = new.preds26_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hu9.preabs.26_2050 # presence-background 1049, 1000 + 49 (pseudo-absences + real presence)

plot(new.hu9.preabs.26_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hu9.hsm.26_2050 <- sdm(species~., new.hu9.preabs.26_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hu9.hsm.26_2050
gui(new.hu9.hsm.26_2050)

new.hu9.id.26_2050 <- predict(new.hu9.hsm.26_2050, new.preds26_2050)

plot(new.hu9.id.26_2050) # habitat suitability models based on maxent method

new.hu9.en.26_2050 <- ensemble(new.hu9.hsm.26_2050, new.preds26_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hu9.en.26_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.hu9.hsm.26_2050)

new.hu9.avr.26_2050 <- calc(new.hu9.id.26_2050, mean)
plot(new.hu9.avr.26_2050)

new.hu_id.26_2050 <- getVarImp(new.hu9.hsm.26_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hu_id.26_2050

plot(new.hu_id.26_2050,'cor')

#2100
#RCP26

# Generate pseudo-absences and sdm data preparation
new.hu9.sdm.26_2100 <- sdmData(species~., hu9.new, predictors = new.preds26_2100)

new.hu9.sdm.26_2100 # still presence-only, 49 records

# pseudo-absences
new.hu9.preabs.26_2100 <- sdmData(species~., hu9.new, predictors = new.preds26_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hu9.preabs.26_2100 # presence-background 1049, 1000 + 49 (pseudo-absences + real presence)

plot(new.hu9.preabs.26_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hu9.hsm.26_2100 <- sdm(species~., new.hu9.preabs.26_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hu9.hsm.26_2100
gui(new.hu9.hsm.26_2100)

new.hu9.id.26_2100 <- predict(new.hu9.hsm.26_2100, new.preds26_2100)

plot(new.hu9.id.26_2100) # habitat suitability models based on maxent method

new.hu9.en.26_2100 <- ensemble(new.hu9.hsm.26_2100, new.preds26_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hu9.en.26_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.hu9.hsm.26_2100)

new.hu9.avr.26_2100 <- calc(new.hu9.id.26_2100, mean)
plot(new.hu9.avr.26_2100)

new.hu_id.26_2100 <- getVarImp(new.hu9.hsm.26_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hu_id.26_2100

plot(new.hu_id.26_2100,'cor')

#2050
#RCP45

# Generate pseudo-absences and sdm data preparation
new.hu9.sdm.45_2050 <- sdmData(species~., hu9.new, predictors = new.preds45_2050)

new.hu9.sdm.45_2050 # still presence-only, 49 records

# pseudo-absences
new.hu9.preabs.45_2050 <- sdmData(species~., hu9.new, predictors = new.preds45_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hu9.preabs.45_2050 # presence-background 1049, 1000 + 49 (pseudo-absences + real presence)

plot(new.hu9.preabs.45_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hu9.hsm.45_2050 <- sdm(species~., new.hu9.preabs.45_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hu9.hsm.45_2050
gui(new.hu9.hsm.45_2050)

new.hu9.id.45_2050 <- predict(new.hu9.hsm.45_2050, new.preds45_2050)

plot(new.hu9.id.45_2050) # habitat suitability models based on maxent method

new.hu9.en.45_2050 <- ensemble(new.hu9.hsm.45_2050, new.preds45_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hu9.en.45_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.hu9.hsm.45_2050)

new.hu9.avr.45_2050 <- calc(new.hu9.id.45_2050, mean)
plot(new.hu9.avr.45_2050)

new.hu_id.45_2050 <- getVarImp(new.hu9.hsm.45_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hu_id.45_2050

plot(new.hu_id.45_2050,'cor')

#2100
#RCP45

# Generate pseudo-absences and sdm data preparation
new.hu9.sdm.45_2100 <- sdmData(species~., hu9.new, predictors = new.preds45_2100)

new.hu9.sdm.45_2100 # still presence-only, 49 records

# pseudo-absences
new.hu9.preabs.45_2100 <- sdmData(species~., hu9.new, predictors = new.preds45_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hu9.preabs.45_2100 # presence-background 1049, 1000 + 49 (pseudo-absences + real presence)

plot(new.hu9.preabs.45_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hu9.hsm.45_2100 <- sdm(species~., new.hu9.preabs.45_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hu9.hsm.45_2100
gui(new.hu9.hsm.45_2100)

new.hu9.id.45_2100 <- predict(new.hu9.hsm.45_2100, new.preds45_2100)

plot(new.hu9.id.45_2100) # habitat suitability models based on maxent method

new.hu9.en.45_2100 <- ensemble(new.hu9.hsm.45_2100, new.preds45_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hu9.en.45_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.hu9.hsm.45_2100)

new.hu9.avr.45_2100 <- calc(new.hu9.id.45_2100, mean)
plot(new.hu9.avr.45_2100)

new.hu_id.45_2100 <- getVarImp(new.hu9.hsm.45_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hu_id.45_2100

plot(new.hu_id.45_2100,'cor')

#2050
#RCP85

# Generate pseudo-absences and sdm data preparation
new.hu9.sdm.85_2050 <- sdmData(species~., hu9.new, predictors = new.preds85_2050)

new.hu9.sdm.85_2050 # still presence-only, 49 records

# pseudo-absences
new.hu9.preabs.85_2050 <- sdmData(species~., hu9.new, predictors = new.preds85_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hu9.preabs.85_2050 # presence-background 1049, 1000 + 49 (pseudo-absences + real presence)

plot(new.hu9.preabs.85_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hu9.hsm.85_2050 <- sdm(species~., new.hu9.preabs.85_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hu9.hsm.85_2050
gui(new.hu9.hsm.85_2050)

new.hu9.id.85_2050 <- predict(new.hu9.hsm.85_2050, new.preds85_2050)

plot(new.hu9.id.85_2050) # habitat suitability models based on maxent method

new.hu9.en.85_2050 <- ensemble(new.hu9.hsm.85_2050, new.preds85_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hu9.en.85_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.hu9.hsm.85_2050)

new.hu9.avr.85_2050 <- calc(new.hu9.id.85_2050, mean)
plot(new.hu9.avr.85_2050)

new.hu_id.85_2050 <- getVarImp(new.hu9.hsm.85_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hu_id.85_2050

plot(new.hu_id.85_2050,'cor')

#2100
#RCP85

# Generate pseudo-absences and sdm data preparation
new.hu9.sdm.85_2100 <- sdmData(species~., hu9.new, predictors = new.preds85_2100)

new.hu9.sdm.85_2100 # still presence-only, 49 records

# pseudo-absences
new.hu9.preabs.85_2100 <- sdmData(species~., hu9.new, predictors = new.preds85_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hu9.preabs.85_2100 # presence-background 1049, 1000 + 49 (pseudo-absences + real presence)

plot(new.hu9.preabs.85_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hu9.hsm.85_2100 <- sdm(species~., new.hu9.preabs.85_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hu9.hsm.85_2100
gui(new.hu9.hsm.85_2100)

new.hu9.id.85_2100 <- predict(new.hu9.hsm.85_2100, new.preds85_2100)

plot(new.hu9.id.85_2100) # habitat suitability models based on maxent method

new.hu9.en.85_2100 <- ensemble(new.hu9.hsm.85_2100, new.preds85_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hu9.en.85_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.hu9.hsm.85_2100)

new.hu9.avr.85_2100 <- calc(new.hu9.id.85_2100, mean)
plot(new.hu9.avr.85_2100)

new.hu_id.85_2100 <- getVarImp(new.hu9.hsm.85_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hu_id.85_2100

plot(new.hu_id.85_2100,'cor')

#Halodule pinifolia Indonesia======================================================

#future projection
#2050
#RCP26

# Generate pseudo-absences and sdm data preparation
new.hp9.sdm.26_2050 <- sdmData(species~., hp9.new, predictors = new.preds26_2050)

new.hp9.sdm.26_2050 # still presence-only, 28 records

# pseudo-absences
new.hp9.preabs.26_2050 <- sdmData(species~., hp9.new, predictors = new.preds26_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hp9.preabs.26_2050 # presence-background 1028, 1000 + 28 (pseudo-absences + real presence)

plot(new.hp9.preabs.26_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hp9.hsm.26_2050 <- sdm(species~., new.hp9.preabs.26_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hp9.hsm.26_2050
gui(new.hp9.hsm.26_2050)

new.hp9.id.26_2050 <- predict(new.hp9.hsm.26_2050, new.preds26_2050)

plot(new.hp9.id.26_2050) # habitat suitability models based on maxent method

new.hp9.en.26_2050 <- ensemble(new.hp9.hsm.26_2050, new.preds26_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hp9.en.26_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.hp9.hsm.26_2050)

new.hp9.avr.26_2050 <- calc(new.hp9.id.26_2050, mean)
plot(new.hp9.avr.26_2050)

new.hp_id.26_2050 <- getVarImp(new.hp9.hsm.26_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hp_id.26_2050

plot(new.hp_id.26_2050,'cor')

#2100
#RCP26

# Generate pseudo-absences and sdm data preparation
new.hp9.sdm.26_2100 <- sdmData(species~., hp9.new, predictors = new.preds26_2100)

new.hp9.sdm.26_2100 # still presence-only, 28 records

# pseudo-absences
new.hp9.preabs.26_2100 <- sdmData(species~., hp9.new, predictors = new.preds26_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hp9.preabs.26_2100 # presence-background 1028, 1000 + 28 (pseudo-absences + real presence)

plot(new.hp9.preabs.26_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hp9.hsm.26_2100 <- sdm(species~., new.hp9.preabs.26_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hp9.hsm.26_2100
gui(new.hp9.hsm.26_2100)

new.hp9.id.26_2100 <- predict(new.hp9.hsm.26_2100, new.preds26_2100)

plot(new.hp9.id.26_2100) # habitat suitability models based on maxent method

new.hp9.en.26_2100 <- ensemble(new.hp9.hsm.26_2100, new.preds26_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hp9.en.26_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.hp9.hsm.26_2100)

new.hp9.avr.26_2100 <- calc(new.hp9.id.26_2100, mean)
plot(new.hp9.avr.26_2100)

new.hp_id.26_2100 <- getVarImp(new.hp9.hsm.26_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hp_id.26_2100

plot(new.hp_id.26_2100,'cor')

#2050
#RCP45

# Generate pseudo-absences and sdm data preparation
new.hp9.sdm.45_2050 <- sdmData(species~., hp9.new, predictors = new.preds45_2050)

new.hp9.sdm.45_2050 # still presence-only, 28 records

# pseudo-absences
new.hp9.preabs.45_2050 <- sdmData(species~., hp9.new, predictors = new.preds45_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hp9.preabs.45_2050 # presence-background 1028, 1000 + 28 (pseudo-absences + real presence)

plot(new.hp9.preabs.45_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hp9.hsm.45_2050 <- sdm(species~., new.hp9.preabs.45_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hp9.hsm.45_2050
gui(new.hp9.hsm.45_2050)

new.hp9.id.45_2050 <- predict(new.hp9.hsm.45_2050, new.preds45_2050)

plot(new.hp9.id.45_2050) # habitat suitability models based on maxent method

new.hp9.en.45_2050 <- ensemble(new.hp9.hsm.45_2050, new.preds45_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hp9.en.45_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.hp9.hsm.45_2050)

new.hp9.avr.45_2050 <- calc(new.hp9.id.45_2050, mean)
plot(new.hp9.avr.45_2050)

new.hp_id.45_2050 <- getVarImp(new.hp9.hsm.45_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hp_id.45_2050

plot(new.hp_id.45_2050,'cor')

#2100
#RCP45

# Generate pseudo-absences and sdm data preparation
new.hp9.sdm.45_2100 <- sdmData(species~., hp9.new, predictors = new.preds45_2100)

new.hp9.sdm.45_2100 # still presence-only, 28 records

# pseudo-absences
new.hp9.preabs.45_2100 <- sdmData(species~., hp9.new, predictors = new.preds45_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hp9.preabs.45_2100 # presence-background 1028, 1000 + 28 (pseudo-absences + real presence)

plot(new.hp9.preabs.45_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hp9.hsm.45_2100 <- sdm(species~., new.hp9.preabs.45_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hp9.hsm.45_2100
gui(new.hp9.hsm.45_2100)

new.hp9.id.45_2100 <- predict(new.hp9.hsm.45_2100, new.preds45_2100)

plot(new.hp9.id.45_2100) # habitat suitability models based on maxent method

new.hp9.en.45_2100 <- ensemble(new.hp9.hsm.45_2100, new.preds45_2100,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hp9.en.45_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.hp9.hsm.45_2100)

new.hp9.avr.45_2100 <- calc(new.hp9.id.45_2100, mean)
plot(new.hp9.avr.45_2100)

new.hp_id.45_2100 <- getVarImp(new.hp9.hsm.45_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hp_id.45_2100

plot(new.hp_id.45_2100,'cor')

#2050
#RCP85

# Generate pseudo-absences and sdm data preparation
new.hp9.sdm.85_2050 <- sdmData(species~., hp9.new, predictors = new.preds85_2050)

new.hp9.sdm.85_2050 # still presence-only, 28 records

# pseudo-absences
new.hp9.preabs.85_2050 <- sdmData(species~., hp9.new, predictors = new.preds85_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hp9.preabs.85_2050 # presence-background 1028, 1000 + 28 (pseudo-absences + real presence)

plot(new.hp9.preabs.85_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hp9.hsm.85_2050 <- sdm(species~., new.hp9.preabs.85_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hp9.hsm.85_2050
gui(new.hp9.hsm.85_2050)

new.hp9.id.85_2050 <- predict(new.hp9.hsm.85_2050, new.preds85_2050)

plot(new.hp9.id.85_2050) # habitat suitability models based on maxent method

new.hp9.en.85_2050 <- ensemble(new.hp9.hsm.85_2050, new.preds85_2050,
                           setting = list(method='weighted', stat='AUC'))
plot(new.hp9.en.85_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.hp9.hsm.85_2050)

new.hp9.avr.85_2050 <- calc(new.hp9.id.85_2050, mean)
plot(new.hp9.avr.85_2050)

new.hp_id.85_2050 <- getVarImp(new.hp9.hsm.85_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hp_id.85_2050

plot(new.hp_id.85_2050,'cor')

#2100
#RCP85

# Generate pseudo-absences and sdm data preparation
new.hp9.sdm.85_2100 <- sdmData(species~., hp9.new, predictors = new.preds85_2100)

new.hp9.sdm.85_2100 # still presence-only, 28 records

# pseudo-absences
new.hp9.preabs.85_2100 <- sdmData(species~., hp9.new, predictors = new.preds85_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.hp9.preabs.85_2100 # presence-background 1028, 1000 + 28 (pseudo-absences + real presence)

plot(new.hp9.preabs.85_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.hp9.hsm.85_2100 <- sdm(species~., new.hp9.preabs.85_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.hp9.hsm.85_2100
gui(new.hp9.hsm.85_2100)

new.hp9.id.85_2100 <- predict(new.hp9.hsm.85_2100, new.preds85_2100)

plot(new.hp9.id.85_2100) # habitat suitability models based on maxent method

new.hp9.en.85_2100 <- ensemble(new.hp9.hsm.85_2100, new.preds85_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.hp9.en.85_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.hp9.hsm.85_2100)

new.hp9.avr.85_2100 <- calc(new.hp9.id.85_2100, mean)
plot(new.hp9.avr.85_2100)

new.hp_id.85_2100 <- getVarImp(new.hp9.hsm.85_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.hp_id.85_2100

plot(new.hp_id.85_2100,'cor')

#Halophila ovalis Indonesia======================================================

#Future projection
#2050
#RCP26

# Generate pseudo-absences and sdm data preparation
new.ho9.sdm.26_2050 <- sdmData(species~., ho9.new, predictors = new.preds26_2050)

new.ho9.sdm.26_2050 # still presence-only, 42 records

# pseudo-absences
new.ho9.preabs.26_2050 <- sdmData(species~., ho9.new, predictors = new.preds26_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ho9.preabs.26_2050 # presence-background 1042, 1000 + 42 (pseudo-absences + real presence)

plot(new.ho9.preabs.26_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ho9.hsm.26_2050 <- sdm(species~., new.ho9.preabs.26_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ho9.hsm.26_2050
gui(new.ho9.hsm.26_2050)

new.ho9.id.26_2050 <- predict(new.ho9.hsm.26_2050, new.preds26_2050)

plot(new.ho9.id.26_2050) # habitat suitability models based on maxent method

new.ho9.en.26_2050 <- ensemble(new.ho9.hsm.26_2050, new.preds26_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ho9.en.26_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.ho9.hsm.26_2050)

new.ho9.avr.26_2050 <- calc(new.ho9.id.26_2050, mean)
plot(new.ho9.avr.26_2050)

new.ho_id.26_2050 <- getVarImp(new.ho9.hsm.26_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ho_id.26_2050

plot(new.ho_id.26_2050,'cor')

#2100
#RCP26

# Generate pseudo-absences and sdm data preparation
new.ho9.sdm.26_2100 <- sdmData(species~., ho9.new, predictors = new.preds26_2100)

new.ho9.sdm.26_2100 # still presence-only, 42 records

# pseudo-absences
new.ho9.preabs.26_2100 <- sdmData(species~., ho9.new, predictors = new.preds26_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ho9.preabs.26_2100 # presence-background 1042, 1000 + 42 (pseudo-absences + real presence)

plot(new.ho9.preabs.26_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ho9.hsm.26_2100 <- sdm(species~., new.ho9.preabs.26_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ho9.hsm.26_2100
gui(new.ho9.hsm.26_2100)

new.ho9.id.26_2100 <- predict(new.ho9.hsm.26_2100, new.preds26_2100)

plot(new.ho9.id.26_2100) # habitat suitability models based on maxent method

new.ho9.en.26_2100 <- ensemble(new.ho9.hsm.26_2100, new.preds26_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ho9.en.26_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.ho9.hsm.26_2100)

new.ho9.avr.26_2100 <- calc(new.ho9.id.26_2100, mean)
plot(new.ho9.avr.26_2100)

new.ho_id.26_2100 <- getVarImp(new.ho9.hsm.26_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ho_id.26_2100

plot(new.ho_id.26_2100,'cor')

#2050
#RCP45

# Generate pseudo-absences and sdm data preparation
new.ho9.sdm.45_2050 <- sdmData(species~., ho9.new, predictors = new.preds45_2050)

new.ho9.sdm.45_2050 # still presence-only, 42 records

# pseudo-absences
new.ho9.preabs.45_2050 <- sdmData(species~., ho9.new, predictors = new.preds45_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ho9.preabs.45_2050 # presence-background 1042, 1000 + 42 (pseudo-absences + real presence)

plot(new.ho9.preabs.45_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ho9.hsm.45_2050 <- sdm(species~., new.ho9.preabs.45_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ho9.hsm.45_2050
gui(new.ho9.hsm.45_2050)

new.ho9.id.45_2050 <- predict(new.ho9.hsm.45_2050, new.preds45_2050)

plot(new.ho9.id.45_2050) # habitat suitability models based on maxent method

new.ho9.en.45_2050 <- ensemble(new.ho9.hsm.45_2050, new.preds45_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ho9.en.45_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.ho9.hsm.45_2050)

new.ho9.avr.45_2050 <- calc(new.ho9.id.45_2050, mean)
plot(new.ho9.avr.45_2050)

new.ho_id.45_2050 <- getVarImp(new.ho9.hsm.45_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ho_id.45_2050

plot(new.ho_id.45_2050,'cor')

#2100
#RCP45

# Generate pseudo-absences and sdm data preparation
new.ho9.sdm.45_2100 <- sdmData(species~., ho9.new, predictors = new.preds45_2100)

new.ho9.sdm.45_2100 # still presence-only, 42 records

# pseudo-absences
new.ho9.preabs.45_2100 <- sdmData(species~., ho9.new, predictors = new.preds45_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ho9.preabs.45_2100 # presence-background 1042, 1000 + 42 (pseudo-absences + real presence)

plot(new.ho9.preabs.45_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ho9.hsm.45_2100 <- sdm(species~., new.ho9.preabs.45_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ho9.hsm.45_2100
gui(new.ho9.hsm.45_2100)

new.ho9.id.45_2100 <- predict(new.ho9.hsm.45_2100, new.preds45_2100)

plot(new.ho9.id.45_2100) # habitat suitability models based on maxent method

new.ho9.en.45_2100 <- ensemble(new.ho9.hsm.45_2100, new.preds45_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ho9.en.45_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.ho9.hsm.45_2100)

new.ho9.avr.45_2100 <- calc(new.ho9.id.45_2100, mean)
plot(new.ho9.avr.45_2100)

new.ho_id.45_2100 <- getVarImp(new.ho9.hsm.45_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ho_id.45_2100

plot(new.ho_id.45_2100,'cor')

#2050
#RCP85

# Generate pseudo-absences and sdm data preparation
new.ho9.sdm.85_2050 <- sdmData(species~., ho9.new, predictors = new.preds85_2050)

new.ho9.sdm.85_2050 # still presence-only, 42 records

# pseudo-absences
new.ho9.preabs.85_2050 <- sdmData(species~., ho9.new, predictors = new.preds85_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ho9.preabs.85_2050 # presence-background 1042, 1000 + 42 (pseudo-absences + real presence)

plot(new.ho9.preabs.85_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ho9.hsm.85_2050 <- sdm(species~., new.ho9.preabs.85_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ho9.hsm.85_2050
gui(new.ho9.hsm.85_2050)

new.ho9.id.85_2050 <- predict(new.ho9.hsm.85_2050, new.preds85_2050)

plot(new.ho9.id.85_2050) # habitat suitability models based on maxent method

new.ho9.en.85_2050 <- ensemble(new.ho9.hsm.85_2050, new.preds85_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ho9.en.85_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.ho9.hsm.85_2050)

new.ho9.avr.85_2050 <- calc(new.ho9.id.85_2050, mean)
plot(new.ho9.avr.85_2050)

new.ho_id.85_2050 <- getVarImp(new.ho9.hsm.85_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ho_id.85_2050

plot(new.ho_id.85_2050,'cor')

#2100
#RCP85

# Generate pseudo-absences and sdm data preparation
new.ho9.sdm.85_2100 <- sdmData(species~., ho9.new, predictors = new.preds85_2100)

new.ho9.sdm.85_2100 # still presence-only, 42 records

# pseudo-absences
new.ho9.preabs.85_2100 <- sdmData(species~., ho9.new, predictors = new.preds85_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ho9.preabs.85_2100 # presence-background 1042, 1000 + 42 (pseudo-absences + real presence)

plot(new.ho9.preabs.85_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ho9.hsm.85_2100 <- sdm(species~., new.ho9.preabs.85_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ho9.hsm.85_2100
gui(new.ho9.hsm.85_2100)

new.ho9.id.85_2100 <- predict(new.ho9.hsm.85_2100, new.preds85_2100)

plot(new.ho9.id.85_2100) # habitat suitability models based on maxent method

new.ho9.en.85_2100 <- ensemble(new.ho9.hsm.85_2100, new.preds85_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ho9.en.85_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.ho9.hsm.85_2100)

new.ho9.avr.85_2100 <- calc(new.ho9.id.85_2100, mean)
plot(new.ho9.avr.85_2100)

new.ho_id.85_2100 <- getVarImp(new.ho9.hsm.85_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ho_id.85_2100

plot(new.ho_id.85_2100,'cor')

#Enhalus acoroides Indonesia======================================================

#Future projection
#2050
#RCP26

# Generate pseudo-absences and sdm data preparation
new.ea9.sdm.26_2050 <- sdmData(species~., ea9.new, predictors = new.preds26_2050)

new.ea9.sdm.26_2050 # still presence-only, 65 records

# pseudo-absences
new.ea9.preabs.26_2050 <- sdmData(species~., ea9.new, predictors = new.preds26_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ea9.preabs.26_2050 # presence-background 1065, 1000 + 65 (pseudo-absences + real presence)

plot(new.ea9.preabs.26_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ea9.hsm.26_2050 <- sdm(species~., new.ea9.preabs.26_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ea9.hsm.26_2050
gui(new.ea9.hsm.26_2050)

new.ea9.id.26_2050 <- predict(new.ea9.hsm.26_2050, new.preds26_2050)

plot(new.ea9.id.26_2050) # habitat suitability models based on maxent method

new.ea9.en.26_2050 <- ensemble(new.ea9.hsm.26_2050, new.preds26_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ea9.en.26_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.ea9.hsm.26_2050)

new.ea9.avr.26_2050 <- calc(new.ea9.id.26_2050, mean)
plot(new.ea9.avr.26_2050)

new.ea_id.26_2050 <- getVarImp(new.ea9.hsm.26_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ea_id.26_2050

plot(new.ea_id.26_2050,'cor')

#2100
#RCP26

# Generate pseudo-absences and sdm data preparation
new.ea9.sdm.26_2100 <- sdmData(species~., ea9.new, predictors = new.preds26_2100)

new.ea9.sdm.26_2100 # still presence-only, 65 records

# pseudo-absences
new.ea9.preabs.26_2100 <- sdmData(species~., ea9.new, predictors = new.preds26_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ea9.preabs.26_2100 # presence-background 1065, 1000 + 65 (pseudo-absences + real presence)

plot(new.ea9.preabs.26_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ea9.hsm.26_2100 <- sdm(species~., new.ea9.preabs.26_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ea9.hsm.26_2100
gui(new.ea9.hsm.26_2100)

new.ea9.id.26_2100 <- predict(new.ea9.hsm.26_2100, new.preds26_2100)

plot(new.ea9.id.26_2100) # habitat suitability models based on maxent method

new.ea9.en.26_2100 <- ensemble(new.ea9.hsm.26_2100, new.preds26_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ea9.en.26_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.ea9.hsm.26_2100)

new.ea9.avr.26_2100 <- calc(new.ea9.id.26_2100, mean)
plot(new.ea9.avr.26_2100)

new.ea_id.26_2100 <- getVarImp(new.ea9.hsm.26_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ea_id.26_2100

plot(new.ea_id.26_2100,'cor')

#2050
#RCP45

# Generate pseudo-absences and sdm data preparation
new.ea9.sdm.45_2050 <- sdmData(species~., ea9.new, predictors = new.preds45_2050)

new.ea9.sdm.45_2050 # still presence-only, 65 records

# pseudo-absences
new.ea9.preabs.45_2050 <- sdmData(species~., ea9.new, predictors = new.preds45_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ea9.preabs.45_2050 # presence-background 1065, 1000 + 65 (pseudo-absences + real presence)

plot(new.ea9.preabs.45_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ea9.hsm.45_2050 <- sdm(species~., new.ea9.preabs.45_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ea9.hsm.45_2050
gui(new.ea9.hsm.45_2050)

new.ea9.id.45_2050 <- predict(new.ea9.hsm.45_2050, new.preds45_2050)

plot(new.ea9.id.45_2050) # habitat suitability models based on maxent method

new.ea9.en.45_2050 <- ensemble(new.ea9.hsm.45_2050, new.preds45_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ea9.en.45_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.ea9.hsm.45_2050)

new.ea9.avr.45_2050 <- calc(new.ea9.id.45_2050, mean)
plot(new.ea9.avr.45_2050)

new.ea_id.45_2050 <- getVarImp(new.ea9.hsm.45_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ea_id.45_2050

plot(new.ea_id.45_2050,'cor')

#2100
#RCP45

# Generate pseudo-absences and sdm data preparation
new.ea9.sdm.45_2100 <- sdmData(species~., ea9.new, predictors = new.preds45_2100)

new.ea9.sdm.45_2100 # still presence-only, 65 records

# pseudo-absences
new.ea9.preabs.45_2100 <- sdmData(species~., ea9.new, predictors = new.preds45_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ea9.preabs.45_2100 # presence-background 1065, 1000 + 65 (pseudo-absences + real presence)

plot(new.ea9.preabs.45_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ea9.hsm.45_2100 <- sdm(species~., new.ea9.preabs.45_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ea9.hsm.45_2100
gui(new.ea9.hsm.45_2100)

new.ea9.id.45_2100 <- predict(new.ea9.hsm.45_2100, new.preds45_2100)

plot(new.ea9.id.45_2100) # habitat suitability models based on maxent method

new.ea9.en.45_2100 <- ensemble(new.ea9.hsm.45_2100, new.preds45_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ea9.en.45_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.ea9.hsm.45_2100)

new.ea9.avr.45_2100 <- calc(new.ea9.id.45_2100, mean)
plot(new.ea9.avr.45_2100)

new.ea_id.45_2100 <- getVarImp(new.ea9.hsm.45_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ea_id.45_2100

plot(new.ea_id.45_2100,'cor')

#2050
#RCP85

# Generate pseudo-absences and sdm data preparation
new.ea9.sdm.85_2050 <- sdmData(species~., ea9.new, predictors = new.preds85_2050)

new.ea9.sdm.85_2050 # still presence-only, 65 records

# pseudo-absences
new.ea9.preabs.85_2050 <- sdmData(species~., ea9.new, predictors = new.preds85_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ea9.preabs.85_2050 # presence-background 1065, 1000 + 65 (pseudo-absences + real presence)

plot(new.ea9.preabs.85_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ea9.hsm.85_2050 <- sdm(species~., new.ea9.preabs.85_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ea9.hsm.85_2050
gui(new.ea9.hsm.85_2050)

new.ea9.id.85_2050 <- predict(new.ea9.hsm.85_2050, new.preds85_2050)

plot(new.ea9.id.85_2050) # habitat suitability models based on maxent method

new.ea9.en.85_2050 <- ensemble(new.ea9.hsm.85_2050, new.preds85_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ea9.en.85_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.ea9.hsm.85_2050)

new.ea9.avr.85_2050 <- calc(new.ea9.id.85_2050, mean)
plot(new.ea9.avr.85_2050)

new.ea_id.85_2050 <- getVarImp(new.ea9.hsm.85_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ea_id.85_2050

plot(new.ea_id.85_2050,'cor')

#2100
#RCP85

# Generate pseudo-absences and sdm data preparation
new.ea9.sdm.85_2100 <- sdmData(species~., ea9.new, predictors = new.preds85_2100)

new.ea9.sdm.85_2100 # still presence-only, 65 records

# pseudo-absences
new.ea9.preabs.85_2100 <- sdmData(species~., ea9.new, predictors = new.preds85_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.ea9.preabs.85_2100 # presence-background 1065, 1000 + 65 (pseudo-absences + real presence)

plot(new.ea9.preabs.85_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.ea9.hsm.85_2100 <- sdm(species~., new.ea9.preabs.85_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.ea9.hsm.85_2100
gui(new.ea9.hsm.85_2100)

new.ea9.id.85_2100 <- predict(new.ea9.hsm.85_2100, new.preds85_2100)

plot(new.ea9.id.85_2100) # habitat suitability models based on maxent method

new.ea9.en.85_2100 <- ensemble(new.ea9.hsm.85_2100, new.preds85_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.ea9.en.85_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.ea9.hsm.85_2100)

new.ea9.avr.85_2100 <- calc(new.ea9.id.85_2100, mean)
plot(new.ea9.avr.85_2100)

new.ea_id.85_2100 <- getVarImp(new.ea9.hsm.85_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.ea_id.85_2100

plot(new.ea_id.85_2100,'cor')

#Cymodocea serrulata Indonesia======================================================

#Future projection
#2050
#RCP26

# Generate pseudo-absences and sdm data preparation
new.cs9.sdm.26_2050 <- sdmData(species~., cs9.new, predictors = new.preds26_2050)

new.cs9.sdm.26_2050 # still presence-only, 41 records

# pseudo-absences
new.cs9.preabs.26_2050 <- sdmData(species~., cs9.new, predictors = new.preds26_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cs9.preabs.26_2050 # presence-background 1041, 1000 + 41 (pseudo-absences + real presence)

plot(new.cs9.preabs.26_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cs9.hsm.26_2050 <- sdm(species~., new.cs9.preabs.26_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cs9.hsm.26_2050
gui(new.cs9.hsm.26_2050)

new.cs9.id.26_2050 <- predict(new.cs9.hsm.26_2050, new.preds26_2050)

plot(new.cs9.id.26_2050) # habitat suitability models based on maxent method

new.cs9.en.26_2050 <- ensemble(new.cs9.hsm.26_2050, new.preds26_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cs9.en.26_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.cs9.hsm.26_2050)

new.cs9.avr.26_2050 <- calc(new.cs9.id.26_2050, mean)
plot(new.cs9.avr.26_2050)

new.cs_id.26_2050 <- getVarImp(new.cs9.hsm.26_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cs_id.26_2050

plot(new.cs_id.26_2050,'cor')

#2100
#RCP26

# Generate pseudo-absences and sdm data preparation
new.cs9.sdm.26_2100 <- sdmData(species~., cs9.new, predictors = new.preds26_2100)

new.cs9.sdm.26_2100 # still presence-only, 41 records

# pseudo-absences
new.cs9.preabs.26_2100 <- sdmData(species~., cs9.new, predictors = new.preds26_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cs9.preabs.26_2100 # presence-background 1041, 1000 + 41 (pseudo-absences + real presence)

plot(new.cs9.preabs.26_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cs9.hsm.26_2100 <- sdm(species~., new.cs9.preabs.26_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cs9.hsm.26_2100
gui(new.cs9.hsm.26_2100)

new.cs9.id.26_2100 <- predict(new.cs9.hsm.26_2100, new.preds26_2100)

plot(new.cs9.id.26_2100) # habitat suitability models based on maxent method

new.cs9.en.26_2100 <- ensemble(new.cs9.hsm.26_2100, new.preds26_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cs9.en.26_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.cs9.hsm.26_2100)

new.cs9.avr.26_2100 <- calc(new.cs9.id.26_2100, mean)
plot(new.cs9.avr.26_2100)

new.cs_id.26_2100 <- getVarImp(new.cs9.hsm.26_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cs_id.26_2100

plot(new.cs_id.26_2100,'cor')

#2100
#RCP45

# Generate pseudo-absences and sdm data preparation
new.cs9.sdm.45_2050 <- sdmData(species~., cs9.new, predictors = new.preds45_2050)

new.cs9.sdm.45_2050 # still presence-only, 41 records

# pseudo-absences
new.cs9.preabs.45_2050 <- sdmData(species~., cs9.new, predictors = new.preds45_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cs9.preabs.45_2050 # presence-background 1041, 1000 + 41 (pseudo-absences + real presence)

plot(new.cs9.preabs.45_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cs9.hsm.45_2050 <- sdm(species~., new.cs9.preabs.45_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cs9.hsm.45_2050
gui(new.cs9.hsm.45_2050)

new.cs9.id.45_2050 <- predict(new.cs9.hsm.45_2050, new.preds45_2050)

plot(new.cs9.id.45_2050) # habitat suitability models based on maxent method

new.cs9.en.45_2050 <- ensemble(new.cs9.hsm.45_2050, new.preds45_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cs9.en.45_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.cs9.hsm.45_2050)

new.cs9.avr.45_2050 <- calc(new.cs9.id.45_2050, mean)
plot(new.cs9.avr.45_2050)

new.cs_id.45_2050 <- getVarImp(new.cs9.hsm.45_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cs_id.45_2050

plot(new.cs_id.45_2050,'cor')

#2100
#RCP45

# Generate pseudo-absences and sdm data preparation
new.cs9.sdm.45_2100 <- sdmData(species~., cs9.new, predictors = new.preds45_2100)

new.cs9.sdm.45_2100 # still presence-only, 41 records

# pseudo-absences
new.cs9.preabs.45_2100 <- sdmData(species~., cs9.new, predictors = new.preds45_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cs9.preabs.45_2100 # presence-background 1041, 1000 + 41 (pseudo-absences + real presence)

plot(new.cs9.preabs.45_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cs9.hsm.45_2100 <- sdm(species~., new.cs9.preabs.45_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cs9.hsm.45_2100
gui(new.cs9.hsm.45_2100)

new.cs9.id.45_2100 <- predict(new.cs9.hsm.45_2100, new.preds45_2100)

plot(new.cs9.id.45_2100) # habitat suitability models based on maxent method

new.cs9.en.45_2100 <- ensemble(new.cs9.hsm.45_2100, new.preds45_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cs9.en.45_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.cs9.hsm.45_2100)

new.cs9.avr.45_2100 <- calc(new.cs9.id.45_2100, mean)
plot(new.cs9.avr.45_2100)

new.cs_id.45_2100 <- getVarImp(new.cs9.hsm.45_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cs_id.45_2100

plot(new.cs_id.45_2100,'cor')

#2050
#RCP85

# Generate pseudo-absences and sdm data preparation
new.cs9.sdm.85_2050 <- sdmData(species~., cs9.new, predictors = new.preds85_2050)

new.cs9.sdm.85_2050 # still presence-only, 41 records

# pseudo-absences
new.cs9.preabs.85_2050 <- sdmData(species~., cs9.new, predictors = new.preds85_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cs9.preabs.85_2050 # presence-background 1041, 1000 + 41 (pseudo-absences + real presence)

plot(new.cs9.preabs.85_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cs9.hsm.85_2050 <- sdm(species~., new.cs9.preabs.85_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cs9.hsm.85_2050
gui(new.cs9.hsm.85_2050)

new.cs9.id.85_2050 <- predict(new.cs9.hsm.85_2050, new.preds85_2050)

plot(new.cs9.id.85_2050) # habitat suitability models based on maxent method

new.cs9.en.85_2050 <- ensemble(new.cs9.hsm.85_2050, new.preds85_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cs9.en.85_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.cs9.hsm.85_2050)

new.cs9.avr.85_2050 <- calc(new.cs9.id.85_2050, mean)
plot(new.cs9.avr.85_2050)

new.cs_id.85_2050 <- getVarImp(new.cs9.hsm.85_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cs_id.85_2050

plot(new.cs_id.85_2050,'cor')

#2100
#RCP85

# Generate pseudo-absences and sdm data preparation
new.cs9.sdm.85_2100 <- sdmData(species~., cs9.new, predictors = new.preds85_2100)

new.cs9.sdm.85_2100 # still presence-only, 41 records

# pseudo-absences
new.cs9.preabs.85_2100 <- sdmData(species~., cs9.new, predictors = new.preds85_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cs9.preabs.85_2100 # presence-background 1041, 1000 + 41 (pseudo-absences + real presence)

plot(new.cs9.preabs.85_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cs9.hsm.85_2100 <- sdm(species~., new.cs9.preabs.85_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cs9.hsm.85_2100
gui(new.cs9.hsm.85_2100)

new.cs9.id.85_2100 <- predict(new.cs9.hsm.85_2100, new.preds85_2100)

plot(new.cs9.id.85_2100) # habitat suitability models based on maxent method

new.cs9.en.85_2100 <- ensemble(new.cs9.hsm.85_2100, new.preds85_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cs9.en.85_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.cs9.hsm.85_2100)

new.cs9.avr.85_2100 <- calc(new.cs9.id.85_2100, mean)
plot(new.cs9.avr.85_2100)

new.cs_id.85_2100 <- getVarImp(new.cs9.hsm.85_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cs_id.85_2100

plot(new.cs_id.85_2100,'cor')

#Cymodocea rotundata Indonesia======================================================

#Future projection
#2050
#RCP26

# Generate pseudo-absences and sdm data preparation
new.cr9.sdm.26_2050 <- sdmData(species~., cr9.new, predictors = new.preds26_2050)

new.cr9.sdm.26_2050 # still presence-only, 57 records

# pseudo-absences
new.cr9.preabs.26_2050 <- sdmData(species~., cr9.new, predictors = new.preds26_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cr9.preabs.26_2050 # presence-background 1057, 1000 + 57 (pseudo-absences + real presence)

plot(new.cr9.preabs.26_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cr9.hsm.26_2050 <- sdm(species~., new.cr9.preabs.26_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cr9.hsm.26_2050
gui(new.cr9.hsm.26_2050)

new.cr9.id.26_2050 <- predict(new.cr9.hsm.26_2050, new.preds26_2050)

plot(new.cr9.id.26_2050) # habitat suitability models based on maxent method

new.cr9.en.26_2050 <- ensemble(new.cr9.hsm.26_2050, new.preds26_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cr9.en.26_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.cr9.hsm.26_2050)

new.cr9.avr.26_2050 <- calc(new.cr9.id.26_2050, mean)
plot(new.cr9.avr.26_2050)

new.cr_id.26_2050 <- getVarImp(new.cr9.hsm.26_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cr_id.26_2050

plot(new.cr_id.26_2050,'cor')

#2100
#RCP26

# Generate pseudo-absences and sdm data preparation
new.cr9.sdm.26_2100 <- sdmData(species~., cr9.new, predictors = new.preds26_2100)

new.cr9.sdm.26_2100 # still presence-only, 57 records

# pseudo-absences
new.cr9.preabs.26_2100 <- sdmData(species~., cr9.new, predictors = new.preds26_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cr9.preabs.26_2100 # presence-background 1057, 1000 + 57 (pseudo-absences + real presence)

plot(new.cr9.preabs.26_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cr9.hsm.26_2100 <- sdm(species~., new.cr9.preabs.26_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cr9.hsm.26_2100
gui(new.cr9.hsm.26_2100)

new.cr9.id.26_2100 <- predict(new.cr9.hsm.26_2100, new.preds26_2100)

plot(new.cr9.id.26_2100) # habitat suitability models based on maxent method

new.cr9.en.26_2100 <- ensemble(new.cr9.hsm.26_2100, new.preds26_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cr9.en.26_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.cr9.hsm.26_2100)

new.cr9.avr.26_2100 <- calc(new.cr9.id.26_2100, mean)
plot(new.cr9.avr.26_2100)

new.cr_id.26_2100 <- getVarImp(new.cr9.hsm.26_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cr_id.26_2100

plot(new.cr_id.26_2100,'cor')

#2050
#RCP45

# Generate pseudo-absences and sdm data preparation
new.cr9.sdm.45_2050 <- sdmData(species~., cr9.new, predictors = new.preds45_2050)

new.cr9.sdm.45_2050 # still presence-only, 57 records

# pseudo-absences
new.cr9.preabs.45_2050 <- sdmData(species~., cr9.new, predictors = new.preds45_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cr9.preabs.45_2050 # presence-background 1057, 1000 + 57 (pseudo-absences + real presence)

plot(new.cr9.preabs.45_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cr9.hsm.45_2050 <- sdm(species~., new.cr9.preabs.45_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cr9.hsm.45_2050
gui(new.cr9.hsm.45_2050)

new.cr9.id.45_2050 <- predict(new.cr9.hsm.45_2050, new.preds45_2050)

plot(new.cr9.id.45_2050) # habitat suitability models based on maxent method

new.cr9.en.45_2050 <- ensemble(new.cr9.hsm.45_2050, new.preds45_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cr9.en.45_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.cr9.hsm.45_2050)

new.cr9.avr.45_2050 <- calc(new.cr9.id.45_2050, mean)
plot(new.cr9.avr.45_2050)

new.cr_id.45_2050 <- getVarImp(new.cr9.hsm.45_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cr_id.45_2050

plot(new.cr_id.45_2050,'cor')

#2100
#RCP45

# Generate pseudo-absences and sdm data preparation
new.cr9.sdm.45_2100 <- sdmData(species~., cr9.new, predictors = new.preds45_2100)

new.cr9.sdm.45_2100 # still presence-only, 57 records

# pseudo-absences
new.cr9.preabs.45_2100 <- sdmData(species~., cr9.new, predictors = new.preds45_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cr9.preabs.45_2100 # presence-background 1057, 1000 + 57 (pseudo-absences + real presence)

plot(new.cr9.preabs.45_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cr9.hsm.45_2100 <- sdm(species~., new.cr9.preabs.45_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cr9.hsm.45_2100
gui(new.cr9.hsm.45_2100)

new.cr9.id.45_2100 <- predict(new.cr9.hsm.45_2100, new.preds45_2100)

plot(new.cr9.id.45_2100) # habitat suitability models based on maxent method

new.cr9.en.45_2100 <- ensemble(new.cr9.hsm.45_2100, new.preds45_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cr9.en.45_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.cr9.hsm.45_2100)

new.cr9.avr.45_2100 <- calc(new.cr9.id.45_2100, mean)
plot(new.cr9.avr.45_2100)

new.cr_id.45_2100 <- getVarImp(new.cr9.hsm.45_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cr_id.45_2100

plot(new.cr_id.45_2100,'cor')

#2050
#RCP85

# Generate pseudo-absences and sdm data preparation
new.cr9.sdm.85_2050 <- sdmData(species~., cr9.new, predictors = new.preds85_2050)

new.cr9.sdm.85_2050 # still presence-only, 57 records

# pseudo-absences
new.cr9.preabs.85_2050 <- sdmData(species~., cr9.new, predictors = new.preds85_2050, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cr9.preabs.85_2050 # presence-background 1057, 1000 + 57 (pseudo-absences + real presence)

plot(new.cr9.preabs.85_2050)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cr9.hsm.85_2050 <- sdm(species~., new.cr9.preabs.85_2050, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cr9.hsm.85_2050
gui(new.cr9.hsm.85_2050)

new.cr9.id.85_2050 <- predict(new.cr9.hsm.85_2050, new.preds85_2050)

plot(new.cr9.id.85_2050) # habitat suitability models based on maxent method

new.cr9.en.85_2050 <- ensemble(new.cr9.hsm.85_2050, new.preds85_2050,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cr9.en.85_2050)
plot(indonesia, add=T)

#Response curve
rcurve(new.cr9.hsm.85_2050)

new.cr9.avr.85_2050 <- calc(new.cr9.id.85_2050, mean)
plot(new.cr9.avr.85_2050)

new.cr_id.85_2050 <- getVarImp(new.cr9.hsm.85_2050, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cr_id.85_2050

plot(new.cr_id.85_2050,'cor')

#2100
#RCP85

# Generate pseudo-absences and sdm data preparation
new.cr9.sdm.85_2100 <- sdmData(species~., cr9.new, predictors = new.preds85_2100)

new.cr9.sdm.85_2100 # still presence-only, 57 records

# pseudo-absences
new.cr9.preabs.85_2100 <- sdmData(species~., cr9.new, predictors = new.preds85_2100, bg = list(n = 1000, method = 'gRandom')) # generating geo-random-based pseudo-absences

new.cr9.preabs.85_2100 # presence-background 1057, 1000 + 57 (pseudo-absences + real presence)

plot(new.cr9.preabs.85_2100)

# Modelling
library('parallel')
getmethodNames() # info about statistical methods available from the package


new.cr9.hsm.85_2100 <- sdm(species~., new.cr9.preabs.85_2100, methods= 'maxent',
                       replication=c('boot'), test.percent=30, n=10)
new.cr9.hsm.85_2100
gui(new.cr9.hsm.85_2100)

new.cr9.id.85_2100 <- predict(new.cr9.hsm.85_2100, new.preds85_2100)

plot(new.cr9.id.85_2100) # habitat suitability models based on maxent method

new.cr9.en.85_2100 <- ensemble(new.cr9.hsm.85_2100, new.preds85_2100,
                               setting = list(method='weighted', stat='AUC'))
plot(new.cr9.en.85_2100)
plot(indonesia, add=T)

#Response curve
rcurve(new.cr9.hsm.85_2100)

new.cr9.avr.85_2100 <- calc(new.cr9.id.85_2100, mean)
plot(new.cr9.avr.85_2100)

new.cr_id.85_2100 <- getVarImp(new.cr9.hsm.85_2100, id=1:10,wtest='test.dep') # specify the modelIDs of the models

new.cr_id.85_2100

plot(new.cr_id.85_2100,'cor')
