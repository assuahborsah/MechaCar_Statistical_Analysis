# MechaCar_Statistical_Analysis

# Overview of the Project

The purpose of this project is to apply understanding of statistics and hypothesis testing to analyze a series of datasets from the automotive industry called MechaCar. The analysis will include visualizations, statistical tests, and interpretation of the results. All the statistical analysis and visualizations will be written in the R programming language.

# Resources

RStudio and R

# Results/Deliverables

## Linear Regression to Predict MPG:
 


![image](https://user-images.githubusercontent.com/96086671/178147225-3fede6b7-2046-4148-af5f-b92fadf1abd1.png)



•	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The multiple linear regression model above takes in 5 different variables, vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD, against the mpg. Vehicle_weight, spoiler_angle and AWD provide non-random amount of variance. The maximum random variance was provided by ground_clearence and vehicle_length.

•	Is the slope of the linear model considered to be zero? Why or why not?

Since p-value is less than zero (5.35e-11), the slope is not equal to zero. The p-value is being based on the traditional 0.05 for significance. This indicates there is sufficient evidence to reject our null hypothesis. p-value is significantly smaller than the significance level.

•	Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Multiple R-squared value is 0.7149 which is 71.49% and Adjusted R-squared value is 0.6825 which is 68.25%. For the purposes of this project, a good linear model is 0.8 (80%) or more. By comparing the Adjusted R-squared value of 0.6825 to the 0.8 value of a good linear model, it can be concluded that the model does not effectively predict the mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils:

Total_summary dataframe.

The Total Summary table looks at PSI statistics across all lots.



![image](https://user-images.githubusercontent.com/96086671/178147287-c4017176-51ce-4553-b8d0-f3d27e9cdd02.png)

 
 
Lot_summary dataframe.

The Lot Summary shows statistics of each lot as seen below.



![image](https://user-images.githubusercontent.com/96086671/178147306-126b4454-7d0e-4fc3-8ba3-31b4e6a5b591.png)

 

•	The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

As seen, Lot 1 and 2, are very similar while Lot 3 has a smaller mean with a bigger variance and standard deviation (SD). Looking at the analysis, Lot 3 does not meet specifications. It exceeds the limit.  In total, current manufacturing data can meet design specifications for all manufacturing lots in the sense that, Lot 1 and 2 values when combined with Lot 3 value can bring the average of the three Lots to the accepted variance.


## T-Tests on Suspension Coils:



![image](https://user-images.githubusercontent.com/96086671/178147352-ca330c85-cce2-4219-ae9f-9f48aca28463.png)

 
By comparing the significance level of 0.05 p-value to the t-test p-value of 0.06028 above, it tells that the overall Suspension Coil PSI is not statistically different from the population mean of 1,500. Which means that the lots as a total can pass quality standards. The t-test shows there is not enough evidence to reject the null hypothesis since the p-value for all manufacturing lots is 0.06028 higher than the common significance level of 0.05. 

 
 
 ![image](https://user-images.githubusercontent.com/96086671/178147365-a3f5de57-d6f3-49f3-994e-204bc40658d0.png)

 
Lot 1 above is not statistically different from the population mean of 1,500. This means that this lot passes the quality standards and can be used on cars. Lot 1 sample has the true sample mean of 1500. With a p-Value of 1, the null hypothesis cannot be rejected as there is no statistical difference between the observed sample mean and the presumed population mean 1500.
 


![image](https://user-images.githubusercontent.com/96086671/178147393-d36326d7-1a3e-49f9-b6b6-478df10255f7.png)


Lot 2 above has the same outcome with a sample mean of 1500.02 with a p-Value of 0.6072. This tells that the Suspension Coil PSI for Lot 2 is not statistically different from the population mean of 1,500. Which means that this lot passes the quality standards and can be used on cars. The null hypothesis cannot be rejected, and the sample mean, and the population mean of 1500 are statistically similar.



![image](https://user-images.githubusercontent.com/96086671/178147418-8a1090a4-c4f8-4ea9-8849-ad7f8283ced9.png)

 
By looking at the significance level of 0.05 for the p-value, the result of 0.04168 from Lot 3 tells that the Suspension Coil PSI have statistical difference from the population mean of 1,500. Which means that that this lot does not pass the quality standards and should be rejected.

## Study Design: MechaCar vs Competition:

Some of the features that people will consider when purchasing a car is horsepower and fuel efficiency. Fuel efficiency for instance impacts greatly on cost of ownership per year.

•	What metric or metrics are you going to test?

The chosen metrics to be tested are city and highway fuel efficiency.

•	What is the null hypothesis or alternative hypothesis?

The goal is to find out if the mpg performance of each car is equal or different.  Equal means null hypothesis and difference means alternative hypothesis.

•	What data is needed to run the statistical test?

To test the defined metrics, two very similar SUVs would be picked, one from MechaCar and one from a competitor such as Nissan, where their fuel efficiency for city and highway would be tested.

To find the overall performance of each SUV being tested, a 2-way t-test would be run using the mean of the city and highway mpg results.
