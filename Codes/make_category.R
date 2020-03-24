df=read.csv('dat.csv',header = TRUE,sep=',')
summary(df$Path_Loss)
m=LETTERS
x <-1
dif=8 #diff btween two categories
for(i in seq(min((df$Path_Loss)), max(df$Path_Loss), dif)){df$Path_Loss[df$Path_Loss>=i & df$Path_Loss<i+dif] <- m[x]

x=x+1
}
apply(df, 2, function(x) any(is.na(x)))

write.csv(df,file="dat_cat.csv",col.names = TRUE,row.names = FALSE) #to check for null values
