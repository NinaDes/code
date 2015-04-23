IndepTestBr <- function(x, y, p){
  
  
  a = dcov.test(x, y, index = 1, R = p)
#   pval = mean(a$replicates>a$statistic)
  pval = a$p.value  
  return(pval)
}