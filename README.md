# R and Statistical Analysis - Mecha Car 

## Project Overview 
The purpose of this project is to review production data for insights into the manufacturing process and what areas may be causing production blocks. This project uses R to perform multiple linear regression analysis, collect summary statistics, and run t-tests. This report will also include additional analysis based on a statistical study. 

## Linear Regression to Predict MPG  

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

In the summary output, the results show that the intercept, vehicle length, and ground clearance are statistically likely to provide non-random amount of variance to mpg values, as the Pr(>|t|) values are less than 0.05. Given that the intercept is statistically significant, there may be other variables or factors that contribute to the mpg variation that were not included in the data. 

**Is the slope of the linear model considered to be zero? Why or why not?**

Because the p-value of the analysis is 5.35e-11, which is less than a significance level of 0.05, there is sufficient evidence to reject the null hypothesis, and therefore, the slope of the linear model is not zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

Because the regression analysis provides a r-squared value of 0.7149 and the p-value of 5.35e-11, the model is able or has a high ability to predict the current dataset. However, due to a low number of significant variables, this model is subject to overfitting. Therefore, the model may not be able to generalize and predict given new data. 