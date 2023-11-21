library(igraph)
library(sna)
library(tsna)
library(ndtv)
library(xlsx)

cresumen<-readRDS("cresumen.rds")
load("grafos por año/grafos_2008.Rda")
load("grafos por año/grafos_2009.Rda")
load("grafos por año/grafos_2010.Rda")
load("grafos por año/grafos_2011.Rda")
load("grafos por año/grafos_2012.Rda")
load("grafos por año/grafos_2013.Rda")
load("grafos por año/grafos_2014.Rda")
load("grafos por año/grafos_2015.Rda")
load("grafos por año/grafos_2016.Rda")


###########Descriptivas ponderadas#######

tabres<-densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-NULL


despond<-function(grafo){
  for(i in 1:26){
    densidad[i]<-edge_density(grafo[[i]])
    coefagrupamiento[i]<-transitivity(graph = grafo[[i]], type = "global")
    asortatividad[i]<-assortativity_degree(graph = grafo[[i]], directed= F)
    distgeoavg[i]<-mean_distance(graph = grafo[[i]], directed = TRUE)
    comp<- decompose(grafo[[i]])
    compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafo[[i]])
    gavg[i]<-mean(igraph::degree(graph = grafo[[i]]))
  }
  
  tabres<-rbind(mean(densidad),mean(asortatividad), mean(distgeoavg),mean(compgsize),mean(gavg))
  row.names(tabres)<-c("densidad","asortatividad", "dist.geo.prom","tamaño compgig", "grado medio")
  
  return(tabres) 
}


desyear<-matrix(rep(NA,45), ncol=9, nrow=5)


for (i in 1:9) {
  for (j in 2008:2016) {
    desyear[,i]<-despond(get(paste0('grafos_',j)))  
  }
}

desyear<-as.data.frame(desyear)
write.xlsx(desyear, "Descriptivas anual.xlsx")




nodos<-NULL

for (i in 1:nrow(cresumen)) {
  for (j in 2008:2016) {
    nodos[i,j]<-gsize(get(paste0('grafos_',j))[[i]])
  }
}


######################### box plots############## 

####densidad####
densyear<-matrix(rep(NA,234), ncol=9, nrow=26)

tictoc::tic()
for (i in 1:26) {
  for (j in 2008:2016) {
    densyear[i,]<-edge_density(get(paste0('grafos_',j))[[i]])  
  }
}
tictoc::toc()

save(densyear, file="densyear.Rda")
densyearbox<-as.vector(densyear)
year<-c(rep('2008',nrow(densyear)),rep('2009',nrow(densyear)),rep('2010',nrow(densyear)),rep('2011',nrow(densyear)),
        rep('2012',nrow(densyear)),rep('2013',nrow(densyear)),rep('2014',nrow(densyear)),rep('2015',nrow(densyear)),
        rep('2016',nrow(densyear)))



densyearbox<-cbind(densyearbox,year)
densyearbox<-as.data.frame(densyearbox)
names(densyearbox)[1]<-"densidad"
densyearbox$densidad<-as.numeric(densyearbox$densidad)


boxplot(densyearbox$densidad ~ densyearbox$year, xlab = "Año", ylab = "Densidad", )
stripchart(densyearbox$densidad ~ densyearbox$year, vertical = TRUE, method = "jitter",
           pch = 19, add = TRUE, col = 1:9)


####asortatividad####
asoyear<-matrix(rep(NA,234), ncol=9, nrow=26)

tictoc::tic()
for (i in 1:26) {
  for (j in 2008:2016) {
    asoyear[i,]<-assortativity_degree(graph =get(paste0('grafos_',j))[[i]], directed= F)
  }
}
tictoc::toc()

save(asoyear, file="asoyear.Rda")
asoyearbox<-as.vector(asoyear)
year<-c(rep('2008',nrow(asoyear)),rep('2009',nrow(asoyear)),rep('2010',nrow(asoyear)),rep('2011',nrow(asoyear)),
        rep('2012',nrow(asoyear)),rep('2013',nrow(asoyear)),rep('2014',nrow(asoyear)),rep('2015',nrow(asoyear)),
        rep('2016',nrow(asoyear)))



asoyearbox<-cbind(asoyearbox,year)
asoyearbox<-as.data.frame(asoyearbox)
names(asoyearbox)[1]<-"asortatividad"
asoyearbox$asortatividad<-as.numeric(asoyearbox$asortatividad)


boxplot(asoyearbox$asortatividad ~ asoyearbox$year, xlab = "Año", ylab = "Asortatividad")
stripchart(asoyearbox$asortatividad ~ asoyearbox$year, vertical = TRUE, method = "jitter",
           pch = 19, add = TRUE, col = 1:9)








####Distancia geodesica####
distyear<-matrix(rep(NA,234), ncol=9, nrow=26)

tictoc::tic()
for (i in 1:26) {
  for (j in 2008:2016) {
    distyear[i,]<-mean_distance(graph = get(paste0('grafos_',j))[[i]], directed = TRUE)
  }
}
tictoc::toc()

save(distyear, file="distyear.Rda")
distyearbox<-as.vector(distyear)
year<-c(rep('2008',nrow(distyear)),rep('2009',nrow(distyear)),rep('2010',nrow(distyear)),rep('2011',nrow(distyear)),
        rep('2012',nrow(distyear)),rep('2013',nrow(distyear)),rep('2014',nrow(distyear)),rep('2015',nrow(distyear)),
        rep('2016',nrow(distyear)))



distyearbox<-cbind(distyearbox,year)
distyearbox<-as.data.frame(distyearbox)
names(distyearbox)[1]<-"Distancia_geodesica"
distyearbox$Distancia_geodesica<-as.numeric(distyearbox$Distancia_geodesica)


boxplot(distyearbox$Distancia_geodesica ~ distyearbox$year, xlab = "Año", ylab = "Distancia geodesica")
stripchart(distyearbox$Distancia_geodesica ~ distyearbox$year, vertical = TRUE, method = "jitter",
           pch = 19, add = TRUE, col = 1:9)


####Componente gigante####
compgigyear<-matrix(rep(NA,234), ncol=9, nrow=26)

tictoc::tic()
for (i in 1:26) {
  for (j in 2008:2016) {
    comp<- decompose(get(paste0('grafos_',j))[[i]])
    compgigyear[i,]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(get(paste0('grafos_',j))[[i]])
    
  }
}
tictoc::toc()

save(compgigyear, file="compgigyear.Rda")
compgigyearbox<-as.vector(compgigyear)
year<-c(rep('2008',nrow(compgigyear)),rep('2009',nrow(compgigyear)),rep('2010',nrow(compgigyear)),rep('2011',nrow(compgigyear)),
        rep('2012',nrow(compgigyear)),rep('2013',nrow(compgigyear)),rep('2014',nrow(compgigyear)),rep('2015',nrow(compgigyear)),
        rep('2016',nrow(compgigyear)))



compgigyearbox<-cbind(compgigyearbox,year)
compgigyearbox<-as.data.frame(compgigyearbox)
names(compgigyearbox)[1]<-"compgig"
compgigyearbox$compgig<-as.numeric(compgigyearbox$compgig)


boxplot(compgigyearbox$compgig ~ compgigyearbox$year, xlab = "Año", ylab = "Tamaño componente gigante")
stripchart(compgigyearbox$compgig ~ compgigyearbox$year, vertical = TRUE, method = "jitter",
           pch = 19, add = TRUE, col = 1:9)


####Grado medio####
degyear<-matrix(rep(NA,234), ncol=9, nrow=26)

tictoc::tic()
for (i in 1:26) {
  for (j in 2008:2016) {
    degyear[i,]<-mean(igraph::degree(graph =get(paste0('grafos_',j))[[i]]))
  }
}
tictoc::toc()

save(degyear, file="degyear.Rda")
degyearbox<-as.vector(degyear)
year<-c(rep('2008',nrow(degyear)),rep('2009',nrow(degyear)),rep('2010',nrow(degyear)),rep('2011',nrow(degyear)),
        rep('2012',nrow(degyear)),rep('2013',nrow(degyear)),rep('2014',nrow(degyear)),rep('2015',nrow(degyear)),
        rep('2016',nrow(degyear)))



degyearbox<-cbind(degyearbox,year)
degyearbox<-as.data.frame(degyearbox)
names(degyearbox)[1]<-"gradomedio"
degyearbox$gradomedio<-as.numeric(degyearbox$gradomedio)


boxplot(degyearbox$gradomedio ~ degyearbox$year, xlab = "Año", ylab = "Grado Medio")
stripchart(degyearbox$gradomedio ~ degyearbox$year, vertical = TRUE, method = "jitter",
           pch = 19, add = TRUE, col = 1:9)
