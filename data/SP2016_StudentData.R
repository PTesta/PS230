# Data to host on git for students

setwd("~/Documents/_Grad_School/_Teaching/PS_230/PS230/data")

library(foreign)
nes2012<-read.spss("anes_specialstudy_2012_directdem_sav/anes_specialstudy_2012_directdem.sav",to.data.frame=T)
head(nes2012)
nes2012<-read.table("anes_specialstudy_2012_directdem/anes_specialstudy_2012_directdem_rawdata.txt",sep="|",quote="",header=T)
dim(nes2012)
save(nes2012,file="nes12dd.rda")
