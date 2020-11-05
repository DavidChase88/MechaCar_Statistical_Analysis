#Deliverable 1 ---

#Load dplyr file
library(dplyr)
library(broom)

#Read File
challenge_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=challenge_table) 

#Generate Summary Statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=challenge_table)) 

#Deliverable 2 ---

#Read File
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Generate Total Summary
total_summary <- suspension_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

#Generate Summary by Lot
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Deliverable 3 ---

## Perform t-test of PSI

t.test(log10(suspension_coil_table$PSI),mu=1500)

# Perform t-test on Lot 1
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot1")$PSI,mu = 1500) 

# Perform t-test on Lot 2
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot2")$PSI,mu = 1500) 

# Perform t-test on Lot 3
t.test(subset(suspension_coil_table,Manufacturing_Lot=="Lot3")$PSI,mu = 1500) 


