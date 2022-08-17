
library(tidyverse)


# Deliverable 1 : Linear Regression to Predict MPG

mechaCarData <- read.csv("Resources/MechaCar_mpg.csv", header=T, sep = ",", check.names=F, stringsAsFactors=F)
head(mechaCarData)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCarData)  #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance, data=mechaCarData))  #generate summary statistics




# Deliverable 2 : Create Visualizations for the Trip Analysis

coilData <- read.csv("Resources/Suspension_Coil.csv", header=T, sep = ",", check.names=F, stringsAsFactors = F)
head(coilData)

totalSummary <- coilData %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
totalSummary

lotSummary <- coilData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
lotSummary




# Deliverable 3 : T-Tests on Suspension Coils

t.test(coilData$PSI, mu=1500)


#Perform t-test on lot1
t.test(subset(coilData, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

#Perform t-test on lot2
t.test(subset(coilData, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

#Perform t-test on lot3
t.test(subset(coilData, Manufacturing_Lot=="Lot3")$PSI, mu=1500)




