#Utilize library party for Decision Tree
#Define and upload Training/Prediction dataset
Lab4Train<-read.csv(file.choose(),header = T)
Lab4Predict<-read.csv(file.choose(),header = T)
#View the column names and dimensions for the training data
names(Lab4Train)
dim(Lab4Train)
#view summary statistics of the training set
summary(Lab4Train)
#attach the training dataset for writing and maintaining code
attach(Lab4Train)
#Install Library party
install.packages("party")
#Call on party
library("party")
#Factor Species_names in training dataset
Lab4Train$Species_name <- as.factor(Lab4Train$Species_name)
#build the DT model using ctree func
Lab4tree2<-ctree(Species_name ~ Petal_width + Petal_length + Sepal_width + Sepal_length, data=Lab4Train)
#examine the properties of the DT
Lab4tree2
#generate a DT graph
plot(Lab4tree2)
#Apply DT model to prediction set
Lab4Score2<-predict(Lab4tree2,Lab4Predict)
#View results
Lab4Score2
