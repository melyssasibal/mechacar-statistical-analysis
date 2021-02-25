# R and Statistical Analysis - Mecha Car 

## Project Overview 
The purpose of this project is to review production data for insights into the manufacturing process and what areas may be causing production blocks. This project uses R to perform multiple linear regression analysis, collect summary statistics, and run t-tests. This report will also include additional analysis based on a statistical study. 

## Linear Regrevssion to Predict MPG  

![d1_lm](/images/d1_lm.png)

![d1_lm_summary](/images/d1_lm_summary.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

In the summary output, the results show that the intercept, vehicle length, and ground clearance are statistically likely to provide non-random amount of variance to mpg values, as the Pr(>|t|) values are less than 0.05. Given that the intercept is statistically significant, there may be other variables or factors that contribute to the mpg variation that were not included in the data. 

**Is the slope of the linear model considered to be zero? Why or why not?**

Because the p-value of the analysis is 5.35e-11, which is less than a significance level of 0.05, there is sufficient evidence to reject the null hypothesis, and therefore, the slope of the linear model is not zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

Because the regression analysis provides a r-squared value of 0.7149 and the p-value of 5.35e-11, the model is able or has a high ability to predict the current dataset. However, due to a low number of significant variables, this model is subject to overfitting. Therefore, the model may not be able to generalize and predict given new data. 

## Summary Statistics on Suspension Coils 

![d2_summary](/images/d2_summary.png)

![d2_summary_groupbylot](/images/d2_summary_groupbylot.png)

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

In total, the manufacturing data meets this specification. However, lot 3 does not meet this specification. The variance for lot 3 is 170.286, which shows that there is more variance in PSI values in lot 3. The mean for lot 3 is also less than the two means for lot 1 and 2, illustrating lot 3 has vehicles with low PSIs. 