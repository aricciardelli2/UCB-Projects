#Load Packages
library(dplyr)
library(tidyverse)

#Load mpg data
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)

#Determine p_value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table))

#Load suspension data
suspension_table <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors = F)

#Summary dataframe for PSI data
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table

#Summary dataframe for PSI data grouped by Manufacturing Lot
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

#T Test of PSI for all Manufacturing Lots vs. population mean of 1500 psi
t.test(suspension_table$PSI,mu=1500)

#Subset Suspension Table for each Manufatoring Lot
suspension_lot1_table <- subset(suspension_table, Manufacturing_Lot == "Lot1")
suspension_lot2_table <- subset(suspension_table, Manufacturing_Lot == "Lot2")
suspension_lot3_table <- subset(suspension_table, Manufacturing_Lot == "Lot3")

#T Test of PSI for Manufacturing Lot 1 vs. population mean of 1500 psi
t.test(suspension_lot1_table$PSI,mu=1500)

#T Test of PSI for Manufacturing Lot 2 vs. population mean of 1500 psi
t.test(suspension_lot2_table$PSI,mu=1500)

#T Test of PSI for Manufacturing Lot 3 vs. population mean of 1500 psi
t.test(suspension_lot3_table$PSI,mu=1500)
