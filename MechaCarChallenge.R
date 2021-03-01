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
# T-test that compares all manufacturing lots
t.test(suscoil$PSI, mu=1500)

# T-test Lot 1
t.test(subset(suscoil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)

# T-test Lot 2
t.test(subset(suscoil,Manufacturing_Lot=="Lot2")$PSI, mu=1500)

# T-test Lot 3
t.test(subset(suscoil,Manufacturing_Lot=="Lot3")$PSI, mu=1500)