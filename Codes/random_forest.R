model1 <- randomForest(cat ~ ., data = TrainSet, importance = TRUE)
summary(model1)

model2 <- randomForest(cat ~ ., data = TrainSet, ntree = 500, mtry = 5, importance = TRUE)
model2

predTrain <- predict(model2, TrainSet, type = "class")
table(predTrain, TrainSet$cat)

predValid <- predict(model2, ValidSet, type = "class")
mean(predValid == ValidSet$cat)                    
table(predValid,ValidSet$cat)
