df3 <- ponchos_raw |> 
  filter(!(Observation %in% c("rock", "t0")) & Month == "November") |> 
  mutate(NOx = NO2 + NO3,
         DON = TDN - NOx - NH4)

l4 <- split(df3, df3[,c("light", "Chondrilla", "Posidonia")])

nutr_names

l5 <- lapply(l4, function(x) {
  y <- trepf(x)
  
  lapply(y, function(z) {
      
      data.frame(sample = paste(z[,1], collapse = " "),
                 replicate = paste(z[,2], collapse = " "),
                 light = unique(z$light),
                 Chondrilla = unique(z$Chondrilla),
                 Posidonia = unique(z$Posidonia),
                 cv = unlist(lapply(z[nutr_names], function(w){
                   sd(w)/mean(w)
                 })),
                 nutr = nutr_names,
                 row.names = 1:length(nutr_names))
    })
  })

l5 <- bind_rows(purrr::flatten(l5))

l6 <- l5 |> 
  group_by(light, Chondrilla, Posidonia, nutr) |> 
  summarise(min(cv)) |> 
  left_join(l5[,c("sample", "replicate", "cv")],  by = c("min(cv)" = "cv")
            )

# Final extraction -------------------------------------------------------------

l7 <- apply(l6, 1, function(x) {
  #browser()
  data.frame(
    replicate = str_split(x[c("replicate")], " ")[[1]],
    chamber = str_split(x[c("sample")], " ")[[1]],
    light = as.numeric(x["light"]),
    Chondrilla = as.numeric(x["Chondrilla"]),
    Posidonia = as.numeric(x["Posidonia"]),
    ntr = x["nutr"],
    min_cv = as.numeric(x["min(cv)"])
  )
}) |> 
bind_rows()



caspi <- df3 |> 
  pivot_longer(names_to = "ntr",
               values_to = "conc",
               nutr_names)

may_ntr <- ponchos_raw |> 
  filter(!(Observation %in% c("rock", "t0")) & Month == "May") |> 
  mutate(NOx = NO2 + NO3,
         DON = TDN - NOx - NH4) |> 
  pivot_longer(names_to = "ntr",
               values_to = "conc",
               nutr_names) 

nutr_long <- caspi |> 
  left_join(l7,
            by = c("chamber",
                 "replicate",
                 "ntr",
                 "light",
                 "Chondrilla",
                 "Posidonia")) |> 
  filter(!is.na(min_cv)) |> 
  select(-min_cv) |> 
  bind_rows(may_ntr)

rm(caspi, df3, l4, l5, l6, l7, may_ntr)
