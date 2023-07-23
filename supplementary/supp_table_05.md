Analysis of Variance Table

Model: manylm(formula = mvabund_obj_dr ~ Observation * Month, data = nutr_rate_wide_dark)

Overall test for all response variables
Test statistics:
                  Res.Df Df.diff val(F) Pr(>F)   
(Intercept)           20                         
Observation           18       2  37.43  0.002 **
Month                 17       1  34.39  0.005 **
Observation:Month     15       2  34.07  0.003 **
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Univariate Tests
Test statistics:
                      NH4            PO4            NOx           SiO4       
                  F value Pr(>F) F value Pr(>F) F value Pr(>F) F value Pr(>F)
(Intercept)                                                                  
Observation         1.158  0.623   8.413  0.008  21.909  0.002   4.357  0.073
Month               13.78  0.004   2.601  0.324   1.349  0.516  15.709  0.004
Observation:Month  14.224  0.005    0.91  0.833   0.399  0.913  17.496  0.002
                      DOC            DON       
                  F value Pr(>F) F value Pr(>F)
(Intercept)                                    
Observation         1.253  0.623   0.344  0.718
Month               0.896  0.516   0.051  0.826
Observation:Month   0.367  0.913   0.674  0.851

Arguments: with 999 resampling iterations using residual (without replacement) resampling and uncorrelated response (for faster computation) 

