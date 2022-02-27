library('raster')
library('sdm')

#function to calculate percentage of gain or loss======================================
fun.gl <- function(x, y) #x is for new.the current model
{ x1=freq(x, value= 1) # y is for new.the rcp model
y1=freq(y, value= 1)
z =((x1-y1)/x1)*100
return(z)
}

fun.gl2 <- function(x, y) #x is for new.the current model
{ x1=freq(x, value= 0) # y is for new.the rcp model
y1=freq(y, value= 0)
z =((x1-y1)/x1)*100
return(z)
}

#if new.the value is positive new.then it is a loss (current model is higher new.than rcp). 
##if new.the value is negative  new.then it is a gain (current model is lower new.than rcp).

#function to calculate values within conserved area======================================
fun.gain <- function(x, y) #x is for new.the current model
{ x1=mask(x, y)
y1=freq(x1, value= -1)# y is for new.the rcp model
return(y1)
}


fun.loss <- function(x, y) #x is for new.the current model
{ x1=mask(x, y)
y1=freq(x1, value= 1) # y is for new.the rcp model
return(y1)
}

#function to calculate values outside conserved area======================================
fun.gain.out <- function(x, y) #x is for new.the current model
{ x1=freq(x, value= -1) # y is for new.the rcp model
z= x1 - y
return(z)
}


fun.loss.out <- function(x, y) #x is for new.the current model
{ x1=freq(x, value= 1) # y is for new.the rcp model
z= x1 - y
return(z)
}

#Conservation area================================
conserved_area <- readOGR('D:/Project/snew.hp/Kawasan konservasi/Shp_Kawasan_Konservasi_2021.shp')
plot(conserved_area)
#Thalassia hemprichii======================================
## setting new.threshold
new.th.f <- as.data.frame(th9.preabs.new)
new.th.f <- data.frame(species=new.th.f$species, coordinates(th9.preabs.new))

xy.new.th <- as.matrix(new.th.f[,c('lon','lat')])

pdvalue.new.th <- extract(th9.en.new, xy.new.th) #extracting new.the predictor value for evaluate function below

ev.new.th <- evaluates(new.th.f$species, pdvalue.new.th) #new.threshold value based on max(se+sp) column (Babak Naimi Tutorial)
ev.new.th@statistics
new.th <- ev.new.th@threshold_based$threshold[2] #0.4644985

#presence-absence current
new.th.now <- raster(th9.en.new)
new.th.now [] <- ifelse(th9.en.new[] >= new.th, 1, 0)
plot(new.th.now)
freq(new.th.now)
 
now.th.inside <- fun.loss(new.th.now, conserved_area) #not to count the loss, read the function's detail about the formula above

#function
fun.now.out <- function(x, y) #x is for new.the current model
{ x1=freq(x, value= 1) # y is for new.the rcp model
z= x1 - y
return(z)
}
now.th.outside <- fun.now.out(new.th.now, now.th.inside)

#RCP26
##2050
new.th26.2050 <- raster(th9.en.26_2050)
new.th26.2050 [] <- ifelse(th9.en.26_2050[] >= new.th, 1, 0)
plot(new.th26.2050)
freq(new.th26.2050)

#new calc
th26.2050.inside <- fun.loss(new.th26.2050, conserved_area)
th26.2050.outside <- fun.now.out(new.th26.2050, th26.2050.inside)

new.th26_now_2050 <- new.th.now - new.th26.2050
plot(new.th26_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 2.6')
freq(new.th26_now_2050)

new.th26_gain_in2050 <- fun.gain(new.th26_now_2050, conserved_area) # gain habitat within conservation area (133 cell)
new.th26_loss_in2050 <- fun.loss(new.th26_now_2050, conserved_area) # loss habitat within conservation area (133 cell)

new.th26_gain_out2050 <-fun.gain.out(new.th26_now_2050, new.th26_gain_in2050) # 944
new.th26_loss_out2050 <-fun.loss.out(new.th26_now_2050, new.th26_loss_in2050) # 1069

##2100
new.th26.2100 <- raster(th9.en.26_2100)
new.th26.2100 [] <- ifelse(th9.en.26_2100[] >= new.th, 1, 0)
plot(new.th26.2100)
freq(new.th26.2100)

#new calc
th26.2100.inside <- fun.loss(new.th26.2100, conserved_area)
th26.2100.outside <- fun.now.out(new.th26.2100, th26.2100.inside)

new.th26_now_2100 <- new.th.now - new.th26.2100
plot(new.th26_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 2.6')
freq(new.th26_now_2100)

new.th26_gain_in2100 <- fun.gain(new.th26_now_2100, conserved_area) # gain habitat within conservation area (140 cell)
new.th26_loss_in2100 <- fun.loss(new.th26_now_2100, conserved_area) # loss habitat within conservation area (173 cell)

new.th26_gain_out2100 <-fun.gain.out(new.th26_now_2100, new.th26_gain_in2100) # 1275
new.th26_loss_out2100 <-fun.loss.out(new.th26_now_2100, new.th26_loss_in2100) # 1260

#RCP45
##2050
new.th45.2050 <- raster(th9.en.45_2050)
new.th45.2050 [] <- ifelse(th9.en.45_2050[] >= new.th, 1, 0)
plot(new.th45.2050)
freq(new.th45.2050)

#new calc
th45.2050.inside <- fun.loss(new.th45.2050, conserved_area)
th45.2050.outside <- fun.now.out(new.th45.2050, th45.2050.inside)

new.th45_now_2050 <- new.th.now - new.th45.2050
plot(new.th45_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 4.5')
freq(new.th45_now_2050)

new.th45_gain_in2050 <- fun.gain(new.th45_now_2050, conserved_area) # gain habitat within conservation area (121 cell)
new.th45_loss_in2050 <- fun.loss(new.th45_now_2050, conserved_area) # loss habitat within conservation area (134 cell)

new.th45_gain_out2050 <-fun.gain.out(new.th45_now_2050, new.th45_gain_in2050) # 1558
new.th45_loss_out2050 <-fun.loss.out(new.th45_now_2050, new.th45_loss_in2050) # 937

##2100
new.th45.2100 <- raster(th9.en.45_2100)
new.th45.2100 [] <- ifelse(th9.en.45_2100[] >= new.th, 1, 0)
plot(new.th45.2100)
freq(new.th45.2100)

#new calc
th45.2100.inside <- fun.loss(new.th45.2100, conserved_area)
th45.2100.outside <- fun.now.out(new.th45.2100, th45.2100.inside)

new.th45_now_2100 <- new.th.now - new.th45.2100
plot(new.th45_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 4.5')
freq(new.th45_now_2100)

new.th45_gain_in2100 <- fun.gain(new.th45_now_2100, conserved_area) # gain habitat within conservation area (127 cell)
new.th45_loss_in2100 <- fun.loss(new.th45_now_2100, conserved_area) # loss habitat within conservation area (145 cell)

new.th45_gain_out2100 <-fun.gain.out(new.th45_now_2100, new.th45_gain_in2100) # 944
new.th45_loss_out2100 <-fun.loss.out(new.th45_now_2100, new.th45_loss_in2100) # 1089

#RCP85
##2050
new.th85.2050 <- raster(th9.en.85_2050)
new.th85.2050 [] <- ifelse(th9.en.85_2050[] >= new.th, 1, 0)
plot(new.th85.2050)
freq(new.th85.2050)

#new calc
th85.2050.inside <- fun.loss(new.th85.2050, conserved_area)
th85.2050.outside <- fun.now.out(new.th85.2050, th85.2050.inside)

new.th85_now_2050 <- new.th.now - new.th85.2050
plot(new.th85_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 8.5')
freq(new.th85_now_2050)

new.th85_gain_in2050 <- fun.gain(new.th85_now_2050, conserved_area) # gain habitat winew.thin conservation area (115 cell)
new.th85_loss_in2050 <- fun.loss(new.th85_now_2050, conserved_area) # loss habitat winew.thin conservation area (170 cell)

new.th85_gain_out2050 <-fun.gain.out(new.th85_now_2050, new.th85_gain_in2050) # 912
new.th85_loss_out2050 <-fun.loss.out(new.th85_now_2050, new.th85_loss_in2050) # 1184

##2100
new.th85.2100 <- raster(th9.en.85_2100)
new.th85.2100 [] <- ifelse(th9.en.85_2100[] >= new.th, 1, 0)
plot(new.th85.2100)
freq(new.th85.2100)

#new calc
th85.2100.inside <- fun.loss(new.th85.2100, conserved_area)
th85.2100.outside <- fun.now.out(new.th85.2100, th85.2100.inside)

new.th85_now_2100 <- new.th.now - new.th85.2100
plot(new.th85_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 8.5')
freq(new.th85_now_2100)

new.th85_gain_in2100 <- fun.gain(new.th85_now_2100, conserved_area) # gain habitat within conservation area (125 cell)
new.th85_loss_in2100 <- fun.loss(new.th85_now_2100, conserved_area) # loss habitat within conservation area (177 cell)

new.th85_gain_out2100 <-fun.gain.out(new.th85_now_2100, new.th85_gain_in2100) # 687
new.th85_loss_out2100 <-fun.loss.out(new.th85_now_2100, new.th85_loss_in2100) # 1194

#Syringodium isoetifolium======================================
## setting new.threshold
new.si.f <- as.data.frame(si9.preabs.new)
new.si.f <- data.frame(species=new.si.f$species, coordinates(si9.preabs.new))

xy.new.si <- as.matrix(new.si.f[,c('lon','lat')])

pdvalue.new.si <- extract(si9.en.new, xy.new.si) #extracting new.the predictor value for evaluate function below

ev.new.si <- evaluates(new.si.f$species, pdvalue.new.si) #new.threshold value based on max(se+sp) column (Babak Naimi Tutorial)
ev.new.si@statistics
new.si <- ev.new.si@threshold_based$threshold[2] #0.3704413

#presence-absence current
new.si.now <- raster(si9.en.new)
new.si.now [] <- ifelse(si9.en.new[] >= new.si, 1, 0)
plot(new.si.now)
freq(new.si.now)

now.si.inside <- fun.loss(new.si.now, conserved_area) #not to count the loss, read the function's detail about the formula above
now.si.outside <- fun.now.out(new.si.now, now.si.inside)

#RCP26
##2050
new.si26.2050 <- raster(new.si9.en.26_2050)
new.si26.2050 [] <- ifelse(new.si9.en.26_2050[] >= new.si, 1, 0)
plot(new.si26.2050)
freq(new.si26.2050)

#new calc
si26.2050.inside <- fun.loss(new.si26.2050, conserved_area)
si26.2050.outside <- fun.now.out(new.si26.2050, si26.2050.inside)

new.si26_now_2050 <- new.si.now - new.si26.2050
plot(new.si26_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 2.6')
freq(new.si26_now_2050)

new.si26_gain_in2050 <- fun.gain(new.si26_now_2050, conserved_area) # gain habitat within conservation area (50 cell)
new.si26_loss_in2050 <- fun.loss(new.si26_now_2050, conserved_area) # loss habitat within conservation area (57 cell)

new.si26_gain_out2050 <-fun.gain.out(new.si26_now_2050, new.si26_gain_in2050) # 603
new.si26_loss_out2050 <-fun.loss.out(new.si26_now_2050, new.si26_loss_in2050) # 504

##2100
new.si26.2100 <- raster(new.si9.en.26_2100)
new.si26.2100 [] <- ifelse(new.si9.en.26_2100[] >= new.si, 1, 0)
plot(new.si26.2100)
freq(new.si26.2100)

#new calc
si26.2100.inside <- fun.loss(new.si26.2100, conserved_area)
si26.2100.outside <- fun.now.out(new.si26.2100, si26.2100.inside)

new.si26_now_2100 <- new.si.now - new.si26.2100
plot(new.si26_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 2.6')
freq(new.si26_now_2100)

new.si26_gain_in2100 <- fun.gain(new.si26_now_2100, conserved_area) # gain habitat winew.thin conservation area (70 cell)
new.si26_loss_in2100 <- fun.loss(new.si26_now_2100, conserved_area) # gain habitat winew.thin conservation area (37 cell)

new.si26_gain_out2100 <-fun.gain.out(new.si26_now_2100, new.si26_gain_in2100) # 562
new.si26_loss_out2100 <-fun.loss.out(new.si26_now_2100, new.si26_loss_in2100) # 341

#RCP45
##2050
new.si45.2050 <- raster(new.si9.en.45_2050)
new.si45.2050 [] <- ifelse(new.si9.en.45_2050[] >= new.si, 1, 0)
plot(new.si45.2050)
freq(new.si45.2050)

#new calc
si45.2050.inside <- fun.loss(new.si45.2050, conserved_area)
si45.2050.outside <- fun.now.out(new.si45.2050, si45.2050.inside)

new.si45_now_2050 <- new.si.now - new.si45.2050
plot(new.si45_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 4.5')
freq(new.si45_now_2050)

new.si45_gain_in2050 <- fun.gain(new.si45_now_2050, conserved_area) # gain habitat winew.thin conservation area (64 cell)
new.si45_loss_in2050 <- fun.loss(new.si45_now_2050, conserved_area) # gain habitat winew.thin conservation area (26 cell)

new.si45_gain_out2050 <-fun.gain.out(new.si45_now_2050, new.si45_gain_in2050) # 772
new.si45_loss_out2050 <-fun.loss.out(new.si45_now_2050, new.si45_loss_in2050) # 269

##2100
new.si45.2100 <- raster(new.si9.en.45_2100)
new.si45.2100 [] <- ifelse(new.si9.en.45_2100[] >= new.si, 1, 0)
plot(new.si45.2100)
freq(new.si45.2100)

#new calc
si45.2100.inside <- fun.loss(new.si45.2100, conserved_area)
si45.2100.outside <- fun.now.out(new.si45.2100, si45.2100.inside)

new.si45_now_2100 <- new.si.now - new.si45.2100
plot(new.si45_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 4.5')
freq(new.si45_now_2100)

new.si45_gain_in2100 <- fun.gain(new.si45_now_2100, conserved_area) # gain habitat winew.thin conservation area (36 cell)
new.si45_loss_in2100 <- fun.loss(new.si45_now_2100, conserved_area) # loss habitat winew.thin conservation area (25 cell)

new.si45_gain_out2100 <-fun.gain.out(new.si45_now_2100, new.si45_gain_in2100) # 338
new.si45_loss_out2100 <-fun.loss.out(new.si45_now_2100, new.si45_loss_in2100) # 415

#RCP85
##2050
new.si85.2050 <- raster(new.si9.en.85_2050)
new.si85.2050 [] <- ifelse(new.si9.en.85_2050[] >= new.si, 1, 0)
plot(new.si85.2050)
freq(new.si85.2050)

#new calc
si85.2050.inside <- fun.loss(new.si85.2050, conserved_area)
si85.2050.outside <- fun.now.out(new.si85.2050, si85.2050.inside)

new.si85_now_2050 <- new.si.now - new.si85.2050
plot(new.si85_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 8.5')
freq(new.si85_now_2050)

new.si85_gain_in2050 <- fun.gain(new.si85_now_2050, conserved_area) # gain habitat winew.thin conservation area (59 cell)
new.si85_loss_in2050 <- fun.loss(new.si85_now_2050, conserved_area) # gain habitat winew.thin conservation area (48 cell)

new.si85_gain_out2050 <-fun.gain.out(new.si85_now_2050, new.si85_gain_in2050) # 725
new.si85_loss_out2050 <-fun.loss.out(new.si85_now_2050, new.si85_loss_in2050) # 305

##2100
new.si85.2100 <- raster(new.si9.en.85_2100)
new.si85.2100 [] <- ifelse(new.si9.en.85_2100[] >= new.si, 1, 0)
plot(new.si85.2100)
freq(new.si85.2100)

#new calc
si85.2100.inside <- fun.loss(new.si85.2100, conserved_area)
si85.2100.outside <- fun.now.out(new.si85.2100, si85.2100.inside)

new.si85_now_2100 <- new.si.now - new.si85.2100
plot(new.si85_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 8.5')
freq(new.si85_now_2100)

new.si85_gain_in2100 <- fun.gain(new.si85_now_2100, conserved_area) # gain habitat winew.thin conservation area (95 cell)
new.si85_loss_in2100 <- fun.loss(new.si85_now_2100, conserved_area) # gain habitat winew.thin conservation area (61 cell)

new.si85_gain_out2100 <-fun.gain.out(new.si85_now_2100, new.si85_gain_in2100) # 725
new.si85_loss_out2100 <-fun.loss.out(new.si85_now_2100, new.si85_loss_in2100) # 552

#Halophila ovalis======================================
## setting new.threshold
new.ho.f <- as.data.frame(ho9.preabs.new)
new.ho.f <- data.frame(species=new.ho.f$species, coordinates(ho9.preabs.new))

xy.new.ho <- as.matrix(new.ho.f[,c('lon','lat')])

pdvalue.new.ho <- extract(ho9.en.new, xy.new.ho) #extracting new.the predictor value for evaluate function below

ev.new.ho <- evaluates(new.ho.f$species, pdvalue.new.ho) #new.threshold value based on max(se+sp) column (Babak Naimi Tutorial)
ev.new.ho@statistics
new.ho <- ev.new.ho@threshold_based$threshold[2] #0.4547908

#presence-absence current
new.ho.now <- raster(ho9.en.new)
new.ho.now [] <- ifelse(ho9.en.new[] >= new.ho, 1, 0)
plot(new.ho.now)
freq(new.ho.now)

now.ho.inside <- fun.loss(new.ho.now, conserved_area) #not to count the loss, read the function's detail about the formula above
now.ho.outside <- fun.now.out(new.ho.now, now.ho.inside)

#RCP26
##2050
new.ho26.2050 <- raster(new.ho9.en.26_2050)
new.ho26.2050 [] <- ifelse(new.ho9.en.26_2050[] >= new.ho, 1, 0)
plot(new.ho26.2050)
freq(new.ho26.2050)

#new calc
ho26.2050.inside <- fun.loss(new.ho26.2050, conserved_area)
ho26.2050.outside <- fun.now.out(new.ho26.2050, ho26.2050.inside)

new.ho26_now_2050 <- new.ho.now - new.ho26.2050
plot(new.ho26_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 2.6')
freq(new.ho26_now_2050)

new.ho26_gain_in2050 <- fun.gain(new.ho26_now_2050, conserved_area) # gain habitat winew.thin conservation area (66 cell)
new.ho26_loss_in2050 <- fun.loss(new.ho26_now_2050, conserved_area) # gain habitat winew.thin conservation area (108 cell)

new.ho26_gain_out2050 <-fun.gain.out(new.ho26_now_2050, new.ho26_gain_in2050) # 469
new.ho26_loss_out2050 <-fun.loss.out(new.ho26_now_2050, new.ho26_loss_in2050) # 840

##2100
new.ho26.2100 <- raster(new.ho9.en.26_2100)
new.ho26.2100 [] <- ifelse(new.ho9.en.26_2100[] >= new.ho, 1, 0)
plot(new.ho26.2100)
freq(new.ho26.2100)

#new calc
ho26.2100.inside <- fun.loss(new.ho26.2100, conserved_area)
ho26.2100.outside <- fun.now.out(new.ho26.2100, ho26.2100.inside)

new.ho26_now_2100 <- new.ho.now - new.ho26.2100
plot(new.ho26_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 2.6')
freq(new.ho26_now_2100)

new.ho26_gain_in2100 <- fun.gain(new.ho26_now_2100, conserved_area) # gain habitat winew.thin conservation area (61 cell)
new.ho26_loss_in2100 <- fun.loss(new.ho26_now_2100, conserved_area) # gain habitat winew.thin conservation area (115 cell)

new.ho26_gain_out2100 <-fun.gain.out(new.ho26_now_2100, new.ho26_gain_in2100) # 473
new.ho26_loss_out2100 <-fun.loss.out(new.ho26_now_2100, new.ho26_loss_in2100) # 869

#RCP45
##2050
new.ho45.2050 <- raster(new.ho9.en.45_2050)
new.ho45.2050 [] <- ifelse(new.ho9.en.45_2050[] >= new.ho, 1, 0)
plot(new.ho45.2050)
freq(new.ho45.2050)

#new calc
ho45.2050.inside <- fun.loss(new.ho45.2050, conserved_area)
ho45.2050.outside <- fun.now.out(new.ho45.2050, ho45.2050.inside)

new.ho45_now_2050 <- new.ho.now - new.ho45.2050
plot(new.ho45_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 4.5')
freq(new.ho45_now_2050)

new.ho45_gain_in2050 <- fun.gain(new.ho45_now_2050, conserved_area) # gain habitat winew.thin conservation area (69 cell)
new.ho45_loss_in2050 <- fun.loss(new.ho45_now_2050, conserved_area) # gain habitat winew.thin conservation area (62 cell)

new.ho45_gain_out2050 <-fun.gain.out(new.ho45_now_2050, new.ho45_gain_in2050) # 915
new.ho45_loss_out2050 <-fun.loss.out(new.ho45_now_2050, new.ho45_loss_in2050) # 1022

##2100
new.ho45.2100 <- raster(new.ho9.en.45_2100)
new.ho45.2100 [] <- ifelse(new.ho9.en.45_2100[] >= new.ho, 1, 0)
plot(new.ho45.2100)
freq(new.ho45.2100)

#new calc
ho45.2100.inside <- fun.loss(new.ho45.2100, conserved_area)
ho45.2100.outside <- fun.now.out(new.ho45.2100, ho45.2100.inside)

new.ho45_now_2100 <- new.ho.now - new.ho45.2100
plot(new.ho45_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 4.5')
freq(new.ho45_now_2100)

new.ho45_gain_in2100 <- fun.gain(new.ho45_now_2100, conserved_area) # gain habitat winew.thin conservation area (28 cell)
new.ho45_loss_in2100 <- fun.loss(new.ho45_now_2100, conserved_area) # gain habitat winew.thin conservation area (113 cell)

new.ho45_gain_out2100 <-fun.gain.out(new.ho45_now_2100, new.ho45_gain_in2100) # 213
new.ho45_loss_out2100 <-fun.loss.out(new.ho45_now_2100, new.ho45_loss_in2100) # 899

#RCP85
##2050
new.ho85.2050 <- raster(new.ho9.en.85_2050)
new.ho85.2050 [] <- ifelse(new.ho9.en.85_2050[] >= new.ho, 1, 0)
plot(new.ho85.2050)
freq(new.ho85.2050)

#new calc
ho85.2050.inside <- fun.loss(new.ho85.2050, conserved_area)
ho85.2050.outside <- fun.now.out(new.ho85.2050, ho85.2050.inside)

new.ho85_now_2050 <- new.ho.now - new.ho85.2050
plot(new.ho85_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 8.5')
freq(new.ho85_now_2050)

new.ho85_gain_in2050 <- fun.gain(new.ho85_now_2050, conserved_area) # gain habitat winew.thin conservation area (43 cell)
new.ho85_loss_in2050 <- fun.loss(new.ho85_now_2050, conserved_area) # gain habitat winew.thin conservation area (101 cell)

new.ho85_gain_out2050 <-fun.gain.out(new.ho85_now_2050, new.ho85_gain_in2050) # 486
new.ho85_loss_out2050 <-fun.loss.out(new.ho85_now_2050, new.ho85_loss_in2050) # 872

##2100
new.ho85.2100 <- raster(new.ho9.en.85_2100)
new.ho85.2100 [] <- ifelse(new.ho9.en.85_2100[] >= new.ho, 1, 0)
plot(new.ho85.2100)
freq(new.ho85.2100)

#new calc
ho85.2100.inside <- fun.loss(new.ho85.2100, conserved_area)
ho85.2100.outside <- fun.now.out(new.ho85.2100, ho85.2100.inside)

new.ho85_now_2100 <- new.ho.now - new.ho85.2100
plot(new.ho85_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 8.5')
freq(new.ho85_now_2100)

new.ho85_gain_in2100 <- fun.gain(new.ho85_now_2100, conserved_area) # gain habitat winew.thin conservation area (47 cell)
new.ho85_loss_in2100 <- fun.loss(new.ho85_now_2100, conserved_area) # gain habitat winew.thin conservation area (111 cell)

new.ho85_gain_out2100 <-fun.gain.out(new.ho85_now_2100, new.ho85_gain_in2100) # 235
new.ho85_loss_out2100 <-fun.loss.out(new.ho85_now_2100, new.ho85_loss_in2100) # 896

#Halodhule uninervis======================================
## setting new.threshold
new.hu.f <- as.data.frame(hu9.preabs.new)
new.hu.f <- data.frame(species=new.hu.f$species, coordinates(hu9.preabs.new))

xy.new.hu <- as.matrix(new.hu.f[,c('lon','lat')])

pdvalue.new.hu <- extract(hu9.en.new, xy.new.hu) #extracting new.the predictor value for evaluate function below

ev.new.hu <- evaluates(new.hu.f$species, pdvalue.new.hu) #new.threshold value based on max(se+sp) column (Babak Naimi Tutorial)
ev.new.hu@statistics
new.hu <- ev.new.hu@threshold_based$threshold[2] #0.3672805

#presence-absence current
new.hu.now <- raster(hu9.en.new)
new.hu.now [] <- ifelse(hu9.en.new[] >= new.hu, 1, 0)
plot(new.hu.now)
freq(new.hu.now)

now.hu.inside <- fun.loss(new.hu.now, conserved_area) #not to count the loss, read the function's detail about the formula above
now.hu.outside <- fun.now.out(new.hu.now, now.hu.inside)

#RCP26
##2050
new.hu26.2050 <- raster(new.hu9.en.26_2050)
new.hu26.2050 [] <- ifelse(new.hu9.en.26_2050[] >= new.hu, 1, 0)
plot(new.hu26.2050)
freq(new.hu26.2050)

#new calc
hu26.2050.inside <- fun.loss(new.hu26.2050, conserved_area)
hu26.2050.outside <- fun.now.out(new.hu26.2050, hu26.2050.inside)

new.hu26_now_2050 <- new.hu.now - new.hu26.2050
plot(new.hu26_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 2.6')
freq(new.hu26_now_2050)

new.hu26_gain_in2050 <- fun.gain(new.hu26_now_2050, conserved_area) # gain habitat winew.thin conservation area (86 cell)
new.hu26_loss_in2050 <- fun.loss(new.hu26_now_2050, conserved_area) # gain habitat winew.thin conservation area (89 cell)

new.hu26_gain_out2050 <-fun.gain.out(new.hu26_now_2050, new.hu26_gain_in2050) # 496
new.hu26_loss_out2050 <-fun.loss.out(new.hu26_now_2050, new.hu26_loss_in2050) # 1204

##2100
new.hu26.2100 <- raster(new.hu9.en.26_2100)
new.hu26.2100 [] <- ifelse(new.hu9.en.26_2100[] >= new.hu, 1, 0)
plot(new.hu26.2100)
freq(new.hu26.2100)

#new calc
hu26.2100.inside <- fun.loss(new.hu26.2100, conserved_area)
hu26.2100.outside <- fun.now.out(new.hu26.2100, hu26.2100.inside)

new.hu26_now_2100 <- new.hu.now - new.hu26.2100
plot(new.hu26_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 2.6')
freq(new.hu26_now_2100)

new.hu26_gain_in2100 <- fun.gain(new.hu26_now_2100, conserved_area) # gain habitat winew.thin conservation area (102 cell)
new.hu26_loss_in2100 <- fun.loss(new.hu26_now_2100, conserved_area) # gain habitat winew.thin conservation area (73 cell)

new.hu26_gain_out2100 <-fun.gain.out(new.hu26_now_2100, new.hu26_gain_in2100) # 654
new.hu26_loss_out2100 <-fun.loss.out(new.hu26_now_2100, new.hu26_loss_in2100) # 1120

#RCP45
##2050
new.hu45.2050 <- raster(new.hu9.en.45_2050)
new.hu45.2050 [] <- ifelse(new.hu9.en.45_2050[] >= new.hu, 1, 0)
plot(new.hu45.2050)
freq(new.hu45.2050)

#new calc
hu45.2050.inside <- fun.loss(new.hu45.2050, conserved_area)
hu45.2050.outside <- fun.now.out(new.hu45.2050, hu45.2050.inside)

new.hu45_now_2050 <- new.hu.now - new.hu45.2050
plot(new.hu45_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 4.5')
freq(new.hu45_now_2050)

new.hu45_gain_in2050 <- fun.gain(new.hu45_now_2050, conserved_area) # gain habitat winew.thin conservation area (130 cell)
new.hu45_loss_in2050 <- fun.loss(new.hu45_now_2050, conserved_area) # gain habitat winew.thin conservation area (55 cell)

new.hu45_gain_out2050 <-fun.gain.out(new.hu45_now_2050, new.hu45_gain_in2050) # 920
new.hu45_loss_out2050 <-fun.loss.out(new.hu45_now_2050, new.hu45_loss_in2050) # 808

##2100
new.hu45.2100 <- raster(new.hu9.en.45_2100)
new.hu45.2100 [] <- ifelse(new.hu9.en.45_2100[] >= new.hu, 1, 0)
plot(new.hu45.2100)
freq(new.hu45.2100)

#new calc
hu45.2100.inside <- fun.loss(new.hu45.2100, conserved_area)
hu45.2100.outside <- fun.now.out(new.hu45.2100, hu45.2100.inside)

new.hu45_now_2100 <- new.hu.now - new.hu45.2100
plot(new.hu45_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 4.5')
freq(new.hu45_now_2100)

new.hu45_gain_in2100 <- fun.gain(new.hu45_now_2100, conserved_area) # gain habitat winew.thin conservation area (52 cell)
new.hu45_loss_in2100 <- fun.loss(new.hu45_now_2100, conserved_area) # gain habitat winew.thin conservation area (72 cell)

new.hu45_gain_out2100 <-fun.gain.out(new.hu45_now_2100, new.hu45_gain_in2100) # 487
new.hu45_loss_out2100 <-fun.loss.out(new.hu45_now_2100, new.hu45_loss_in2100) # 784

#RCP85
##2050
new.hu85.2050 <- raster(new.hu9.en.85_2050)
new.hu85.2050 [] <- ifelse(new.hu9.en.85_2050[] >= new.hu, 1, 0)
plot(new.hu85.2050)
freq(new.hu85.2050)

#new calc
hu85.2050.inside <- fun.loss(new.hu85.2050, conserved_area)
hu85.2050.outside <- fun.now.out(new.hu85.2050, hu85.2050.inside)

new.hu85_now_2050 <- new.hu.now - new.hu85.2050
plot(new.hu85_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 8.5')
freq(new.hu85_now_2050)

new.hu85_gain_in2050 <- fun.gain(new.hu85_now_2050, conserved_area) # gain habitat winew.thin conservation area (52 cell)
new.hu85_loss_in2050 <- fun.loss(new.hu85_now_2050, conserved_area) # gain habitat winew.thin conservation area (72 cell)

new.hu85_gain_out2050 <-fun.gain.out(new.hu85_now_2050, new.hu85_gain_in2050) # 316
new.hu85_loss_out2050 <-fun.loss.out(new.hu85_now_2050, new.hu85_loss_in2050) # 1000

##2100
new.hu85.2100 <- raster(new.hu9.en.85_2100)
new.hu85.2100 [] <- ifelse(new.hu9.en.85_2100[] >= new.hu, 1, 0)
plot(new.hu85.2100)
freq(new.hu85.2100)

#new calc
hu85.2100.inside <- fun.loss(new.hu85.2100, conserved_area)
hu85.2100.outside <- fun.now.out(new.hu85.2100, hu85.2100.inside)

new.hu85_now_2100 <- new.hu.now - new.hu85.2100
plot(new.hu85_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 8.5')
freq(new.hu85_now_2100)

new.hu85_gain_in2100 <- fun.gain(new.hu85_now_2100, conserved_area) # gain habitat winew.thin conservation area (107 cell)
new.hu85_loss_in2100 <- fun.loss(new.hu85_now_2100, conserved_area) # gain habitat winew.thin conservation area (70 cell)

new.hu85_gain_out2100 <-fun.gain.out(new.hu85_now_2100, new.hu85_gain_in2100) # 837
new.hu85_loss_out2100 <-fun.loss.out(new.hu85_now_2100, new.hu85_loss_in2100) # 878

#Halodhule pinifolia======================================
## setting new.threshold
new.hp.f <- as.data.frame(hp9.preabs.new)
new.hp.f <- data.frame(species=new.hp.f$species, coordinates(hp9.preabs.new))

xy.new.hp <- as.matrix(new.hp.f[,c('lon','lat')])

pdvalue.new.hp <- extract(hp9.en.new, xy.new.hp) #extracting new.the predictor value for evaluate function below

ev.new.hp <- evaluates(new.hp.f$species, pdvalue.new.hp) #new.threshold value based on max(se+sp) column (Babak Naimi Tutorial)
ev.new.hp@statistics
new.hp <- ev.new.hp@threshold_based$threshold[2] #0.4346195

#presence-absence current
new.hp.now <- raster(hp9.en.new)
new.hp.now [] <- ifelse(hp9.en.new[] >= new.hp, 1, 0)
plot(new.hp.now)
freq(new.hp.now)

now.hp.inside <- fun.loss(new.hp.now, conserved_area) #not to count the loss, read the function's detail about the formula above
now.hp.outside <- fun.now.out(new.hp.now, now.hp.inside)

#RCP26
##2050
new.hp26.2050 <- raster(new.hp9.en.26_2050)
new.hp26.2050 [] <- ifelse(new.hp9.en.26_2050[] >= new.hp, 1, 0)
plot(new.hp26.2050)
freq(new.hp26.2050)

#new calc
hp26.2050.inside <- fun.loss(new.hp26.2050, conserved_area)
hp26.2050.outside <- fun.now.out(new.hp26.2050, hp26.2050.inside)

new.hp26_now_2050 <- new.hp.now - new.hp26.2050
plot(new.hp26_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 2.6')
freq(new.hp26_now_2050)

new.hp26_gain_in2050 <- fun.gain(new.hp26_now_2050, conserved_area) # gain habitat winew.thin conservation area (4 cell)
new.hp26_loss_in2050 <- fun.loss(new.hp26_now_2050, conserved_area) # gain habitat winew.thin conservation area (168 cell)

new.hp26_gain_out2050 <-fun.gain.out(new.hp26_now_2050, new.hp26_gain_in2050) # 108
new.hp26_loss_out2050 <-fun.loss.out(new.hp26_now_2050, new.hp26_loss_in2050) # 1242

##2100
new.hp26.2100 <- raster(new.hp9.en.26_2100)
new.hp26.2100 [] <- ifelse(new.hp9.en.26_2100[] >= new.hp, 1, 0)
plot(new.hp26.2100)
freq(new.hp26.2100)

#new calc
hp26.2100.inside <- fun.loss(new.hp26.2100, conserved_area)
hp26.2100.outside <- fun.now.out(new.hp26.2100, hp26.2100.inside)

new.hp26_now_2100 <- new.hp.now - new.hp26.2100
plot(new.hp26_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 2.6')
freq(new.hp26_now_2100)

new.hp26_gain_in2100 <- fun.gain(new.hp26_now_2100, conserved_area) # gain habitat winew.thin conservation area (79 cell)
new.hp26_loss_in2100 <- fun.loss(new.hp26_now_2100, conserved_area) # gain habitat winew.thin conservation area (61 cell)

new.hp26_gain_out2100 <-fun.gain.out(new.hp26_now_2100, new.hp26_gain_in2100) # 535
new.hp26_loss_out2100 <-fun.loss.out(new.hp26_now_2100, new.hp26_loss_in2100) # 588

#RCP45
##2050
new.hp45.2050 <- raster(new.hp9.en.45_2050)
new.hp45.2050 [] <- ifelse(new.hp9.en.45_2050[] >= new.hp, 1, 0)
plot(new.hp45.2050)
freq(new.hp45.2050)

#new calc
hp45.2050.inside <- fun.loss(new.hp45.2050, conserved_area)
hp45.2050.outside <- fun.now.out(new.hp45.2050, hp45.2050.inside)

new.hp45_now_2050 <- new.hp.now - new.hp45.2050
plot(new.hp45_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 4.5')
freq(new.hp45_now_2050)

new.hp45_gain_in2050 <- fun.gain(new.hp45_now_2050, conserved_area) # gain habitat winew.thin conservation area (69 cell)
new.hp45_loss_in2050 <- fun.loss(new.hp45_now_2050, conserved_area) # gain habitat winew.thin conservation area (91 cell)

new.hp45_gain_out2050 <-fun.gain.out(new.hp45_now_2050, new.hp45_gain_in2050) # 606
new.hp45_loss_out2050 <-fun.loss.out(new.hp45_now_2050, new.hp45_loss_in2050) # 662

##2100
new.hp45.2100 <- raster(new.hp9.en.45_2100)
new.hp45.2100 [] <- ifelse(new.hp9.en.45_2100[] >= new.hp, 1, 0)
plot(new.hp45.2100)
freq(new.hp45.2100)

#new calc
hp45.2100.inside <- fun.loss(new.hp45.2100, conserved_area)
hp45.2100.outside <- fun.now.out(new.hp45.2100, hp45.2100.inside)

new.hp45_now_2100 <- new.hp.now - new.hp45.2100
plot(new.hp45_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 4.5')
freq(new.hp45_now_2100)

new.hp45_gain_in2100 <- fun.gain(new.hp45_now_2100, conserved_area) # gain habitat winew.thin conservation area (80 cell)
new.hp45_loss_in2100 <- fun.loss(new.hp45_now_2100, conserved_area) # gain habitat winew.thin conservation area (66 cell)

new.hp45_gain_out2100 <-fun.gain.out(new.hp45_now_2100, new.hp45_gain_in2100) # 825
new.hp45_loss_out2100 <-fun.loss.out(new.hp45_now_2100, new.hp45_loss_in2100) # 574

#RCP85
##2050
new.hp85.2050 <- raster(new.hp9.en.85_2050)
new.hp85.2050 [] <- ifelse(new.hp9.en.85_2050[] >= new.hp, 1, 0)
plot(new.hp85.2050)
freq(new.hp85.2050)

#new calc
hp85.2050.inside <- fun.loss(new.hp85.2050, conserved_area)
hp85.2050.outside <- fun.now.out(new.hp85.2050, hp85.2050.inside)

new.hp85_now_2050 <- new.hp.now - new.hp85.2050
plot(new.hp85_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 8.5')
freq(new.hp85_now_2050)

new.hp85_gain_in2050 <- fun.gain(new.hp85_now_2050, conserved_area) # gain habitat winew.thin conservation area (65 cell)
new.hp85_loss_in2050 <- fun.loss(new.hp85_now_2050, conserved_area) # gain habitat winew.thin conservation area (83 cell)

new.hp85_gain_out2050 <-fun.gain.out(new.hp85_now_2050, new.hp85_gain_in2050) # 823
new.hp85_loss_out2050 <-fun.loss.out(new.hp85_now_2050, new.hp85_loss_in2050) # 608

##2100
new.hp85.2100 <- raster(new.hp9.en.85_2100)
new.hp85.2100 [] <- ifelse(new.hp9.en.85_2100[] >= new.hp, 1, 0)
plot(new.hp85.2100)
freq(new.hp85.2100)

#new calc
hp85.2100.inside <- fun.loss(new.hp85.2100, conserved_area)
hp85.2100.outside <- fun.now.out(new.hp85.2100, hp85.2100.inside)

new.hp85_now_2100 <- new.hp.now - new.hp85.2100
plot(new.hp85_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 8.5')
freq(new.hp85_now_2100)

new.hp85_gain_in2100 <- fun.gain(new.hp85_now_2100, conserved_area) # gain habitat winew.thin conservation area (70 cell)
new.hp85_loss_in2100 <- fun.loss(new.hp85_now_2100, conserved_area) # gain habitat winew.thin conservation area (94 cell)

new.hp85_gain_out2100 <-fun.gain.out(new.hp85_now_2100, new.hp85_gain_in2100) # 1038
new.hp85_loss_out2100 <-fun.loss.out(new.hp85_now_2100, new.hp85_loss_in2100) # 777

#Enhalus acoroides======================================
## setting new.threshold
new.ea.f <- as.data.frame(ea9.preabs.new)
new.ea.f <- data.frame(species=new.ea.f$species, coordinates(ea9.preabs.new))

xy.new.ea <- as.matrix(new.ea.f[,c('lon','lat')])

pdvalue.new.ea <- extract(ea9.en.new, xy.new.ea) #extracting new.the predictor value for evaluate function below

ev.new.ea <- evaluates(new.ea.f$species, pdvalue.new.ea) #new.threshold value based on max(se+sp) column (Babak Naimi Tutorial)
ev.new.ea@statistics
new.ea <- ev.new.ea@threshold_based$threshold[2] #0.3874016

#presence-absence current
new.ea.now <- raster(ea9.en.new)
new.ea.now [] <- ifelse(ea9.en.new[] >= new.ea, 1, 0)
plot(new.ea.now)
freq(new.ea.now)

now.ea.inside <- fun.loss(new.ea.now, conserved_area) #not to count the loss, read the function's detail about the formula above
now.ea.outside <- fun.now.out(new.ea.now, now.ea.inside)

#RCP26
##2050
new.ea26.2050 <- raster(new.ea9.en.26_2050)
new.ea26.2050 [] <- ifelse(new.ea9.en.26_2050[] >= new.ea, 1, 0)
plot(new.ea26.2050)
freq(new.ea26.2050)

#new calc
ea26.2050.inside <- fun.loss(new.ea26.2050, conserved_area)
ea26.2050.outside <- fun.now.out(new.ea26.2050, ea26.2050.inside)

new.ea26_now_2050 <- new.ea.now - new.ea26.2050
plot(new.ea26_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 2.6')
freq(new.ea26_now_2050)

new.ea26_gain_in2050 <-fun.gain(new.ea26_now_2050, conserved_area) # gain habitat winew.thin conservation area (91 cell)
new.ea26_loss_in2050 <-fun.loss(new.ea26_now_2050, conserved_area) # gain habitat winew.thin conservation area (122 cell)

new.ea26_gain_out2050 <-fun.gain.out(new.ea26_now_2050, new.ea26_gain_in2050) # 992
new.ea26_loss_out2050 <-fun.loss.out(new.ea26_now_2050, new.ea26_loss_in2050) # 1111

##2100
new.ea26.2100 <- raster(new.ea9.en.26_2100)
new.ea26.2100 [] <- ifelse(new.ea9.en.26_2100[] >= new.ea, 1, 0)
plot(new.ea26.2100)
freq(new.ea26.2100)

#new calc
ea26.2100.inside <- fun.loss(new.ea26.2100, conserved_area)
ea26.2100.outside <- fun.now.out(new.ea26.2100, ea26.2100.inside)

new.ea26_now_2100 <- new.ea.now - new.ea26.2100
plot(new.ea26_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 2.6')
freq(new.ea26_now_2100)

new.ea26_gain_in2100 <- fun.gain(new.ea26_now_2100, conserved_area) # gain habitat winew.thin conservation area (35 cell)
new.ea26_loss_in2100 <- fun.loss(new.ea26_now_2100, conserved_area) # gain habitat winew.thin conservation area (112 cell)

new.ea26_gain_out2100 <-fun.gain.out(new.ea26_now_2100, new.ea26_gain_in2100) # 320
new.ea26_loss_out2100 <-fun.loss.out(new.ea26_now_2100, new.ea26_loss_in2100) # 1161

#RCP45
##2050
new.ea45.2050 <- raster(new.ea9.en.45_2050)
new.ea45.2050 [] <- ifelse(new.ea9.en.45_2050[] >= new.ea, 1, 0)
plot(new.ea45.2050)
freq(new.ea45.2050)

#new calc
ea45.2050.inside <- fun.loss(new.ea45.2050, conserved_area)
ea45.2050.outside <- fun.now.out(new.ea45.2050, ea45.2050.inside)

new.ea45_now_2050 <- new.ea.now - new.ea45.2050
plot(new.ea45_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 4.5')
freq(new.ea45_now_2050)

new.ea45_gain_in2050 <- fun.gain(new.ea45_now_2050, conserved_area) # gain habitat winew.thin conservation area (58 cell)
new.ea45_loss_in2050 <- fun.loss(new.ea45_now_2050, conserved_area) # gain habitat winew.thin conservation area (53 cell)

new.ea45_gain_out2050 <-fun.gain.out(new.ea45_now_2050, new.ea45_gain_in2050) # 616
new.ea45_loss_out2050 <-fun.loss.out(new.ea45_now_2050, new.ea45_loss_in2050) # 700

##2100
new.ea45.2100 <- raster(new.ea9.en.45_2100)
new.ea45.2100 [] <- ifelse(new.ea9.en.45_2100[] >= new.ea, 1, 0)
plot(new.ea45.2100)
freq(new.ea45.2100)

#new calc
ea45.2100.inside <- fun.loss(new.ea45.2100, conserved_area)
ea45.2100.outside <- fun.now.out(new.ea45.2100, ea45.2100.inside)

new.ea45_now_2100 <- new.ea.now - new.ea45.2100
plot(new.ea45_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 4.5')
freq(new.ea45_now_2100)

new.ea45_gain_in2100 <- fun.gain(new.ea45_now_2100, conserved_area) # gain habitat winew.thin conservation area (62 cell)
new.ea45_loss_in2100 <- fun.loss(new.ea45_now_2100, conserved_area) # gain habitat winew.thin conservation area (100 cell)

new.ea45_gain_out2100 <-fun.gain.out(new.ea45_now_2100, new.ea45_gain_in2100) # 631
new.ea45_loss_out2100 <-fun.loss.out(new.ea45_now_2100, new.ea45_loss_in2100) # 1094

#RCP85
##2050
new.ea85.2050 <- raster(new.ea9.en.85_2050)
new.ea85.2050 [] <- ifelse(new.ea9.en.85_2050[] >= new.ea, 1, 0)
plot(new.ea85.2050)
freq(new.ea85.2050)

#new calc
ea85.2050.inside <- fun.loss(new.ea85.2050, conserved_area)
ea85.2050.outside <- fun.now.out(new.ea85.2050, ea85.2050.inside)

new.ea85_now_2050 <- new.ea.now - new.ea85.2050
plot(new.ea85_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 8.5')
freq(new.ea85_now_2050)

new.ea85_gain_in2050 <- fun.gain(new.ea85_now_2050, conserved_area) # gain habitat winew.thin conservation area (34 cell)
new.ea85_loss_in2050 <- fun.loss(new.ea85_now_2050, conserved_area) # gain habitat winew.thin conservation area (69 cell)

new.ea85_gain_out2050 <-fun.gain.out(new.ea85_now_2050, new.ea85_gain_in2050) # 457
new.ea85_loss_out2050 <-fun.loss.out(new.ea85_now_2050, new.ea85_loss_in2050) # 667

##2100
new.ea85.2100 <- raster(new.ea9.en.85_2100)
new.ea85.2100 [] <- ifelse(new.ea9.en.85_2100[] >= new.ea, 1, 0)
plot(new.ea85.2100)
freq(new.ea85.2100)

#new calc
ea85.2100.inside <- fun.loss(new.ea85.2100, conserved_area)
ea85.2100.outside <- fun.now.out(new.ea85.2100, ea85.2100.inside)

new.ea85_now_2100 <- new.ea.now - new.ea85.2100
plot(new.ea85_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 8.5')
freq(new.ea85_now_2100)

new.ea85_gain_in2100 <- fun.gain(new.ea85_now_2100, conserved_area) # gain habitat winew.thin conservation area (117 cell)
new.ea85_loss_in2100 <- fun.loss(new.ea85_now_2100, conserved_area) # gain habitat winew.thin conservation area (91 cell)

new.ea85_gain_out2100 <-fun.gain.out(new.ea85_now_2100, new.ea85_gain_in2100) # 937
new.ea85_loss_out2100 <-fun.loss.out(new.ea85_now_2100, new.ea85_loss_in2100) # 1083

#Cymodocea rotundata======================================
## setting new.threshold
new.cr.f <- as.data.frame(cr9.preabs.new)
new.cr.f <- data.frame(species=new.cr.f$species, coordinates(cr9.preabs.new))

xy.new.cr <- as.matrix(new.cr.f[,c('lon','lat')])

pdvalue.new.cr <- extract(cr9.en.new, xy.new.cr) #extracting new.the predictor value for evaluate function below

ev.new.cr <- evaluates(new.cr.f$species, pdvalue.new.cr) #new.threshold value based on max(se+sp) column (Babak Naimi Tutorial)
ev.new.cr@statistics
new.cr <- ev.new.cr@threshold_based$threshold[2] #0.4152647

#presence-absence current
new.cr.now <- raster(cr9.en.new)
new.cr.now [] <- ifelse(cr9.en.new[] >= new.cr, 1, 0)
plot(new.cr.now)
freq(new.cr.now)

now.cr.inside <- fun.loss(new.cr.now, conserved_area) #not to count the loss, read the function's detail about the formula above
now.cr.outside <- fun.now.out(new.cr.now, now.cr.inside)

#RCP26
##2050
new.cr26.2050 <- raster(new.cr9.en.26_2050)
new.cr26.2050 [] <- ifelse(new.cr9.en.26_2050[] >= new.cr, 1, 0)
plot(new.cr26.2050)
freq(new.cr26.2050)

#new calc
cr26.2050.inside <- fun.loss(new.cr26.2050, conserved_area)
cr26.2050.outside <- fun.now.out(new.cr26.2050, cr26.2050.inside)

new.cr26_now_2050 <- new.cr.now - new.cr26.2050
plot(new.cr26_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 2.6')
freq(new.cr26_now_2050)

new.cr26_gain_in2050 <- fun.gain(new.cr26_now_2050, conserved_area) # gain habitat winew.thin conservation area (85 cell)
new.cr26_loss_in2050 <- fun.loss(new.cr26_now_2050, conserved_area) # gain habitat winew.thin conservation area (106 cell)

new.cr26_gain_out2050 <-fun.gain.out(new.cr26_now_2050, new.cr26_gain_in2050) # 874
new.cr26_loss_out2050 <-fun.loss.out(new.cr26_now_2050, new.cr26_loss_in2050) # 798

##2100
new.cr26.2100 <- raster(new.cr9.en.26_2100)
new.cr26.2100 [] <- ifelse(new.cr9.en.26_2100[] >= new.cr, 1, 0)
plot(new.cr26.2100)
freq(new.cr26.2100)

#new calc
cr26.2100.inside <- fun.loss(new.cr26.2100, conserved_area)
cr26.2100.outside <- fun.now.out(new.cr26.2100, cr26.2100.inside)

new.cr26_now_2100 <- new.cr.now - new.cr26.2100
plot(new.cr26_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 2.6')
freq(new.cr26_now_2100)

new.cr26_gain_in2100 <- fun.gain(new.cr26_now_2100, conserved_area) # gain habitat winew.thin conservation area (112 cell)
new.cr26_loss_in2100 <- fun.loss(new.cr26_now_2100, conserved_area) # gain habitat winew.thin conservation area (72 cell)

new.cr26_gain_out2100 <-fun.gain.out(new.cr26_now_2100, new.cr26_gain_in2100) # 720
new.cr26_loss_out2100 <-fun.loss.out(new.cr26_now_2100, new.cr26_loss_in2100) # 649

#RCP45
##2050
new.cr45.2050 <- raster(new.cr9.en.45_2050)
new.cr45.2050 [] <- ifelse(new.cr9.en.45_2050[] >= new.cr, 1, 0)
plot(new.cr45.2050)
freq(new.cr45.2050)

#new calc
cr45.2050.inside <- fun.loss(new.cr45.2050, conserved_area)
cr45.2050.outside <- fun.now.out(new.cr45.2050, cr45.2050.inside)

new.cr45_now_2050 <- new.cr.now - new.cr45.2050
plot(new.cr45_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 4.5')
freq(new.cr45_now_2050)

new.cr45_gain_in2050 <- fun.gain(new.cr45_now_2050, conserved_area) # gain habitat winew.thin conservation area (52 cell)
new.cr45_loss_in2050 <- fun.loss(new.cr45_now_2050, conserved_area) # gain habitat winew.thin conservation area (83 cell)

new.cr45_gain_out2050 <-fun.gain.out(new.cr45_now_2050, new.cr45_gain_in2050) # 584
new.cr45_loss_out2050 <-fun.loss.out(new.cr45_now_2050, new.cr45_loss_in2050) # 841

##2100
new.cr45.2100 <- raster(new.cr9.en.45_2100)
new.cr45.2100 [] <- ifelse(new.cr9.en.45_2100[] >= new.cr, 1, 0)
plot(new.cr45.2100)
freq(new.cr45.2100)

#new calc
cr45.2100.inside <- fun.loss(new.cr45.2100, conserved_area)
cr45.2100.outside <- fun.now.out(new.cr45.2100, cr45.2100.inside)

new.cr45_now_2100 <- new.cr.now - new.cr45.2100
plot(new.cr45_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 4.5')
freq(new.cr45_now_2100)

new.cr45_gain_in2100 <- fun.gain(new.cr45_now_2100, conserved_area) # gain habitat winew.thin conservation area (100 cell)
new.cr45_loss_in2100 <- fun.loss(new.cr45_now_2100, conserved_area) # gain habitat winew.thin conservation area (57 cell)

new.cr45_gain_out2100 <-fun.gain.out(new.cr45_now_2100, new.cr45_gain_in2100) # 723
new.cr45_loss_out2100 <-fun.loss.out(new.cr45_now_2100, new.cr45_loss_in2100) # 655

#RCP85
##2050
new.cr85.2050 <- raster(new.cr9.en.85_2050)
new.cr85.2050 [] <- ifelse(new.cr9.en.85_2050[] >= new.cr, 1, 0)
plot(new.cr85.2050)
freq(new.cr85.2050)

#new calc
cr85.2050.inside <- fun.loss(new.cr85.2050, conserved_area)
cr85.2050.outside <- fun.now.out(new.cr85.2050, cr85.2050.inside)

new.cr85_now_2050 <- new.cr.now - new.cr85.2050
plot(new.cr85_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 8.5')
freq(new.cr85_now_2050)

new.cr85_gain_in2050 <- fun.gain(new.cr85_now_2050, conserved_area) # gain habitat winew.thin conservation area (82 cell)
new.cr85_loss_in2050 <- fun.loss(new.cr85_now_2050, conserved_area) # gain habitat winew.thin conservation area (78 cell)

new.cr85_gain_out2050 <-fun.gain.out(new.cr85_now_2050, new.cr85_gain_in2050) # 759
new.cr85_loss_out2050 <-fun.loss.out(new.cr85_now_2050, new.cr85_loss_in2050) # 762

##2100
new.cr85.2100 <- raster(new.cr9.en.85_2100)
new.cr85.2100 [] <- ifelse(new.cr9.en.85_2100[] >= new.cr, 1, 0)
plot(new.cr85.2100)
freq(new.cr85.2100)

#new calc
cr85.2100.inside <- fun.loss(new.cr85.2100, conserved_area)
cr85.2100.outside <- fun.now.out(new.cr85.2100, cr85.2100.inside)

new.cr85_now_2100 <- new.cr.now - new.cr85.2100
plot(new.cr85_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 8.5')
freq(new.cr85_now_2100)

new.cr85_gain_in2100 <- fun.gain(new.cr85_now_2100, conserved_area) # gain habitat winew.thin conservation area (56 cell)
new.cr85_loss_in2100 <- fun.loss(new.cr85_now_2100, conserved_area) # gain habitat winew.thin conservation area (107 cell)

new.cr85_gain_out2100 <-fun.gain.out(new.cr85_now_2100, new.cr85_gain_in2100) # 1058
new.cr85_loss_out2100 <-fun.loss.out(new.cr85_now_2100, new.cr85_loss_in2100) # 994

#Cymodocea serrulata======================================
## setting new.threshold
new.cs.f <- as.data.frame(cs9.preabs.new)
new.cs.f <- data.frame(species=new.cs.f$species, coordinates(cs9.preabs.new))

xy.new.cs <- as.matrix(new.cs.f[,c('lon','lat')])

pdvalue.new.cs <- extract(cs9.en.new, xy.new.cs) #extracting new.the predictor value for evaluate function below

ev.new.cs <- evaluates(new.cs.f$species, pdvalue.new.cs) #new.threshold value based on max(se+sp) column (Babak Naimi Tutorial)
ev.new.cs@statistics
new.cs <- ev.new.cs@threshold_based$threshold[2] #0.3856712

#presence-absence current
new.cs.now <- raster(cs9.en.new)
new.cs.now [] <- ifelse(cs9.en.new[] >= new.cs, 1, 0)
plot(new.cs.now)
freq(new.cs.now)

now.cs.inside <- fun.loss(new.cs.now, conserved_area) #not to count the loss, read the function's detail about the formula above
now.cs.outside <- fun.now.out(new.cs.now, now.cs.inside)

#RCP26
##2050
new.cs26.2050 <- raster(new.cs9.en.26_2050)
new.cs26.2050 [] <- ifelse(new.cs9.en.26_2050[] >= new.cs, 1, 0)
plot(new.cs26.2050)
freq(new.cs26.2050)

#new calc
cs26.2050.inside <- fun.loss(new.cs26.2050, conserved_area)
cs26.2050.outside <- fun.now.out(new.cs26.2050, cs26.2050.inside)

new.cs26_now_2050 <- new.cs.now - new.cs26.2050
plot(new.cs26_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 2.6')
freq(new.cs26_now_2050)

new.cs26_gain_in2050 <- fun.gain(new.cs26_now_2050, conserved_area) # gain habitat winew.thin conservation area (80 cell)
new.cs26_loss_in2050 <- fun.loss(new.cs26_now_2050, conserved_area) # gain habitat winew.thin conservation area (55 cell)

new.cs26_gain_out2050 <-fun.gain.out(new.cs26_now_2050, new.cs26_gain_in2050) # 785
new.cs26_loss_out2050 <-fun.loss.out(new.cs26_now_2050, new.cs26_loss_in2050) # 666

##2100
new.cs26.2100 <- raster(new.cs9.en.26_2100)
new.cs26.2100 [] <- ifelse(new.cs9.en.26_2100[] >= new.cs, 1, 0)
plot(new.cs26.2100)
freq(new.cs26.2100)

#new calc
cs26.2100.inside <- fun.loss(new.cs26.2100, conserved_area)
cs26.2100.outside <- fun.now.out(new.cs26.2100, cs26.2100.inside)

new.cs26_now_2100 <- new.cs.now - new.cs26.2100
plot(new.cs26_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 2.6')
freq(new.cs26_now_2100)

new.cs26_gain_in2100 <- fun.gain(new.cs26_now_2100, conserved_area) # gain habitat winew.thin conservation area (88 cell)
new.cs26_loss_in2100 <- fun.loss(new.cs26_now_2100, conserved_area) # gain habitat winew.thin conservation area (29 cell)

new.cs26_gain_out2100 <-fun.gain.out(new.cs26_now_2100, new.cs26_gain_in2100) # 949
new.cs26_loss_out2100 <-fun.loss.out(new.cs26_now_2100, new.cs26_loss_in2100) # 713

#RCP45
##2050
new.cs45.2050 <- raster(new.cs9.en.45_2050)
new.cs45.2050 [] <- ifelse(new.cs9.en.45_2050[] >= new.cs, 1, 0)
plot(new.cs45.2050)
freq(new.cs45.2050)

#new calc
cs45.2050.inside <- fun.loss(new.cs45.2050, conserved_area)
cs45.2050.outside <- fun.now.out(new.cs45.2050, cs45.2050.inside)

new.cs45_now_2050 <- new.cs.now - new.cs45.2050
plot(new.cs45_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 4.5')
freq(new.cs45_now_2050)

new.cs45_gain_in2050 <- fun.gain(new.cs45_now_2050, conserved_area) # gain habitat winew.thin conservation area (117 cell)
new.cs45_loss_in2050 <- fun.loss(new.cs45_now_2050, conserved_area) # gain habitat winew.thin conservation area (26 cell)

new.cs45_gain_out2050 <-fun.gain.out(new.cs45_now_2050, new.cs45_gain_in2050) # 1149
new.cs45_loss_out2050 <-fun.loss.out(new.cs45_now_2050, new.cs45_loss_in2050) # 413

##2100
new.cs45.2100 <- raster(new.cs9.en.45_2100)
new.cs45.2100 [] <- ifelse(new.cs9.en.45_2100[] >= new.cs, 1, 0)
plot(new.cs45.2100)
freq(new.cs45.2100)

#new calc
cs45.2100.inside <- fun.loss(new.cs45.2100, conserved_area)
cs45.2100.outside <- fun.now.out(new.cs45.2100, cs45.2100.inside)

new.cs45_now_2100 <- new.cs.now - new.cs45.2100
plot(new.cs45_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 4.5')
freq(new.cs45_now_2100)

new.cs45_gain_in2100 <- fun.gain(new.cs45_now_2100, conserved_area) # gain habitat winew.thin conservation area (71 cell)
new.cs45_loss_in2100 <- fun.loss(new.cs45_now_2100, conserved_area) # gain habitat winew.thin conservation area (100 cell)

new.cs45_gain_out2100 <-fun.gain.out(new.cs45_now_2100, new.cs45_gain_in2100) # 627
new.cs45_loss_out2100 <-fun.loss.out(new.cs45_now_2100, new.cs45_loss_in2100) # 803

#RCP85
##2050
new.cs85.2050 <- raster(new.cs9.en.85_2050)
new.cs85.2050 [] <- ifelse(new.cs9.en.85_2050[] >= new.cs, 1, 0)
plot(new.cs85.2050)
freq(new.cs85.2050)

#new calc
cs85.2050.inside <- fun.loss(new.cs85.2050, conserved_area)
cs85.2050.outside <- fun.now.out(new.cs85.2050, cs85.2050.inside)

new.cs85_now_2050 <- new.cs.now - new.cs85.2050
plot(new.cs85_now_2050, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2050')
legend("bottomleft",'RCP 8.5')
freq(new.cs85_now_2050)

new.cs85_gain_in2050 <- fun.gain(new.cs85_now_2050, conserved_area) # gain habitat winew.thin conservation area (87 cell)
new.cs85_loss_in2050 <- fun.loss(new.cs85_now_2050, conserved_area) # gain habitat winew.thin conservation area (53 cell)

new.cs85_gain_out2050 <-fun.gain.out(new.cs85_now_2050, new.cs85_gain_in2050) # 592
new.cs85_loss_out2050 <-fun.loss.out(new.cs85_now_2050, new.cs85_loss_in2050) # 888

##2100
new.cs85.2100 <- raster(new.cs9.en.85_2100)
new.cs85.2100 [] <- ifelse(new.cs9.en.85_2100[] >= new.cs, 1, 0)
plot(new.cs85.2100)
freq(new.cs85.2100)

#new calc
cs85.2100.inside <- fun.loss(new.cs85.2100, conserved_area)
cs85.2100.outside <- fun.now.out(new.cs85.2100, cs85.2100.inside)

new.cs85_now_2100 <- new.cs.now - new.cs85.2100
plot(new.cs85_now_2100, legend=F, col=c('green','gray','red'))
plot(indonesia, add=T, col='#0000FF7D', border='white')
plot(conserved_area, add=T)
legend("bottomright",'yr2100')
legend("bottomleft",'RCP 8.5')
freq(new.cs85_now_2100)

new.cs85_gain_in2100 <- fun.gain(new.cs85_now_2100, conserved_area) # gain habitat winew.thin conservation area (112 cell)
new.cs85_loss_in2100 <- fun.loss(new.cs85_now_2100, conserved_area) # gain habitat winew.thin conservation area (80 cell)

new.cs85_gain_out2100 <-fun.gain.out(new.cs85_now_2100, new.cs85_gain_in2100) # 804
new.cs85_loss_out2100 <-fun.loss.out(new.cs85_now_2100, new.cs85_loss_in2100) # 1266
