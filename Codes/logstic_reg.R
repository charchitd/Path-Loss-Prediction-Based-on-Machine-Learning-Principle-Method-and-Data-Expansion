model <- glm (cat ~ ., data = TrainSet, family = binomial)
summary(model)
