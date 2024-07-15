library(ggplot2)
library(readr)

data<-read_csv("C:/Users/Yash/Desktop/data.csv")

print(data)

total_matches<-nrow(data)

cat("total nnumber of matches played: ",total_matches,"\n")

unique_teams<-n_distinct(data$Match_ID)

cat("number of unique matches: ",unique_teams,"\n")

team1<-n_distinct(data$Team1)

cat("team 1 unique teams: ",team1,"\n")

team2<-n_distinct(data$Team2)

cat("team 2 unique teams: ",team2,"\n")

won<-table(data$Winner)

cat("number of matches won: ",won,"\n")

avg<-sum(data$Total.Runs)/nrow(data)

cat("average run: ",avg,"\n")

avg1<-sum(data$Total.Wickets)/nrow(data)

cat("average wickets: ",avg1,"\n")

venue<-names(which.max(table(data$Venue)))

cat("venue: ",venue,"\n")

cat("structure of the data: \n")

str(data)

cat("summary of the data\n")

print(summary(data))

a<-ggplot(data,aes(x=Winner))+
  geom_bar(stat="count",fill="blue",color="black")+
  labs(title="bar plot",x="winner",y="no.of wins")
print(a)
