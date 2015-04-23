condIndepTestBr <- function (x,        # the first variable for cond ind
                             y,        # the second variable for cond ind
                             z,        # the set of variables to wich I condition
                             p){       # number of permutation of 1-alpha level test   
  
  ParCor = PartialCorrel(x, y, z)
  resx   = ParCor$resx
  resy   = ParCor$resy
  
  dc = dcov.test(x = resx, y = resy, index = 1, R = p)
  
  pval = dc$p.value  
 
  
  return ( pval )
  
  
  
  
  
  
  
  
}