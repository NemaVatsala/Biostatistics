getwd()
setwd("C:/Users/VATSALA NEMA/Documents/SEM 8/Biostatistics")

# Reading the data
pokemon <- read.csv("Pokemon.csv")

#Convert the data to a dataframe in R
df <- data.frame(pokemon)


#Explore the object created in R using class, length, names, 
#colnames, rownames, str, dim, head, tail and summary

class(pokemon)
length(pokemon)
names(pokemon)
colnames(pokemon)
rownames(pokemon)
str(pokemon)
dim(pokemon)
head(pokemon)
tail(pokemon)
summary(pokemon)

#Create 10 different subsets of the dataframe in R
#, use subset function for 5 of the examples

df1<-df[1:80]

df2<-df[81:160]

df3<-df[161:240]

df4<-df[241:320]

df5<-df[321:400]

mean_base=mean(df$base_Total)

df6<-subset(df,df[base_Total]>mean_base)

df7<-subset(df,df[base_Total]<mean_base)

mean_happy=mean(df$base_happiness)

df8<-subset(df,df[base_happiness]>mean_happy)

df9<-subset(df,df[base_happiness]<mean_happy)

df10<-subset(df,df[base_happiness]>mean_happy & df[base_Total]>mean_base)


#-->use the plot, points, par, log, hist, abline
#, boxplot functions to plot the data

plot(df1)
points(df2)
par(mfrow=c(2,2))
hist(df3$base_Total)
hist(df4$base_happiness)
hist(df5$base_happiness)
hist(df6$base_happiness)

abline(v=mean_base,col="red",lwd=2)

boxplot(df7$base_happiness)


#-->Write a simple function in R to calculate 
#something based on the Pokemon dataset
#plot the base_total vs base_happiness of columns with base_total>mean_base
func_to_plot<-function(df){
  df<-subset(df,df[base_Total]>mean_base)
  plot(df$base_Total,df$base_happiness)
  slope<-lm(df$base_Total~df$base_happiness)
    abline(slope,col="red",lwd=2)
}


#-->use aggregate, sapply, tapply and apply to 
#use a function on a subset of the data
sapply(df1,mean)
tapply(df1$base_Total,df1$base_happiness,mean)
aggregate(df1$base_Total,by=list(df1$base_happiness),mean)
apply(df1,2,mean)


#-->how would use detach and attach functions?
detach(df1)
attach(df1)

#-->use shapiro.test, qqplot, hist etc to decide on the type of tests to use
shapiro.test(df1$base_Total)
qqplot(df1$base_Total)
hist(df1$base_Total)


#-->use table, barplot, rbind, cbind, interaction.plot and two way boxplot to
# tabulate data by two variables
table(df1$base_Total,df1$base_happiness)
barplot(df1$base_Total,df1$base_happiness)
rbind(df1$base_Total,df1$base_happiness)
cbind(df1$base_Total,df1$base_happiness)
interaction.plot(df1$base_Total,df1$base_happiness)
boxplot(df1$base_Total,df1$base_happiness)

#-->based on your knowledge of Pokemon, formulate hypothesis
#"The types and characteristics of Pokémon species 
#have a significant impact on their success in battles, 
#and players can strategically select and train 
#their Pokémon to achieve better performance in battles."

#-->use wilcox.test to compare variables, 
#change the alternative hypothesis, paired argument,
# exact argument, correct argument and subset option

#http://www.sthda.com/english/articles/31-principal-component-methods-in-r-practical-guide/118-principal-component-analysis-in-r-prcomp-vs-princomp/

#wilcox.test(df1$base_Total,df1$base_happiness,alternative="less",
#paired=TRUE,exact=FALSE,correct=TRUE,subset=df1$base_Total>mean_base)

#-->demonstrate tabulation and stacked barplot for the 
#pokemon multi variable dataset
table(df1$base_Total,df1$base_happiness)
barplot(df1$base_Total,df1$base_happiness)

#-->Find (and test significance) the character that provides 
#an advantage to each of the following Legendary
# Pokemon:"Lugia", "Zekrom", "Yveltal", "Xerneas", "Solgaleo", "Dialga"



#-->  use wilcox.test to compare variables, change the alternative hypothesis, paired argument, exact argument, correct argument and subset option
#-->  save the results of wilcox.test in an object and write it to a file using write.table function
#-->  find cor and cov between different vectors in the pokemon dataset
#-->  use linear regression to fit the data, summarize fit, use predict function in R on the linear model
#-->  use glm function to fit the data, summarize fit, use predict function in R on the glm model


