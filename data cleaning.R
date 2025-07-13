#Data preprocessing
#Importing libraries
library(rvest)
library(dplyr)

#Importing Dataset
dataset = read.csv("Heartstroke_data.csv")

#View Dataset
View(dataset)

#Check for special character
dataset$gender <- gsub("Others","Female",dataset$gender)
dataset$age <- gsub("1.08","8",dataset$age) 
dataset$age <- gsub("0.72","12",dataset$age) 
dataset$age <- gsub("1.72","5",dataset$age) 
dataset$age <- gsub("1.24","17",dataset$age) 
dataset$age <- gsub("1.32","6",dataset$age) 
dataset$age <- gsub("0.32","11",dataset$age) 
dataset$age <- gsub("1.16","3",dataset$age) 
dataset$age <- gsub("0.48","5",dataset$age) 
dataset$age <- gsub("0.4","8",dataset$age) 
dataset$age <- gsub("1.8","2",dataset$age) 
dataset$age <- gsub("0.7","7",dataset$age) 
dataset$age <- gsub("0.8","9",dataset$age)
dataset$age <- gsub("1.56","11",dataset$age) 
dataset$age <- gsub("0.56","3",dataset$age) 
dataset$age <- gsub("0.64","8",dataset$age) 
dataset$age <- gsub("0.24","4",dataset$age) 
dataset$age <- gsub("1.64","6",dataset$age) 
dataset$age <- gsub("0.08","8",dataset$age) 
dataset$age <- gsub("1.48","14",dataset$age) 
dataset$age <- gsub("1.88","16",dataset$age) 
dataset$age <- gsub("0.16","6",dataset$age) 
dataset$age <- gsub("1.4","7",dataset$age) 
dataset$age <- gsub("0.88","14",dataset$age) 
dataset$hypertension <- gsub("0","<120",dataset$hypertension)
dataset$hypertension <- gsub("1",">140",dataset$hypertension)
dataset$hypertension <- gsub("<>14020","<120",dataset$hypertension)
dataset$heart_disease <- gsub("1","yes",dataset$heart_disease)
dataset$heart_disease <- gsub("0","No",dataset$heart_disease)
dataset$work_type <- gsub("children","-",dataset$work_type)
dataset$work_type <- gsub("Never_worked","-",dataset$work_type)
dataset$work_type <- gsub("Govt_job","Govt-Job",dataset$work_type)
dataset$bmi <- gsub("N/A","32.8",dataset$bmi)
View(dataset)

#check whether all the variables are having right datatype or not
str(dataset)
dataset$age <- as.numeric(dataset$age)
dataset$bmi <- as.numeric(dataset$bmi)
View(dataset)
str(dataset)

#remove the column
dataset<-subset(dataset,select=-(Residence_type))
View(dataset)

#saving data frame
write.csv(dataset,"heartstroke_dataset.csv")
data=read.csv("heartstroke_dataset.csv")
View(data)
