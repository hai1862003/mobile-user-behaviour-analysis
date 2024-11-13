#libraries
library(dplyr)
library(psych)
#read data
df= read.csv("D:\\York U Files\\F2025Courses\\ADMS4370\\Project\\mobile-user-behaviour-analysis\\data\\smartphones.csv")

# descirptive/NA handling
(describe = describe(df))


# INVESTIGATE NAN:RAM and Storage have som NAN values => 
#show the nan values of RAM and storage
(nan_values = df %>% filter(is.na(df$RAM) | is.na(df$Storage),))
#remove nan
df = na.omit(df)
#plot of price per brand
boxplot(df$Final.Price~df$Brand,data= df, main ="Distribution of phone prices by brand" )
?boxplot
#boxplot of price per RAm
boxplot(df$Final.Price~df$RAM,data= df, main ="Distribution of phone prices by RAM" )
#distribution of final prices
hist(df$Final.Price, main = "Distribution of final price") ##most have prices from 500 below



### CORRELATION STUDY
#check for inddependence between 2 cat: Chi Square
##ANNOVA with categorical var and goal var (final price)
?anova()
#correlation matrix between continuous var
