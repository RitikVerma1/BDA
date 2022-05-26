# Iris data
data('iris')

# Data partition
set.seed(555)
ind <- sample(2,nrow(iris),replace=TRUE, prob=c(0.8,0.2))
train <- iris[ind==1,]
test <- iris[ind==2,]

# Decision tree model
library(party)
tree <- ctree(Species~., 
              data=train)

# Visualization of decision trees
plot(tree)

#Predict
predict(tree, train)


