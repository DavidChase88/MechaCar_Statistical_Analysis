# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG - Deliverable 1

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, the vehicle weight, spoiler angle and AWD provided a non-random amount of variance.

2. Is the slope of the linear model considered to be zero? Why or why not?

We need to look at the p-value. Since the p-value is less than 0.05 (5.35e-11) the slope is not zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Our R-squared value is 71.49%. This means about 71% of the time the model will predict mpg values of MechaCar prototypes effectively. Identifying other variables could increase the R-squared value.

## Summary Statistics on Suspension Coils - Deliverable 2

4. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Lot 1 and Lot 2 have a mean and median equal to 1500 and a variance of 0.98 and 7.47 respectively. However, Lot 3 has a mean of 1496 but a variance of 170.29 which exceeds the manufactures variance of 100 pounds per square inch. 

## T-Tests on Suspension Coils

Summary of the t-test results across all manufacturing lots and for each lot (5 pt)

In your README, create a subheading ## Study Design: MechaCar vs Competition.
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
