#libraries
library(dplyr)
library(psych)
#read data
df= read.csv("D:\\York U Files\\F2025Courses\\ADMS4370\\Project\\mobile-user-behaviour-analysis\\data\\user_behavior_dataset.csv")

# descirptive/NA handling
(describe = describe(df))
#no nan values => WE BALL

heatmap(df %>% select(-c(User.ID)))
#heatmap correlations (see which var is highest correlated)
heatmap(df)
#distribution looking
hist(df$User.Behavior.Class)

(table_model = table(df$Device.Model)) 
