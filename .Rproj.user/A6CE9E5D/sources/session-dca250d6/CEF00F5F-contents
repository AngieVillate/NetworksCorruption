#Regresión entre medidas descriptivas e indices de corrupcion de los paises.
library(readxl)
library(glmtoolbox)
library(reticulate)
 
#importar las medidas estadisticas y el ipc por año
load("densyear.Rda")
load("asoyear.Rda")
load("distyear.Rda")
load("compgigyear.Rda")
load("degyear.Rda")
IPC<- read_excel("IPC.xlsx")
densyear<-as.data.frame(cbind(IPC$Pais,densyear))
asoyear<-as.data.frame(cbind(IPC$Pais,asoyear))
distyear<-as.data.frame(cbind(IPC$Pais,distyear))
compgigyear<-as.data.frame(cbind(IPC$Pais,compgigyear))
degyear<-as.data.frame(cbind(IPC$Pais,degyear))




names(densyear)<-names(asoyear)<-names(distyear)<-names(compgigyear)<-names(degyear)<-names(IPC)<-c("Country","Y2008","Y2009","Y2010","Y2011","Y2012","Y2013","Y2014","Y2015","Y2016")


#juntar todas las medidas de un año




medidas<-function(i){
  res<-as.data.frame(matrix(rep(NA,182),nrow=26,ncol=7))
  res<-cbind(densyear[,1], as.numeric(densyear[,i]),as.numeric(asoyear[,i]),as.numeric(distyear[,i]),
             as.numeric(compgigyear[,i]),as.numeric(degyear[,i]),IPC[,i])
  names(res)<- c("pais", "densidad", "asortatividad", "distgeo", "compgig", "gradomedio","IPC")
  
  return(res)
}


Y2008<-medidas(2)
Y2009<-medidas(3)
Y2010<-medidas(4)
Y2011<-medidas(5)
Y2012<-medidas(6)
Y2013<-medidas(7)
Y2014<-medidas(8)
Y2015<-medidas(9)
Y2016<-medidas(10)


#regresion
source("funciones.txt")

################2008##########
Y2008c<-Y2008[,-1]
cor(Y2008c)

fitmed2008<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2008)
summary(fitmed2008)


stepCriterion(fitmed2008, direction = "backward", criterion = "aic")
stepCriterion(fitmed2008, direction = "backward", criterion = "bic")


fit2med2008<-lm(IPC ~ gradomedio + compgig, data=Y2008)
summary(fit2med2008)

################2009###########
Y2009c<-Y2009[,-1]
cor(Y2009c)

fitmed2009<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2009)
summary(fitmed2009)


stepCriterion(fitmed2009, direction = "backward", criterion = "aic")
stepCriterion(fitmed2009, direction = "backward", criterion = "bic")


fit2med2009<-lm(IPC ~ gradomedio + compgig, data=Y2009)
summary(fit2med2009)

################2010###########

Y2010c<-Y2010[,-1]
cor(Y2010c)

fitmed2010<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2010)
summary(fitmed2010)


stepCriterion(fitmed2010, direction = "backward", criterion = "aic")
stepCriterion(fitmed2010, direction = "backward", criterion = "bic")


fit2med2010<-lm(IPC ~ gradomedio + compgig, data=Y2010)
summary(fit2med2010)

################2011###########

Y2011c<-Y2011[,-1]
cor(Y2011c)

fitmed2011<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2011)
summary(fitmed2011)


stepCriterion(fitmed2011, direction = "backward", criterion = "aic")
stepCriterion(fitmed2011, direction = "backward", criterion = "bic")


fit2med2011<-lm(IPC ~ gradomedio + compgig, data=Y2011)
summary(fit2med2011)
################2012###########

Y2012c<-Y2012[,-1]
cor(Y2012c)

fitmed2012<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2012)
summary(fitmed2012)


stepCriterion(fitmed2012, direction = "backward", criterion = "aic")
stepCriterion(fitmed2012, direction = "backward", criterion = "bic")


fit2med2012<-lm(IPC ~ gradomedio + compgig, data=Y2012)
summary(fit2med2012)

################2013###########

Y2013c<-Y2013[,-1]
cor(Y2013c)

fitmed2013<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2013)
summary(fitmed2013)


stepCriterion(fitmed2013, direction = "backward", criterion = "aic")
stepCriterion(fitmed2013, direction = "backward", criterion = "bic")


fit2med2013<-lm(IPC ~ gradomedio + compgig, data=Y2013)
summary(fit2med2013)

################2014###########

Y2014c<-Y2014[,-1]
cor(Y2014c)

fitmed2014<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2014)
summary(fitmed2014)


stepCriterion(fitmed2014, direction = "backward", criterion = "aic")
stepCriterion(fitmed2014, direction = "backward", criterion = "bic")


fit2med2014<-lm(IPC ~ gradomedio + compgig, data=Y2014)
summary(fit2med2014)
################2015###########

Y2015c<-Y2015[,-1]
cor(Y2015c)

fitmed2015<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2015)
summary(fitmed2015)


stepCriterion(fitmed2015, direction = "backward", criterion = "aic")
stepCriterion(fitmed2015, direction = "backward", criterion = "bic")


fit2med2015<-lm(IPC ~ gradomedio + compgig, data=Y2015)
summary(fit2med2015)

################2016###########

Y2016c<-Y2016[,-1]
cor(Y2016c)

fitmed2016<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio , data=Y2016)
summary(fitmed2016)


stepCriterion(fitmed2016, direction = "backward", criterion = "aic")
stepCriterion(fitmed2016, direction = "backward", criterion = "bic")


fit2med2016<-lm(IPC ~ gradomedio + compgig, data=Y2016)
summary(fit2med2016)







#####################cluster###############

Cluster2008 <- read_excel("Cluster2008.xlsx",  range = "B1:B27")
Y2008 <- cbind(Y2008, Cluster2008)
names(Y2008)[8]<-"RAcluster"


Cluster2009 <- read_excel("Cluster2009.xlsx",  range = "B1:B27")
Y2009 <- cbind(Y2009, Cluster2009)
names(Y2009)[8]<-"RAcluster"


Cluster2010 <- read_excel("Cluster2010.xlsx",  range = "B1:B27")
Y2010 <- cbind(Y2010, Cluster2010)
names(Y2010)[8]<-"RAcluster"

Cluster2011 <- read_excel("Cluster2011.xlsx",  range = "B1:B27")
Y2011 <- cbind(Y2011, Cluster2011)
names(Y2011)[8]<-"RAcluster"

Cluster2012 <- read_excel("Cluster2012.xlsx",  range = "B1:B27")
Y2012 <- cbind(Y2012, Cluster2012)
names(Y2012)[8]<-"RAcluster"

Cluster2013 <- read_excel("Cluster2013.xlsx",  range = "B1:B27")
Y2013 <- cbind(Y2013, Cluster2013)
names(Y2013)[8]<-"RAcluster"

Cluster2014 <- read_excel("Cluster2014.xlsx",  range = "B1:B27")
Y2014 <- cbind(Y2014, Cluster2014)
names(Y2014)[8]<-"RAcluster"

Cluster2015 <- read_excel("Cluster2015.xlsx",  range = "B1:B27")
Y2015 <- cbind(Y2015, Cluster2015)
names(Y2015)[8]<-"RAcluster"

Cluster2016 <- read_excel("Cluster2016.xlsx",  range = "B1:B27")
Y2016 <- cbind(Y2016, Cluster2016)
names(Y2016)[8]<-"RAcluster"



RACyear<-as.matrix(cbind(Cluster2008,Cluster2009,Cluster2010,Cluster2011,Cluster2012,
               Cluster2013,Cluster2014,Cluster2015,Cluster2016))

RACyearbox<-as.vector(RACyear)
year<-c(rep('2008',nrow(RACyear)),rep('2009',nrow(RACyear)),rep('2010',nrow(RACyear)),rep('2011',nrow(RACyear)),
        rep('2012',nrow(RACyear)),rep('2013',nrow(RACyear)),rep('2014',nrow(RACyear)),rep('2015',nrow(RACyear)),
        rep('2016',nrow(RACyear)))



RACyearbox<-cbind(RACyearbox,year)
RACyearbox<-as.data.frame(RACyearbox)
names(RACyearbox)[1]<-"RA_Cluster"
RACyearbox$RA_Cluster<-as.numeric(RACyearbox$RA_Cluster)


boxplot(RACyearbox$RA_Cluster ~ RACyearbox$year, xlab = "Año", ylab = "RAC", )
stripchart(RACyearbox$RA_Cluster ~ RACyearbox$year, vertical = TRUE, method = "jitter",
           pch = 19, add = TRUE, col = 1:9)



#############Regresiones P2################

################2008##########
fitmed2008<-lm(IPC ~ RAcluster , data=Y2008)
summary(fitmed2008)


fitmed2008<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2008)
summary(fitmed2008)


stepCriterion(fitmed2008, direction = "backward", criterion = "aic")
stepCriterion(fitmed2008, direction = "backward", criterion = "bic")


fit3med2008<-lm(IPC ~ densidad + asortatividad + distgeo + compgig  + RAcluster , data=Y2008)
summary(fit3med2008)

################2009##########
fitmed2009<-lm(IPC ~ RAcluster , data=Y2009)
summary(fitmed2009)


fitmed2009<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2009)
summary(fitmed2009)


stepCriterion(fitmed2009, direction = "backward", criterion = "aic")
stepCriterion(fitmed2009, direction = "backward", criterion = "bic")


fit3med2009<-lm(IPC ~  distgeo + gradomedio + RAcluster , data=Y2009)
summary(fit3med2009)

################2010##########
fitmed2010<-lm(IPC ~ RAcluster , data=Y2010)
summary(fitmed2010)


fitmed2010<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2010)
summary(fitmed2010)


stepCriterion(fitmed2010, direction = "backward", criterion = "aic")
stepCriterion(fitmed2010, direction = "backward", criterion = "bic")


fit3med2010<-lm(IPC ~ densidad + gradomedio + RAcluster , data=Y2010)
summary(fit3med2010)
################2011##########
fitmed2011<-lm(IPC ~ RAcluster , data=Y2011)
summary(fitmed2011)


fitmed2011<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2011)
summary(fitmed2011)


stepCriterion(fitmed2011, direction = "backward", criterion = "aic")
stepCriterion(fitmed2011, direction = "backward", criterion = "bic")


fit3med2011<-lm(IPC ~ densidad + asortatividad + gradomedio + RAcluster , data=Y2011)
summary(fit3med2011)

fit4med2011<-lm(IPC ~ gradomedio + RAcluster , data=Y2011)
summary(fit4med2011)

################2012##########
fitmed2012<-lm(IPC ~ RAcluster , data=Y2012)
summary(fitmed2012)


fitmed2012<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2012)
summary(fitmed2012)


stepCriterion(fitmed2012, direction = "backward", criterion = "aic")
stepCriterion(fitmed2012, direction = "backward", criterion = "bic")


fit3med2012<-lm(IPC ~ densidad + compgig  + RAcluster , data=Y2012)
summary(fit3med2012)

################2013##########
fitmed2013<-lm(IPC ~ RAcluster , data=Y2013)
summary(fitmed2013)


fitmed2013<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2013)
summary(fitmed2013)


stepCriterion(fitmed2013, direction = "backward", criterion = "aic")
stepCriterion(fitmed2013, direction = "backward", criterion = "bic")


fit3med2013<-lm(IPC ~ densidad + asortatividad + compgig + gradomedio  + RAcluster , data=Y2013)
summary(fit3med2013)

################2014##########
fitmed2014<-lm(IPC ~ RAcluster , data=Y2014)
summary(fitmed2014)


fitmed2014<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2014)
summary(fitmed2014)


stepCriterion(fitmed2014, direction = "backward", criterion = "aic")
stepCriterion(fitmed2014, direction = "backward", criterion = "bic")


fit3med2014<-lm(IPC ~ densidad + gradomedio  + RAcluster , data=Y2014)
summary(fit3med2014)

fit4med2014<-lm(IPC ~ densidad + compgig + gradomedio + RAcluster , data=Y2014)
summary(fit4med2014)

################2015##########
fitmed2015<-lm(IPC ~ RAcluster , data=Y2015)
summary(fitmed2015)


fitmed2015<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2015)
summary(fitmed2015)


stepCriterion(fitmed2015, direction = "backward", criterion = "aic")
stepCriterion(fitmed2015, direction = "backward", criterion = "bic")


fit3med2015<-lm(IPC ~ densidad + compgig + gradomedio  + RAcluster , data=Y2015)
summary(fit3med2015)

################2016##########
fitmed2016<-lm(IPC ~ RAcluster , data=Y2016)
summary(fitmed2016)


fitmed2016<-lm(IPC ~ densidad + asortatividad + distgeo + compgig + gradomedio + RAcluster , data=Y2016)
summary(fitmed2016)


stepCriterion(fitmed2016, direction = "backward", criterion = "aic")
stepCriterion(fitmed2016, direction = "backward", criterion = "bic")


fit3med2016<-lm(IPC ~ densidad + compgig  + gradomedio + RAcluster , data=Y2016)
summary(fit3med2016)
