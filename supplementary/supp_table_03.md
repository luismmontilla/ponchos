Analysis of Variance Table

Model: manylm(formula = mvabund_obj_np ~ Observation * Month, data = nutr_rate_wide_light)

Overall test for all response variables
Test statistics:
                  Res.Df Df.diff val(F) Pr(>F)  
(Intercept)           20                        
Observation           18       2  22.94  0.013 *
Month                 17       1  31.86  0.016 *
Observation:Month     15       2   5.35  0.642  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Univariate Tests
Test statistics:
                      NH4            PO4            NO2            NO3           SiO4            DOC       
                  F value Pr(>F) F value Pr(>F) F value Pr(>F) F value Pr(>F) F value Pr(>F) F value Pr(>F)
(Intercept)                                                                                                
Observation         1.242  0.524   1.747  0.524   1.828  0.524  12.659  0.004   1.633  0.524   3.674  0.164
Month               4.633  0.150    4.79  0.148   9.348  0.030    0.64  0.595  10.243  0.024   0.851  0.595
Observation:Month   0.455  0.930   0.703  0.876   0.042  0.957   0.324  0.930   1.232  0.822   1.313  0.822
                      DON       
                  F value Pr(>F)
(Intercept)                     
Observation         0.153  0.853
Month                1.35  0.522
Observation:Month   1.279  0.822

Arguments: with 999 resampling iterations using residual (without replacement) resampling and uncorrelated response (for faster computation) 

