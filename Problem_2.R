#Problem 2
#A)
xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

#B)
TemepratureDifference <- xmax - xmin 

#C)
mean(xmin)
mean(xmax)

#D)
xmin[xmin<mean(xmin)]

#E)
xmax[xmax>mean(xmax)]

#F)
## Nicely done
DateNames <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')

names(xmin) <- DateNames
names(xmax) <- DateNames

#G)
temperatures <- data.frame(xmin,xmax)

#H)
temperatures <- within(temperatures, { 
	xminFahrenheit <- xmin*9/5+32
})
temperatures

#I)
xminFahrenheit <- xmin*9/5+32
xmaxFahrenheit <- xmax*9/5+32

TemperaturesFahr <- data.frame(xminFahrenheit, xmaxFahrenheit)

#J)
## Use shortcut notation
## No need to call the constructor. The subsetting
## already returns a data frame.

NewDataFrame1 <-data.frame(TemperaturesFahr[c(1,2,3,4,5),])

## Missing exclusion


## Easier way to do the above

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]

