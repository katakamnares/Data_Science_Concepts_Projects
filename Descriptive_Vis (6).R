#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality
class(airquality)
####Top 10 rows and last 10 rows
head(airquality,10)    #to display first few rows from given dataframe
tail(airquality,10) #to display last few rows
glimpse(airquality) #basic info reg the dataframe(dplyr)
######Columns
airquality[,c(1,2)]
select(airquality,1,2)

#accesing col by its name
airquality$Wind
airquality['Wind']

dim(airquality)
df<-airquality[,-6]

df


###########Summary of the data#########

summary(airquality[,1])
summary(airquality$Wind)
summary(airquality)



#mean()
mean(airquality$Ozone,na.rm=T)
#median()
median(airquality['Ozone'],na.rm=T)
#mode using mlv()
mode(airquality$Temp)

var(airquality$Temp)
var(airquality$Ozone,na.rm=T)
sd(airquality$Wind,na.rm=T)

max_o=max(airquality$Ozone,na.rm=T)
min_o=min(airquality$Ozone,na.rm=T)
Range=max_o-min_o;Range
range(airquality$Ozone,na.rm=T)

skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone,na.rm=T)

#moments
install.packages('moments')
library('moments')
skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone,na.rm=T)

#to calculate mode of a data
install.packages('modeest')
library(modeest)
help(mlv)
mlv(airquality$Ozone,na.rm=T,method='mfv')

#####################Visualizations############
plot(airquality$Wind,type='b')
help(plot)
plot(airquality$Temp,airquality$Wind,type="p")

plot(airquality[,1:4])    #plots only numerical columns
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Index', 
     ylab = 'Wind Concentration', main = 'Wind levels in NY city',
     col ='purple')

# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = T,axes=T)

dt=data.frame(x=c(1,2,3,4,5),y=c(40,60,30,40,25))
dt
barplot(dt$y,dt$x,axes=T,names.arg=dt$x)
abline(h=0,lwd=1)
?barplot

#Histogram
hist(airquality$Temp)
skewness(airquality$Temp,na.rm=T)
kurtosis(airquality$Temp,na.rm=T)

help(hist)
hist(airquality$Solar.R, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col="lightblue",labels=TRUE)
help(hist)
help(data.frame)
#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out

boxplot(airquality$Ozone,main="Boxplot")

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')

?par
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')


##Home work
e_quakes<-datasets::quakes

mean(airquality$Temp)
mean(airquality$Ozone,na.rm=T)
median(airquality$Ozone,na.rm=T)
max(airquality$Ozone,na.rm=T)
min(airquality$Ozone,na.rm=T)
sd(airquality$Ozone,na.rm = T)
var(airquality$Ozone,na.rm=T)

mode(airquality$Ozone)
#skewness
#kurtosis


install.packages("modeest")
library(modeest)
mlv(airquality$Ozone, method = "mfv",na.rm = T)
?mlv



sd(airquality$Ozone,na.rm = T)

var(airquality$Ozone,na.rm = T)
skewness(airquality$Ozone,na.rm = T)
kurtosis(airquality$Ozone,na.rm = T)

install.packages('moments')
library(moments)

skewness(airquality$Ozone,na.rm = T)   #positively skewed
kurtosis(airquality$Ozone,na.rm = T)  #leptokurtic curve

skewness(airquality$Temp,na.rm = T)
kurtosis(airquality$Temp,na.rm = T)

hist(airquality$Ozone)





install.packages('modeest')
library(modeest)
?mlv
mlv(airquality$Ozone,method='mfv',na.rm=T)

max(airquality$Ozone,na.rm=T)-min(airquality$Ozone,na.rm=T)

skewness(airquality$Ozone,na.rm=T)


install.packages('moments')
library(moments)
kurtosis(airquality$Ozone,na.rm=T)


mean(airquality$Temp)
mean(airquality$Ozone,na.rm=TRUE)
median(airquality$Ozone,na.rm=TRUE)
mode(airquality$Ozone)

#modeest
install.packages("modeest")
library("modeest")
#mlv: Most likelihood value
help(mlv)
mlv(airquality$Ozone,na.rm=T,method='mfv')



help("mlv")
?mlv

var()
