
# DELIVERABLE 1

# 3. Use the library() function to load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read.csv('MechaCar_mpg.csv')

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg)


# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg))

View(MechaCar_mpg)


# DELIVERABLE 2
# import and read in the Suspension_Coil.csv file as a table.

Suspension_Coil <- read.csv('Suspension_Coil.csv')
View(Suspension_Coil)
Suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg))

head(Suspension_Coil)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- Suspension_Coil%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Variation=sd(PSI), .groups = 'keep')

View(total_summary)
View(total_summary)

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Variation=sd(PSI), .groups = 'keep')

View(lot_summary)



# DELIVERABLE 3

?t.test()

# write three more RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

base <- 1500

t.test(Suspension_Coil$PSI,mu=base)


View(lot_summary)
 
# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

#lot 1

t.test(PSI~1,Suspension_Coil,mu=base,subset=Suspension_Coil["Manufacturing_Lot"]=="Lot1")


# lot 2

t.test(PSI~1,Suspension_Coil,mu=base,subset=Suspension_Coil["Manufacturing_Lot"]=="Lot2")

#lot 3

t.test(PSI~1,Suspension_Coil,mu=base,subset=Suspension_Coil["Manufacturing_Lot"]=="Lot3")

