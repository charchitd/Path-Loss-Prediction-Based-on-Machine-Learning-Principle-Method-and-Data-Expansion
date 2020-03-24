library(caTools)
data=read.csv('dat_cat.csv',header = TRUE,sep=',')
dat=data[,! names(data) %in% 'Path_Loss', drop = F]
set.seed(100)
sample = sample.split(dat$cat, SplitRatio = .70)
TrainSet = subset(dat, sample == TRUE)
ValidSet  = subset(dat, sample == FALSE)
