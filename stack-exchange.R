#getwd()
#setwd("G:/Rstiduo/EIT/Stack Exchange")
#Worldusers count #4090800
#worldusers <- read.csv("worldusers.csv",header = TRUE)
###################################################################################

#Read data from csvs files 

Sudan_users <- read.csv("Sudan_users.csv",header = TRUE)
Saudi_aribia_users <- read.csv("saudi_aribia_users.csv",header = TRUE)
Iraq_users <- read.csv("Iraq_users.csv",header = TRUE)
Morocco_users <- read.csv("Morocco_users.csv",header = TRUE)
Algiera_users <- read.csv("Algiera_users.csv",header = TRUE)
Egypt_users <- read.csv("Egypt_users.csv",header = TRUE)#not clean (Alexandria, VA)
UAE_users <- read.csv("UAE_users.csv",header = TRUE)
Syria_users <- read.csv("Syria_users.csv",header = TRUE)
Tunisia_users <- read.csv("Tunisia_users.csv",header = TRUE)
Jordan_users <- read.csv("Jordan_users.csv",header = TRUE)
Libyia_users <- read.csv("Libyia_users.csv",header = TRUE)
Palestine_users <- read.csv("Palestine_users.csv",header = TRUE)
Lebanon_users <- read.csv("Lebanon_users.csv",header = TRUE)
Oman_users <- read.csv("Oman_users.csv",header = TRUE)
Kuwait_users <- read.csv("Kuwait_users.csv",header = TRUE)
Mauritania_users <- read.csv("Mauritania_users.csv",header = TRUE)
Qatar_users <- read.csv("Qatar_users.csv",header = TRUE)
Bahrain_users <- read.csv("Bahrain_users.csv",header = TRUE)
Yemen_users <- read.csv("Yemen_users.csv",header = TRUE)
Djibouti_users <- read.csv("Djibouti_users.csv",header = TRUE)
Somalia_users <- read.csv("Somalia_users.csv",header = TRUE)
############################################################################
#Clean data

Sudan <- subset(Sudan_users, Location!="South Sudan")

Sudan$Location <- as.character(Sudan$Location)
Sudan$Location <- "Sudan"
Sudan$Location <- factor(Sudan$Location)
#####
Saudi_aribia_users$Location <- as.character(Saudi_aribia_users$Location)
Saudi_aribia_users$Location <- "KSA"
Saudi_aribia_users$Location <- factor(Saudi_aribia_users$Location)
#####
Saudi_aribia_users$Location <- as.character(Saudi_aribia_users$Location)
Saudi_aribia_users$Location <- "KSA"
Saudi_aribia_users$Location <- factor(Saudi_aribia_users$Location)
#####
Iraq_users$Location <- as.character(Iraq_users$Location)
Iraq_users$Location <- "Iraq"
Iraq_users$Location <- factor(Iraq_users$Location)
#####
Morocco_users$Location <- as.character(Morocco_users$Location)
Morocco_users$Location <- "Morocco"
Morocco_users$Location <- factor(Morocco_users$Location)
#####
Algiera_users$Location <- as.character(Algiera_users$Location)
Algiera_users$Location <- "Algiera"
Algiera_users$Location <- factor(Algiera_users$Location)
#####
Egypt1 <- subset(Egypt_users, Location!="Alexandria, VA")
Egypt <- subset(Egypt1, Location!="Alexandria, LA")

Egypt$Location <- as.character(Egypt$Location)
Egypt$Location <- "Egypt"
Egypt$Location <- factor(Egypt$Location)
#####
UAE_users$Location <- as.character(UAE_users$Location)
UAE_users$Location <- "UAE"
UAE_users$Location <- factor(UAE_users$Location)
#####
Syria_users$Location <- as.character(Syria_users$Location)
Syria_users$Location <- "Syria"
Syria_users$Location <- factor(Syria_users$Location)
#####
Tunisia_users$Location <- as.character(Tunisia_users$Location)
Tunisia_users$Location <- "Tunisia"
Tunisia_users$Location <- factor(Tunisia_users$Location)
#####
Jordan_users$Location <- as.character(Jordan_users$Location)
Jordan_users$Location <- "Jordan"
Jordan_users$Location <- factor(Jordan_users$Location)
#####
Libyia_users$Location <- as.character(Libyia_users$Location)
Libyia_users$Location <- "Libyia"
Libyia_users$Location <- factor(Libyia_users$Location)
#####
Palestine <- subset(Palestine_users, Location!="Jerusalem")

Palestine$Location <- as.character(Palestine$Location)
Palestine$Location <- "Palestine"
Palestine$Location <- factor(Palestine$Location)
#####
Lebanon <- subset(Lebanon_users, Location!="Libya - Tripoli")

Lebanon$Location <- as.character(Lebanon$Location)
Lebanon$Location <- "Lebanon"
Lebanon$Location <- factor(Lebanon$Location)
#####
Oman <- subset(Oman_users, Location!="Muscatine, IA")

Oman$Location <- as.character(Oman$Location)
Oman$Location <- "Oman"
Oman$Location <- factor(Oman$Location)
#####
Kuwait_users$Location <- as.character(Kuwait_users$Location)
Kuwait_users$Location <- "Kuwait"
Kuwait_users$Location <- factor(Kuwait_users$Location)
#####
Mauritania_users$Location <- as.character(Mauritania_users$Location)
Mauritania_users$Location <- "Mauritania"
Mauritania_users$Location <- factor(Mauritania_users$Location)
#####
Qatar_users$Location <- as.character(Qatar_users$Location)
Qatar_users$Location <- "Qatar"
Qatar_users$Location <- factor(Qatar_users$Location)
#####
Bahrain_users$Location <- as.character(Bahrain_users$Location)
Bahrain_users$Location <- "Bahrain"
Bahrain_users$Location <- factor(Bahrain_users$Location)
#####
Yemen_users$Location <- as.character(Yemen_users$Location)
Yemen_users$Location <- "Yemen"
Yemen_users$Location <- factor(Yemen_users$Location)
#####
Somalia_users$Location <- as.character(Somalia_users$Location)
Somalia_users$Location <- "Somalia"
Somalia_users$Location <- factor(Somalia_users$Location)
###############################Merge############################

All <- rbind(Somalia_users,Djibouti_users,Yemen_users,Bahrain_users,Mauritania_users,Qatar_users,Kuwait_users,Oman,Lebanon,
             Palestine,Libyia_users,Jordan_users,Tunisia_users,Syria_users,UAE_users,Egypt,
             Algiera_users,Morocco_users,Iraq_users,Saudi_aribia_users,Sudan) 

################################################################
 #Plot Arab Users in Stack Exchange

library(ggplot2)

qplot(data = All, x = All$Location)+
  geom_histogram(binwidth=1,color = I('black'), fill = I('#FF0000'))+
  xlab("Arab Countries") +
  ylab("Numbers of Users") +
#ggsave('Histogram.Arab_countries.png')
  ggsave(
    "Histogram.Arab_countries.png",
    #ggplot_alternative(),
    width = 13.25,
    height = 5.25,
    dpi = 1200
  )

#########################################################################

#Plot Average Reuptation per Arab Countries

df <- aggregate( All$Reputation ~ All$Location, FUN = mean )
                #Need improve because mean is affected by each sigle value 
                #While median is affected by total count of users where some countries have only 2 users!
colnames(df)[1] <- "C_Locations"
colnames(df)[2] <- "C_Averages"

qplot(data = df, x = df$C_Locations, y = df$C_Averages,
      position="dodge", geom="bar",fill = I('#FF0000'),
      stat="identity")+
  xlab("Arab Countries") +
  ylab("Users' Average Reputation") 
ggsave(
  "Reputation.Arab_countries.png",
  #ggplot_alternative(),
  width = 13.25,
  height = 5.25,
  dpi = 1200
)

####################################################################################

#Plot users' interval ages 

New_All <- All[!is.na(All$Age),] #omit NA Values

New_All$Age <- as.numeric(substr(New_All$Age, 1, 2))

New_All$Age.bucket <- cut(New_All$Age,c(10,20,30,40,50,60),include.lowest= TRUE,right=FALSE)

qplot(data = New_All, x = New_All$Age.bucket)+  
  geom_histogram(color = I('black'), fill = I('#FF0000'))+
  xlab("Age Intervals") +
  ylab("Count of users")+
  ggtitle('Arab Users per age')
ggsave('Arab_Users_Ages.png')

####################################################################################

#Plot Top 15 tags in MENA

Qatar_tags <- read.csv("Qatar_tags.csv",header = TRUE)
Kuwait_tags <- read.csv("Kuwait_tags.csv",header = TRUE)
Lebanon_tags <- read.csv("Lebanon_tags.csv",header = TRUE)
KSA_tags <- read.csv("KSA_tags.csv",header = TRUE)
Palestine_tags <- read.csv("Palestine_tags.csv",header = TRUE)
Syria_tags <- read.csv("Syria_tags.csv",header = TRUE)
Sudan_tags <- read.csv("Sudan_tags.csv",header = TRUE)
Morocco_tags <- read.csv("Morocco_tags.csv",header = TRUE)
Iraq_tags <- read.csv("Iraq_tags.csv",header = TRUE)
Algeria_tags <- read.csv("Algeria_tags.csv",header = TRUE)
Egypt_tags <- read.csv("Egypt_tags.csv",header = TRUE)
UAE_tags <- read.csv("UAE_tags.csv",header = TRUE)
Tunisia_tags <- read.csv("Tunisia_tags.csv",header = TRUE)
Jordan_tags <- read.csv("Jordan_tags.csv",header = TRUE)
Libya_tags <- read.csv("Libya_tags.csv",header = TRUE)
Oman_tags <- read.csv("Oman_tags.csv",header = TRUE)
Mauritania_tags <- read.csv("Mauritania_tags.csv",header = TRUE)
Bahrain_tags <- read.csv("Bahrain_tags.csv",header = TRUE)
Yemen_tags <- read.csv("Yemen_tags.csv",header = TRUE)
Somalia_tags <- read.csv("Somalia_tags.csv",header = TRUE)
Djibouti_tags <- read.csv("Djibouti_tags.csv",header = TRUE)


Qatar_tags1 <- Qatar_tags[1:10, ]
Kuwait_tags1 <- Kuwait_tags[1:10, ]
Lebanon_tags1 <- Lebanon_tags[1:10, ]
KSA_tags1 <- KSA_tags[1:10, ]
Palestine_tags1 <- Palestine_tags[1:10, ]
Syria_tags1 <- Syria_tags[1:10, ]
Sudan_tags1 <- Sudan_tags[1:10, ]
Morocco_tags1 <- Morocco_tags[1:10, ]
Iraq_tags1 <- Iraq_tags[1:10, ]
Algeria_tags1 <- Algeria_tags[1:10, ]
Egypt_tags1 <- Egypt_tags[1:10, ]
UAE_tags1 <- UAE_tags[1:10, ]
Tunisia_tags1 <- Tunisia_tags[1:10, ]
Jordan_tags1 <- Jordan_tags[1:10, ]
Libya_tags1 <- Libya_tags[1:10, ]
Oman_tags1 <- Oman_tags[1:10, ]
Mauritania_tags1 <- Mauritania_tags[1:10, ]
Bahrain_tags1 <- Bahrain_tags[1:10, ]
Yemen_tags1 <- Yemen_tags[1:10, ]
Somalia_tags1 <- Somalia_tags[1:10, ]
Djibouti_tags1 <- Djibouti_tags[1:10, ]


All_tags <- rbind(Qatar_tags1,Kuwait_tags1,Lebanon_tags1,KSA_tags1,Palestine_tags1,Syria_tags1,
                  Sudan_tags1,Morocco_tags1,Iraq_tags1,Algeria_tags1,Egypt_tags1,UAE_tags1,
                  Tunisia_tags1,Jordan_tags1,Libya_tags1,Oman_tags1,Mauritania_tags1,Bahrain_tags1,
                  Yemen_tags1,Somalia_tags1,Djibouti_tags1) 

#names(All_tags)
#Summary(TagName ~ X, data=All_tags, FUN=SUM , keep.names=TRUE)


library(plyr)

Most_Tags <- ddply(All_tags, .(TagName), summarise, sum=sum(X))
names(Most_Tags)

new_Most_Tags <- Most_Tags[order(-Most_Tags$sum),]

new_Most_Tags1 <- new_Most_Tags[1:15, ]
names(new_Most_Tags1)

qplot(data = new_Most_Tags1, x = new_Most_Tags1$TagName, y = new_Most_Tags1$sum,
      position="dodge", geom="bar",fill = I('#FF0000'),
      stat="identity")+
  xlab("Tags") +
  ylab("Counts of Tags") 
ggsave(
  "Top_15_Tags_Arab_countries.png",
  #ggplot_alternative(),
  width = 13.25,
  height = 5.25,
  dpi = 1200
)
##################################################################################