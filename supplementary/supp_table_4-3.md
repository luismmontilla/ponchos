Analysis of Variance Table

Model: manylm(formula = mvabund_obj_np ~ Observation * Month, data = nutr_rate_wide_light)

Overall test for all response variables
Test statistics:
                  Res.Df Df.diff val(F) Pr(>F)   
(Intercept)           20                         
Observation           18       2   8.71  0.228   
Month                 17       1  36.62  0.002 **
Observation:Month     15       2   6.56  0.419   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Univariate Tests
Test statistics:
                      NH4            PO4            NOx           SiO4       
                  F value Pr(>F) F value Pr(>F) F value Pr(>F) F value Pr(>F)
(Intercept)                                                                  
Observation         1.242  0.637   1.747  0.604   0.259  0.954   1.633  0.604
Month               4.633  0.140    4.79  0.140  14.751  0.004  10.243  0.016
Observation:Month   0.455  0.711   0.703  0.711   1.574  0.707   1.232  0.711
                      DOC            DON       
                  F value Pr(>F) F value Pr(>F)
(Intercept)                                    
Observation         3.674  0.186   0.153  0.954
Month               0.851  0.382    1.35  0.381
Observation:Month   1.313  0.711   1.279  0.711

Arguments: with 999 resampling iterations using residual (without replacement) resampling and uncorrelated response (for faster computation) 

