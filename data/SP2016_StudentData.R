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




