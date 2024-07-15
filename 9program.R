library(ggplot2)
library(dplyr)
library(patchwork)

data<-data.frame(
  student=c("a","b","c","d","e"),
  score=c(90,80,70,98,78),
  attend=c(70,75,78,98,80),
  time=c(1,2,3,4,5)
)

a<-ggplot(data,aes(x=attend,y=score))+
  geom_point(color="blue",size=3)+
  labs(title="scatter plot",x="attendance",y="score")

b<-ggplot(data,aes(x=student,y=score,fill=student))+
  geom_bar(stat="identity",color="blue")+
  labs(title="bar plot",x="student",y="score")

c<-ggplot(data,aes(x=time,y=score))+
  geom_line(color="red",size=1)+
  geom_point(color="blue",size=3)+
  labs(title="line plot",x="time",y="score")

d<-ggplot(data,aes(x=score))+
  geom_histogram(binwidth = 5,fill="blue",color="black")+
  labs(title="hist plot",x="attendance",y="frequency")

combined_plot<-a+b+c+d
print(combined_plot)