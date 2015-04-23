path_N <- function(G_dir, # a matrix of the directed graph 
                   i,     # starting node
                   j){     # ending node
                   
  # The function return 0 if there is adirect path between i and j
  
mat = as.matrix(G_dir, matrix.type = 'adjacency')

g = graph.adjacency(mat)

a = get.shortest.paths(graph = g, from = i, to = j)
get.shortest.paths(graph = g, from = i, to = j)

# print(i)
# print(j)
# print(a)

  if(length(a$vpath[[1]])==0)
  {
    return (0)
  }
  else
  {
    return (1)
  }
}