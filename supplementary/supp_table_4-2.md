Analysis of Variance Table

Model: manylm(formula = mvabund_obj_np ~ Observation * Month, data = nutr_rate_wide_light)

Overall test for all response variables
Test statistics:
                  Res.Df Df.diff val(F) Pr(>F)   
(Intercept)           20                         
Observation           18       2   8.71  0.260   
Month                 17       1  36.62  0.003 **
Observation:Month     15       2   6.56  0.404   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Univariate Tests
Test statistics:
                      NH4            PO4            NOx           SiO4            DOC            DON
                  F value Pr(>F) F value Pr(>F) F value Pr(>F) F value Pr(>F) F value Pr(>F) F value
(Intercept)                                                                                         
Observation         1.242  0.652   1.747  0.580   0.259  0.961   1.633  0.580   3.674  0.200   0.153
Month               4.633  0.100    4.79  0.100  14.751  0.003  10.243  0.010   0.851  0.366    1.35
Observation:Month   0.455  0.701   0.703  0.701   1.574  0.692   1.232  0.692   1.313  0.692   1.279
                        
                  Pr(>F)
(Intercept)             
Observation        0.961
Month              0.352
Observation:Month  0.692

Arguments: with 999 resampling iterations using residual (without replacement) resampling and uncorrelated response (for faster computation) 

