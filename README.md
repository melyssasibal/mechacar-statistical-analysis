# R and Statistical Analysis - Mecha Car 

## Project Overview 
The purpose of this project is to review production data for insights into the manufacturing process and what areas may be causing production blocks. This project uses R to perform multiple linear regression analysis, collect summary statistics, and run t-tests. This report will also include additional analysis based on a statistical study. 

## Linear Regression to Predict MPG  

![d1_lm](/images/d1_lm.png)

![d1_lm_summary](/images/d1_lm_summary.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

In the summary output, the results show that vehicle length, and ground clearance are statistically likely to provide non-random amount of variance to mpg values, as the Pr(>|t|) values are less than 0.05%. Given that the intercept is also statistically significant, there may be other variables or factors that contribute to the mpg variation that were not included in the data. 

**Is the slope of the linear model considered to be zero? Why or why not?**

Because the p-value of the analysis is 5.35e-11, which is less than a significance level of 0.05%, there is sufficient evidence to reject the null hypothesis, and therefore, the slope of the linear model is not zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

Because the regression analysis provides a r-squared value of 0.7149 and the p-value of 5.35e-11, the model is able or has a high ability to predict the current dataset. However, due to a low number of significant variables, this model is subject to overfitting. Therefore, the model may not be able to generalize and predict given new data. 

## Summary Statistics on Suspension Coils 

![d2_summary](/images/d2_summary.png)

![d2_summary_groupbylot](/images/d2_summary_groupbylot.png)

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

In total, the manufacturing data meets this specification. However, lot 3 does not meet this specification. The variance for lot 3 is 170.286, which shows that there is more variance in PSI values in lot 3. The mean for lot 3 is also less than the two means for lot 1 and 2, illustrating lot 3 has vehicles with low PSIs. 

## T-Tests on Suspension Coils

**PSI of all manufacturing lots**
![d3_alllots_ttest](/images/d3_alllots_ttest.png)
The p-value of 0.06028 is greater than a significance level of 0.05%. Therefore, there is not sufficient evidence to reject the null hypothesis. The PSI across of all manufacturing lots is statistically similar to the population mean of 1,500 PSI.  

**PSI of lot 1**
![d3_lot1_ttest](/images/d3_lot1_ttest.png)
The p-value of 1 is greater than a significance level of 0.05%. Therefore, there is not sufficient evidence to reject the null hypothesis. The PSI across of manufacturing lot 1 is statistically similar to the population mean of 1,500 PSI.  

**PSI of lot 2**
![d3_lot2_ttest](/images/d3_lot2_ttest.png)
The p-value of 0.6072 is greater than a significance level of 0.05%. Therefore, there is not sufficient evidence to reject the null hypothesis. The PSI across of manufacturing lot 2 is statistically similar to the population mean of 1,500 PSI. 

**PSI of lot 3**
![d3_lot3_ttest](/images/d3_lot3_ttest.png)
The p-value 0.04168 is less than a significance level of 0.05%. Therefore, there is sufficient evidence to reject the null hypothesis. The PSI across of manufacturing lot 3 is statistically different to the population mean of 1,500 PSI. 

## Study Design: MechaCar vs Competition

In a statistical study to measure MechaCar performance against competition, metrics should include safety ratings and fuel efficiency (mpg). The null hypothesis would be there is no statistical difference between MechaCar and its competition. The alternative hypothesis would be there is a statistical difference. 

Two-sample t-tests could be calculated to compare the safety ratings and fuel efficiency. This statistical test should be used because it compares the distribution means from two samples. The data needed to compare safety ratings could be extracted from different car review sites. Depending on how ratings are provided, this data may have to be transformed to fit similar scales. The data to compare fuel efficiency could be provided from engineering tests performed to calculate miles per gallon. 
