trepf <- function(x) {
  
  y <- combn(sample(nrow(x)),
        m = 3)
  
  y <- split(y, 
        f = rep(1:ncol(y), each = nrow(y)))

  z <- lapply(y, function(w) {
    x[w, ]
  })
  
  dupes <- unlist(lapply(z, function(w){
    any(duplicated(w[,1]))
    }))

 z[!dupes]
}

