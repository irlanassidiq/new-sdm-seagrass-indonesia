# new-sdm-seagrass-indonesia

In this project, 2 types of datas are required (Occurrences and Predictors)
Occurrences data contained coordinates (longitude and latitude) based on field observation and combined with cloud platform (GBIF, OBIS and metadata (JaLTER))
Predictors is a raster data contain value of each parameters in a raster cell, this project used the data stored in Bio-ORACLE (bio-oracle.org), which possessed the capacity to forecast as well

Step 1 (occurrences.r)
#compiling ocurrences data into one csv files

Step 2 (new.r)
#In this step, raster data that have been obtained from Bio-ORACLE need to be adjusted into study area (Indonesia) #Next step including masking the predictor rasters with up to 60 meters depth (no seagrass can be found beyond that!) #Correlation test then performed to avoid collinearity between predictors

Step 3 (thinning.r)
#Data cleaning is required to avoid model overfitting #In this project thinning is performed as a way to clean ocurrences data #Because our predictors raster cell size is 9.2 km sq, there must not be more than one ocurrence in one cell #This method really powerful when cleaning condensed ocurrences

Step 4 (new future projection.r)
#Prior on modeling, creating pseudo-absences is needed, because our data contained Presence-only data, the model need to be train with absences data #Algorithm used is MaxEnt, Maximum Entropy for long. Is using similar method like Random Forest #AUC need to be checked after the computer done its work, if AUC > 0.8, the model is powerful enough to perform future projection #The modeling is executed with 10 bootstrapping which is the ensembled into one output

Step 5 (new habitat gain loss.r)
to determine threshold value for each species

The end product gave us a distinguish habitat gain and loss along the future projection for each species
