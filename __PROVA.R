data = read.table(file='data.txt')
data

source('bPC.R')

a = bPC(data = data, alpha = 0.2, p = 100)
a$pval
