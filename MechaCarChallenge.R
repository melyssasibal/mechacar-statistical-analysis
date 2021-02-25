library(dplyr)
library(tidyverse)

#Deliverable 1
mechacar <- read.csv('MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar))

#Deliverable 2
suscoil <- read.csv('Suspension_Coil.csv')

total_summary <- suscoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- suscoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

#Deliverable 3
lot1 <- subset(suscoil,Manufacturing_Lot == "Lot1")
t.test(lot1$PSI,mu=mean(suscoil$PSI))

lot2 <- subset(suscoil,Manufacturing_Lot == "Lot2")
t.test(lot2$PSI,mu=mean(suscoil$PSI))

lot3 <- subset(suscoil,Manufacturing_Lot == "Lot3")
t.test(lot3$PSI,mu=mean(suscoil$PSI))