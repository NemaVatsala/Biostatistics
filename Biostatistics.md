**Shapiro wilks statistic** Goodness-of-fit statistic. Used to test if a set of numbers fits the normal distribution
H_0: The sample comes from a normally distributed population  

Link to Q-Q Plots : Generalized least squares method to account for that structure of points round line 

![[Pasted image 20230225110724.png]]
A_i incorporates the normal order stats, the structure of the data along the best fit line, and normalize for the scale -> estimates the slopes  
W-> 1 if H0 is true
w<1 indicate diff, statisticallly significant if large enough (from p value)

*Cautions:* 
1. Can encounter problems with many equal values 
2. Rarely reject H0 if sample size small 
3. Reject H0 for tiny differences from normality when n large 
* 2 & 3 common among many tests 

Can't use when evaluating assumptions for parametric tests, too sensitive 
* Use Histograms, Q-Q plots, t-tests, ANOVA

shapiro.test(x)
https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/shapiro.test 

**Wilcoxon signed rank test:** 
https://online.stat.psu.edu/stat415/lesson/20/20.2 
* Non-Parametric equivalent to t-test 
The tests essentially calculate the difference between sets of pairs and analyze these differences to establish if they are [statistically significantly](https://www.investopedia.com/terms/s/statistical-significance.asp) different from one another.

1.  Set up hypotheses and determine level of significance.
	H0: The median difference is zero versus
	H1: The median difference is not zero α=0.05

 2. Select the appropriate test statistic.
The test statistic for the Wilcoxon Signed Rank Test is W, defined as the smaller of W+ and W- which are the sums of the positive and negative ranks, respectively.  

3. Set up the decision rule.

The critical value of W can be found in the table of critical values. To determine the appropriate critical value from Table 7 we need sample size (n=15) and our two-sided level of significance (α=0.05). The critical value for this two-sided test with n=15 and α=0.05 is 25 and the decision rule is as follows: Reject H0 if W < 25.

4. Compute the test statistic.

**Calculating a Wilcoxon Test Statistic**

The steps for arriving at a Wilcoxon signed rank test statistic, _W,_ are as follows:

1.  For each item in a sample of _n_ items, obtain a difference score, Di, between two measurements (i.e., subtract one from the other).
2.  Neglect then positive or negative signs and obtain a set of _n_ absolute differences |Di|.
3.  Omit difference scores of zero, giving you a set of _n_ non-zero absolute difference scores, where _n' ≤ n_. Thus, _n'_ becomes the actual sample size.
4.  Then, assign ranks Ri from 1 to _n_ to each of the |Di| such that the smallest absolute difference score gets rank 1 and the largest gets rank _n_. If two or more |Di| are equal, they are each assigned the average rank of the ranks they would have been assigned individually had ties in the data not occurred.
5.  Now reassign the symbol "+" or "–" to each of the _n_ ranks Ri, depending on whether Di was originally positive or negative.
6.  The Wilcoxon test statistic _W_ is subsequently obtained as the sum of the positive ranks.

**Kruskal Wallis test**
Non-parametric method for evaluating whether samples come from the same distribution. 
One-way analysis of variance (ANOVA) is its parametric equivalence test
1.  _The loss of information in substituting ranks for the original values makes this a less powerful test than ANOVA, so ANOVA should be used if the data meet the Normality and Homoscedasticity assumptions_.
2. Groups of different sizes can be examined
3. Presume that each group’s distribution is identically shaped and scaled, except for any variations in medians.
The average rank of the target group can be higher in the presence of outliers, look at the arithmetic median and the resultant p-value obtained by Kruskal Wallis to validate/refute our hypothesis.

ri is the sum of the ranks for group i with ri’ as the average rank of group i.
![[Pasted image 20230225132528.png]]
instrumental when dealing with particularly skewed samples. It can be used widely for a test control group during a campaign rollout or even when performing A/B testing.
https://www.statisticshowto.com/probability-and-statistics/statistics-definitions/kruskal-wallis/ 

**Students T Distribution:** 
* Assumes you can estimate the std dev with its statistics, s 
* It is wider and more diffuse/spread than the normal distribution to account for the additional uncertainty surrounding $\sigma$ , the standard deviation.
* Degrees of freedom - Amt of info we have about the std dev from the sample
	* Determined by sample size, more observations means more degrees of freedom.
	* As DoF increase, the estimate s becomes more accurate and precise 
	* Sufficiently large, can assume that we know $\sigma$ exactly 
	* In other words, normal distr'n = t with inf df 
	* Facilitated by *Central limit theorem*
	* Describes either a single mean or a difference between two means.
* **Central Limit Theorem** - The sum or mean of many independent observations from the same population tends towards a normal distribution.

**Types of Sampling:** 

1. Stratified samples / two-level sampling: Splitting up the population into groups/strata first, sampling random groups, and using SRS without each group. 
	* Sometimes easier than SRS and with similar results, especially when sampling over a large geographic area.
2.  Quota sampling: Choosing beforehand the number of people from each group you want, and using SRS until that number from each group is met. Usually, for cost reasons, observations beyond each group’s quota are rejected.
3. Systematic samples: Taking observation from a population over time at fixed intervals (e.g. at 11am of each day), used to account for non-independence between observations that are near in time. 
4.  Snowball / Network / Recruitment / Respondent driven samples: Selecting a small ‘seed’ group of a population and having members of that seed group recruit new people into the sample. Useful when a group is difficult to find, but well connected, such the homeless or endangered species. 
5. Transect samples: Travelling along a selected geographical path (i.e. a transect) and taking every observed population member along the path as the sample. Useful in field-based sciences such as forestry and environmental science.

**F-statistic** Ratio of 2 variances, 
F-tests can compare the fits of different models, [test the overall significance in regression models](https://statisticsbyjim.com/regression/interpret-f-test-overall-significance-regression/), test specific terms in linear models, and determine whether a set of means are all equal.
F-statistics are the ratio of two variances that are approximately the same value when the null hypothesis is true, which yields F-statistics near 1 
https://statisticsbyjim.com/anova/f-tests-anova/ 

Relevant for: 
1. **Two-sample T-Test:** Testing if two independent samples have equal variances. (See: Levene’s test) 
	* Thanks to software advances though, it takes no extra work to use the unequal variance case, so this case is mostly obsolete. 
2. **Analysis of Variance, ANOVA**: Testing if the variance attributable to some grouping variable is larger than the variance due to randomness within a group.
 *  When the Fstatistic for a variable is large, there is strong evidence that the grouping variable has an effect.
1-way ANOVA: 
F=b/w groups var/within groups var 


**ANOVA**
Analysis of variance (ANOVA) assesses the differences between group means
* need a continuous dependent variable and a categorical independent variable that divides your data into comparison groups to perform ANOVA.
*1-way ANOVA*: 
* Generalization of t-tests that can assess the difference between more than two group means.
 *Factorial ANOVA*
* By assessing multiple factors together, factorial ANOVA allows your model to detect interaction effects. => Higher efficiency 
* The hypotheses for the ANOVA test:
	-   Null Hypothesis: The group means are all equal.
	-   Alternative Hypothesis: At least one mean is different.

*Multivariate analysis of variance (MANOVA)*
* Assessing multiple dependent variables simultaneously. 
* The factors in MANOVA can influence the relationship between dependent variables instead of influencing a single dependent variable.

While a significant ANOVA result indicates that at least one mean differs, it does not specify which one. To identify which differences between pairs of means are statistically significant, [perform a post hoc analysis](https://statisticsbyjim.com/anova/post-hoc-tests-anova/).

**When the p-value is below your significance level, reject the null hypothesis.**

Hypo testing: 
1. Form a falsifiable null hypothesis about a parameter. 
2. Collect sample observations. 
 * Use these to get a p-value
3. Reject the null hypothesis, or fail to. 
	* Compare the p-value to a significance level alpha.
	* Reject if p < alpha
* We use the results from such a test to determine if we have enough evidence to make a decision or a claim.

**P-value**: The probability of getting at least this much evidence against the null hypothesis from our sample if the null is true.

Compare the p-value to the significance level $\alpha$. α is the chance we are willing to take of making a Type I error

*Type 1 Error:*  Rejecting the null when the null is true.

- The greater the consequences of making a Type I error, the small α should be.
- If rejecting the null is trivial, doing it when we shouldn’t isn’t a problem and a large α is acceptable. 
- If rejecting the null is a big deal, we don’t want to reject without strong evidence, and a small α is better.

Type II error: Failing to reject the null when the null is false.

The chance of making a Type II error is β, and The chance of NOT making a Type II error is the power, 1 – β

Trade-off b/w type-1 & type-2 error, alpha to be set accordingly

Confidence Interval: : Find a range that reflects our best estimate AND our level of uncertainty
* (sample mean) +/- (critical value) X (standard error)
Critical value depends on distribution being used and the confidence level

Pearson’s correlation coefficient $(-1, 1)$ refers to the strength and direction of a linear trend between two numerical variables (usually continuous, but not always).

r for sample stat
$\rho$ param
![[Pasted image 20230225100910.png]]
**Spearman's Rank-sum correlation**

* Calculation of the Spearman correlation doesn't use the values of x and y directly, but their ranks. 
* Compared to Pearson's r, the Spearman correlation is more flexible, but also less able to account for extreme values

*Skellam Distribution:* 

It arises as the distribution of the difference between two random variates that follow a [Poisson distribution](https://www.statsref.com/HTML/poisson.html) with mean values m1 and m2![[Pasted image 20230225112639.png]]

Param assumptions: 
#Normality: Data have a normal distribution (or at least is symmetric)  
#---histogram  
#---shapiro test  
#---Q-Q plot  
#Homogeneity of variances: Data from multiple groups have the same variance  
#---levene test  
#---check normality of the residuals distribution  
#Linearity: Data have a linear relationship - for correlation tests  
#Independence: Data are independent  
#No Outliers: There should be no extreme outliers.

References: 
1. https://www.investopedia.com/terms/w/wilcoxon-test.asp 
2. 