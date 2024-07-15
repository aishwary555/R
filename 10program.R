library(dplyr)

student<-data.frame(
  student_id=1:5,
  name=c("A","B","C","D","E"),
  score=c(90,80,70,60,98),
  attendance=c(98,96,67,89,56),
  class_id=c(1,1,2,2,3)
)
class<-data.frame(
  class_id=1:3,
  class_name=c("maths","science","history")
)

filter_data<-student %>%
  filter(attendance>80) %>%
  select(name,score)

print("filter and select\n")
print(filter_data)

mutate_data<- student %>%
  mutate(new_score=score+5)

print("mutate: \n")
print(mutate_data)

group_data<- student %>%
  group_by(class_id) %>%
  summarize(avg=mean(score))
print("group and summary\n")
print(group_data)

arrange_data<-student %>%
  arrange(desc(score))

print("arrange\n")
print(arrange_data)

join_data<-student %>%
  inner_join(class,by="class_id")

print("join\n")
print(join_data)