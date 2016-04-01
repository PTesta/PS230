# Data to host on git for students

setwd("~/Documents/_Grad_School/_Teaching/PS_230/PS230/data")

library(foreign)
nes2012<-read.spss("anes_specialstudy_2012_directdem_sav/anes_specialstudy_2012_directdem.sav",to.data.frame=T)
head(nes2012)
nes2012<-read.table("anes_specialstudy_2012_directdem/anes_specialstudy_2012_directdem_rawdata.txt",sep="|",quote="",header=T)
dim(nes2012)
save(nes2012,file="nes12dd.rda")

# Aaraon
install.packages("Lahman")
library()
data("Salaries")
data("Teams")
Salaries$teamID

head(Salaries) # Salary data
head(Teams) # Team data
dim(Teams)
library(plyr)

df<-ddply(Salaries,.(yearID,teamID),summarize,
          payroll=sum(salary,na.rm=T)
)



# Merge data
df<-merge(df,Teams,by=c("yearID","teamID"),all.x=T)
head(df)
# Payroll overtime
plot(df$yearID,df$payroll)
# Payroll and wins
plot(df$payroll,df$W)

#
library(foreign)
pew<-read.spss("Nov14public.sav",to.data.frame = T)
save(pew,file="pewNov14.rda")
pew<-read.spss(url("https://raw.github.com/PTesta/PS230/master/data/Nov14public.sav"))

load(url("https://raw.github.com/PTesta/PS230/master/data/pewNov14.rda"))

nmc<-read.csv(url("https://raw.github.com/PTesta/PS230/master/data/NMC_v4_0.csv"))

head(nmc)

nba.tat<-read.csv(url("https://raw.github.com/fivethirtyeight/data/master/nba-tattoos/nba-tattoos-data.csv"))
nba.stat<-read.csv(url("https://raw.github.com/PTesta/PS230/master/data/nba2015_16.csv"))
nba.stat<-nba.stat[order(nba.stat$Player),]
# How many matches
sum(nba.tat$Player.Name%in%nba.stat$Player)
# Merge Data
nba<-merge(nba.stat,nba.tat,by.x="Player",by.y="Player.Name",all.x=T)

head(nba)
table(nba$Tattoos.yes.no,useNA="ifany")

# Kat

load(url("http://www.jakebowers.org/PS230/Dem-Nations.rda"))
load(url("https://raw.github.com/PTesta/PS230/master/data/qogts.rda"))

# Stephen
library(Lahman)
data("Salaries")
data("AwardsPlayers")
dim(Salaries)
dim(AwardsPlayers)

mlb<-merge(Salaries,AwardsPlayers,by=c("playerID","yearID","lgID"),all.x=T)
dim(mlb)
head(mlb)
head(na.omit(mlb[mlb$awardID=="TSN All-Star",]))
table(mlb$awardID)
# I think this is the sporting news...
with(mlb[mlb$awardID=="TSN All-Star",],plot(yearID,salary
                                            
                                            ))

nba.tat<-read.csv(url("https://raw.github.com/fivethirtyeight/data/master/nba-tattoos/nba-tattoos-data.csv"))
nba.stat<-read.csv(url("https://raw.github.com/PTesta/PS230/master/data/nba2015_16.csv"))
nba.fouls<-read.csv(url("https://raw.github.com/PTesta/PS230/master/data/nba_fouls.csv"))
# How many matches
# Merge Data
nba<-merge(nba.stat,nba.tat,by.x="Player",by.y="Player.Name",all.x=T)

# If you want other stats...
nba.stat<-read.csv(url("https://raw.github.com/PTesta/PS230/master/data/nba2015_16.csv"))
# Get tables from pro football reference
nfl15<-readHTMLTable("http://www.pro-football-reference.com/years/2015/",stringsAsFactors=F)
# Create standings
nfl15$AFC<-nfl15$AFC[!grepl("AFC",nfl15$AFC$Tm),]
nfl15$NFC<-nfl15$NFC[!grepl("NFC",nfl15$NFC$Tm),]
# Clean Names
nfl15$NFC$Tm<-gsub("[[:punct:]]","",nfl15$NFC$Tm)
nfl15$AFC$Tm<-gsub("[[:punct:]]","",nfl15$AFC$Tm)
# Create DF
nfl15.df<-rbind(nfl15$NFC,nfl15$AFC)
nfl15.df

# Merge Offensive stats
nfl15.df<-merge(nfl15.df,nfl15$team_stats, by="Tm",all.x=T)
# Note from pro football that some columns have the same name. You'll have to fix this.



nfl15$AFC[!grepl("AFC",nfl15$AFC$Tm),]

nfl15o<-readHTMLTable("http://espn.go.com/nfl/statistics/team/_/stat/total",stringsAsFactors = FALSE)[[1]]
nfl15d<-readHTMLTable("http://espn.go.com/nfl/statistics/team/_/stat/total",stringsAsFactors = FALSE)[[1]]




