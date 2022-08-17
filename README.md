# MechaCar Statistical Analysis

## Project Overview

## Resources

## Linear Regression to Predict MPG
Using the Tidyr package's linear model function along with the summary method in R, the desired statistical summaries were easily obtained using the following codes.
<br/>

![01.png](Images/01.png)

- Some variables did provide a non-random amount of variance to the mpg values in the dataset.
- In particular, vehicle Length and ground clearance were statistically significant as their p-values fell below the .05 significance level. This indicates that vehicle length and ground clearance have impact on fuel efficiency (mpg).
- The slope of the linear model is not zero, according to the statistical summary results. Assuming we have a confidence level of 95%, the p-value is far below the corresponding .05 significance level and, therefore, we have sufficient statistical reasoning to reject the null hypothesis that the slope is zero.
- Regarding the predictive capability of the model, this linear model does indeed predict mpg of MechaCar prototypes fairly well considering the coefficient of determination (r-squared) produced a value of 0.7149. This means that the linear model explains about 71 percent of the variability, indicating our model does a decent job of predicting our dependent variable (mpg).


## Summary Statistics on Suspension Coils
By utitlizing "group by" and "summarize" methods in R, the variance, as well as a variety of other statistical metrics were easily calculated for PSI.
According to the first resulting "total_summary" table, the variance in PSI for all manufacturing lots as a whole appears within the desired range of 100 pounds per square inch (or less) with a value of approximately 62.29.
<br/>
![02.png](Images/02.png)

However, when we examine the variance in PSI grouped by each of the three lots in the "lot_summary" table, we find that not all of the results are within specifications. In particular, lot 3 exhibited a variance far above the 100 limit with a value of 170.29.
<br/>
![03.png](Images/03.png)


## T-Tests on Suspension Coils
T-Test were performed to address questions about PSI as a whole and for each lot. A summary of these questions, their corresponding answers, and images of the R script code and console results are provided for illustration below.
<br/>
![04.png](Images/04.png)
<br/>

From the t-test to compare all lots against the population mean of 1,500 we can see that the sample mean was 1498.78 and the p-value is 0.06028. Although the p-value is low, it is not low enough to reject the null hypothesis that the population's true mean is 1,500 because it did not fall below the significance level of 0.05 (see image below).
<br/>
![05.png](Images/05.png)

<br/>
- For lot1, the mean was exactly 1,500 and so the p-value was exactly 1. This is a perfect match to the population mean and is therefore not statistically significant as there was no difference between the two. <br/>
- For lot2, the mean was 1,498.78 with a p-value of 0.06. Although low, this p-value is also not statistically different enough to reject the null hypothesis. <br/>
- Lot3 had a mean of 1,496.14 and a the p-value of 0.04168. Therefore, unlike the other two lots, lot 3 is statistically different from the population mean since its p-value is below 0.05.
<br/>
![06.png](Images/06.png)

<br/> 



