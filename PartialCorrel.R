PartialCorrel <- function(x, # I want to test the cond indip of x and y given z
                          y, 
                          z){ # z is a matrix. Its colnum is the number of var from wich I want the conditionament
  
  
  z = as.matrix(z)
  
  n = ncol(z)
    
  data = data.frame(cbind(x, y, z))
  
  colnames(data) = paste("x",1:(n+2),sep="")
    
  formx = create_formula(1,3:(n+2),"x")
  gmx = gam(formx,dat=data)
  resx = gmx$residuals
  
  formy = create_formula(2,3:(n+2),"x")
  gmy = gam(formy,dat=data)
  resy = gmy$residuals
  
  
  
  return(list(resx = resx, resy = resy))
  
 
  
}