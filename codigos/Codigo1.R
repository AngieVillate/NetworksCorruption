#Paquetes
install.packages("sna")
install.packages("tsna")
install.packages("ndtv")
install.packages("xlsx")
insrall.packages("bipartite")




library(igraph)
library(sna)
library(tsna)
library(ndtv)
library(xlsx)



load("grafos por pais/grafos_AT.Rda")
load("grafos por pais/grafos_BE.Rda")
load("grafos por pais/grafos_BG.Rda")
load("grafos por pais/grafos_CY.Rda")
load("grafos por pais/grafos_CZ.Rda")
load("grafos por pais/grafos_DE.Rda")
load("grafos por pais/grafos_DK.Rda")
load("grafos por pais/grafos_EE.Rda")
load("grafos por pais/grafos_ES.Rda")
load("grafos por pais/grafos_FI.Rda")
load("grafos por pais/grafos_FR.Rda")
load("grafos por pais/grafos_GR.Rda")
load("grafos por pais/grafos_HU.Rda")
load("grafos por pais/grafos_IE.Rda")
load("grafos por pais/grafos_IT.Rda")
load("grafos por pais/grafos_LT.Rda")
load("grafos por pais/grafos_LV.Rda")
load("grafos por pais/grafos_NL.Rda")
load("grafos por pais/grafos_NO.Rda")
load("grafos por pais/grafos_PL.Rda")
load("grafos por pais/grafos_PT.Rda")
load("grafos por pais/grafos_RO.Rda")
load("grafos por pais/grafos_SE.Rda")
load("grafos por pais/grafos_SI.Rda")
load("grafos por pais/grafos_SK.Rda")
load("grafos por pais/grafos_UK.Rda")



#funcion para visualización métricas
series<-function(metrica, nombre, pais){
  titulo<-paste0("Serie de tiempo ", nombre, pais)
  matplot(x=c(2008:2016),y=metrica, type = "l", main= titulo, xlab = "Año", ylab = nombre)
}

a<-rep(NA,78)
cresumen<-matrix(a, nrow=26, ncol=3)
names(cresumen)<-c("pais","nodos_promedio","aristas_promedio")


###############AT#####################
#nodos y aristas promedio

nodosAT<-aristasAT<-NULL

for (i in 1:9) {
  nodosAT[i]<-(gsize(grafos_AT[[i]]))
  aristasAT[i]<-(gorder(grafos_AT[[i]]))
}

nodosAT<-mean(nodosAT)
aristasAT<-mean(aristasAT)

cresumen[1,1:3]<-cbind("AT", round(nodosAT,3), round(aristasAT,3))
#medidas descriptivas
densidad<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

for(i in 1:9){
  densidad[i]<-edge_density(grafos_AT[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_AT[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_AT[[i]], directed = TRUE)
  comp<- decompose(grafos_AT[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_AT[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_AT[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "AT")
plot3<-series(asortatividad, "asortatividad", "AT")
plot4<-series(distgeoavg, "dist geodésica promedio", "AT")
plot6<-series(compgsize, "tamaño componente gigante", "AT")
plot7<-series(gavg, "grado de salida promedio", "AT")

###############BE#####################
#nodos y aristas promedio

nodosBE<-aristasBE<-NULL

for (i in 1:9) {
  nodosBE[i]<-(gsize(grafos_BE[[i]]))
  aristasBE[i]<-(gorder(grafos_BE[[i]]))
}

nodosBE<-mean(nodosBE)
aristasBE<-mean(aristasBE)

cresumen[2,1:3]<-cbind("BE", round(nodosBE,3), round(aristasBE,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_BE[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_BE[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_BE[[i]], directed = TRUE)
  comp<- decompose(grafos_BE[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_BE[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_BE[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "BE")
plot3<-series(asortatividad, "asortatividad", "BE")
plot4<-series(distgeoavg, "dist geodésica promedio", "BE")
plot6<-series(compgsize, "tamaño componente gigante", "BE")
plot7<-series(gavg, "grado de salida promedio", "BE")

###############BG#####################
#nodos y aristas promedio

nodosBG<-aristasBG<-NULL

for (i in 1:9) {
  nodosBG[i]<-(gsize(grafos_BG[[i]]))
  aristasBG[i]<-(gorder(grafos_BG[[i]]))
}

nodosBG<-mean(nodosBG)
aristasBG<-mean(aristasBG)

cresumen[3,1:3]<-cbind("BG", round(nodosBG,3), round(aristasBG,3))



for(i in 1:9){
  densidad[i]<-edge_density(grafos_BG[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_BG[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_BG[[i]], directed = TRUE)
  comp<- decompose(grafos_BG[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_BG[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_BG[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "BG")
plot3<-series(asortatividad, "asortatividad", "BG")
plot4<-series(distgeoavg, "dist geodésica promedio", "BG")
plot6<-series(compgsize, "tamaño componente gigante", "BG")
plot7<-series(gavg, "grado de salida promedio", "BG")

###############CY#####################
#nodos y aristas promedio

nodosCY<-aristasCY<-NULL

for (i in 1:9) {
  nodosCY[i]<-(gsize(grafos_CY[[i]]))
  aristasCY[i]<-(gorder(grafos_CY[[i]]))
}

nodosCY<-mean(nodosCY)
aristasCY<-mean(aristasCY)

cresumen[4,1:3]<-cbind("CY", round(nodosCY,3), round(aristasCY,3))


for(i in 1:9){
  densidad[i]<-edge_density(grafos_CY[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_CY[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_CY[[i]], directed = TRUE)
  comp<- decompose(grafos_CY[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_CY[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_CY[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "CY")
plot3<-series(asortatividad, "asortatividad", "CY")
plot4<-series(distgeoavg, "dist geodésica promedio", "CY")
plot6<-series(compgsize, "tamaño componente gigante", "CY")
plot7<-series(gavg, "grado de salida promedio", "CY")

###############CZ#####################
#nodos y aristas promedio

nodosCZ<-aristasCZ<-NULL

for (i in 1:9) {
  nodosCZ[i]<-(gsize(grafos_CZ[[i]]))
  aristasCZ[i]<-(gorder(grafos_CZ[[i]]))
}

nodosCZ<-mean(nodosCZ)
aristasCZ<-mean(aristasCZ)

cresumen[5,1:3]<-cbind("CZ", round(nodosCZ,3), round(aristasCZ,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_CZ[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_CZ[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_CZ[[i]], directed = TRUE)
  comp<- decompose(grafos_CZ[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_CZ[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_CZ[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "CZ")
plot3<-series(asortatividad, "asortatividad", "CZ")
plot4<-series(distgeoavg, "dist geodésica promedio", "CZ")
plot6<-series(compgsize, "tamaño componente gigante", "CZ")
plot7<-series(gavg, "grado de salida promedio", "CZ")

###############DE#####################
#nodos y aristas promedio

nodosDE<-aristasDE<-NULL

for (i in 1:9) {
  nodosDE[i]<-(gsize(grafos_DE[[i]]))
  aristasDE[i]<-(gorder(grafos_DE[[i]]))
}

nodosDE<-mean(nodosDE)
aristasDE<-mean(aristasDE)

cresumen[6,1:3]<-cbind("DE", round(nodosDE,3), round(aristasDE,3))



for(i in 1:9){
  densidad[i]<-edge_density(grafos_DE[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_DE[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_DE[[i]], directed = TRUE)
  comp<- decompose(grafos_DE[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_DE[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_DE[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "DE")
plot3<-series(asortatividad, "asortatividad", "DE")
plot4<-series(distgeoavg, "dist geodésica promedio", "DE")
plot6<-series(compgsize, "tamaño componente gigante", "DE")
plot7<-series(gavg, "grado de salida promedio", "DE")

###############DK#####################
#nodos y aristas promedio

nodosDK<-aristasDK<-NULL

for (i in 1:9) {
  nodosDK[i]<-(gsize(grafos_DK[[i]]))
  aristasDK[i]<-(gorder(grafos_DK[[i]]))
}

nodosDK<-mean(nodosDK)
aristasDK<-mean(aristasDK)

cresumen[7,1:3]<-cbind("DK", round(nodosDK,3), round(aristasDK,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_DK[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_DK[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_DK[[i]], directed = TRUE)
  comp<- decompose(grafos_DK[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_DK[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_DK[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "DK")
plot3<-series(asortatividad, "asortatividad", "DK")
plot4<-series(distgeoavg, "dist geodésica promedio", "DK")
plot6<-series(compgsize, "tamaño componente gigante", "DK")
plot7<-series(gavg, "grado de salida promedio", "DK")
###############EE#####################
#nodos y aristas promedio

nodosEE<-aristasEE<-NULL

for (i in 1:9) {
  nodosEE[i]<-(gsize(grafos_EE[[i]]))
  aristasEE[i]<-(gorder(grafos_EE[[i]]))
}

nodosEE<-mean(nodosEE)
aristasEE<-mean(aristasEE)

cresumen[8,1:3]<-cbind("EE", round(nodosEE,3), round(aristasEE,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_EE[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_EE[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_EE[[i]], directed = TRUE)
  comp<- decompose(grafos_EE[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_EE[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_EE[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "EE")
plot3<-series(asortatividad, "asortatividad", "EE")
plot4<-series(distgeoavg, "dist geodésica promedio", "EE")
plot6<-series(compgsize, "tamaño componente gigante", "EE")
plot7<-series(gavg, "grado de salida promedio", "EE")
###############ES#####################
#nodos y aristas promedio

nodosES<-aristasES<-NULL

for (i in 1:9) {
  nodosES[i]<-(gsize(grafos_ES[[i]]))
  aristasES[i]<-(gorder(grafos_ES[[i]]))
}

nodosES<-mean(nodosES)
aristasES<-mean(aristasES)

cresumen[9,1:3]<-cbind("ES", round(nodosES,3), round(aristasES,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_ES[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_ES[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_ES[[i]], directed = TRUE)
  comp<- decompose(grafos_ES[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_ES[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_ES[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "ES")
plot3<-series(asortatividad, "asortatividad", "ES")
plot4<-series(distgeoavg, "dist geodésica promedio", "ES")
plot6<-series(compgsize, "tamaño componente gigante", "ES")
plot7<-series(gavg, "grado de salida promedio", "ES")
###############FI#####################
#nodos y aristas promedio

nodosFI<-aristasFI<-NULL

for (i in 1:9) {
  nodosFI[i]<-(gsize(grafos_FI[[i]]))
  aristasFI[i]<-(gorder(grafos_FI[[i]]))
}

nodosFI<-mean(nodosFI)
aristasFI<-mean(aristasFI)

cresumen[10,1:3]<-cbind("FI", round(nodosFI,3), round(aristasFI,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_FI[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_FI[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_FI[[i]], directed = TRUE)
  comp<- decompose(grafos_FI[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_FI[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_FI[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "FI")
plot3<-series(asortatividad, "asortatividad", "FI")
plot4<-series(distgeoavg, "dist geodésica promedio", "FI")
plot6<-series(compgsize, "tamaño componente gigante", "FI")
plot7<-series(gavg, "grado de salida promedio", "FI")
###############FR#####################
#nodos y aristas promedio

nodosFR<-aristasFR<-NULL

for (i in 1:9) {
  nodosFR[i]<-(gsize(grafos_FR[[i]]))
  aristasFR[i]<-(gorder(grafos_FR[[i]]))
}

nodosFR<-mean(nodosFR)
aristasFR<-mean(aristasFR)

cresumen[11,1:3]<-cbind("FR", round(nodosFR,3), round(aristasFR,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_FR[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_FR[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_FR[[i]], directed = TRUE)
  comp<- decompose(grafos_FR[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_FR[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_FR[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "FR")
plot3<-series(asortatividad, "asortatividad", "FR")
plot4<-series(distgeoavg, "dist geodésica promedio", "FR")
plot6<-series(compgsize, "tamaño componente gigante", "FR")
plot7<-series(gavg, "grado de salida promedio", "FR")
###############GR#####################
#nodos y aristas promedio

nodosGR<-aristasGR<-NULL

for (i in 1:9) {
  nodosGR[i]<-(gsize(grafos_GR[[i]]))
  aristasGR[i]<-(gorder(grafos_GR[[i]]))
}

nodosGR<-mean(nodosGR)
aristasGR<-mean(aristasGR)

cresumen[12,1:3]<-cbind("GR", round(nodosGR,3), round(aristasGR,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_GR[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_GR[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_GR[[i]], directed = TRUE)
  comp<- decompose(grafos_GR[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_GR[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_GR[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "GR")
plot3<-series(asortatividad, "asortatividad", "GR")
plot4<-series(distgeoavg, "dist geodésica promedio", "GR")
plot6<-series(compgsize, "tamaño componente gigante", "GR")
plot7<-series(gavg, "grado de salida promedio", "GR")
###############HU#####################
#nodos y aristas promedio

nodosHU<-aristasHU<-NULL

for (i in 1:9) {
  nodosHU[i]<-(gsize(grafos_HU[[i]]))
  aristasHU[i]<-(gorder(grafos_HU[[i]]))
}

nodosHU<-mean(nodosHU)
aristasHU<-mean(aristasHU)

cresumen[13,1:3]<-cbind("HU", round(nodosHU,3), round(aristasHU,3))



for(i in 1:9){
  densidad[i]<-edge_density(grafos_HU[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_HU[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_HU[[i]], directed = TRUE)
  comp<- decompose(grafos_HU[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_HU[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_HU[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "HU")
plot3<-series(asortatividad, "asortatividad", "HU")
plot4<-series(distgeoavg, "dist geodésica promedio", "HU")
plot6<-series(compgsize, "tamaño componente gigante", "HU")
plot7<-series(gavg, "grado de salida promedio", "HU")
###############IE#####################
#nodos y aristas promedio

nodosIE<-aristasIE<-NULL

for (i in 1:9) {
  nodosIE[i]<-(gsize(grafos_IE[[i]]))
  aristasIE[i]<-(gorder(grafos_IE[[i]]))
}

nodosIE<-mean(nodosIE)
aristasIE<-mean(aristasIE)

cresumen[14,1:3]<-cbind("IE", round(nodosIE,3), round(aristasIE,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_IE[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_IE[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_IE[[i]], directed = TRUE)
  comp<- decompose(grafos_IE[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_IE[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_IE[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "IE")
plot3<-series(asortatividad, "asortatividad", "IE")
plot4<-series(distgeoavg, "dist geodésica promedio", "IE")
plot6<-series(compgsize, "tamaño componente gigante", "IE")
plot7<-series(gavg, "grado de salida promedio", "IE")
###############IT#####################
#nodos y aristas promedio

nodosIT<-aristasIT<-NULL

for (i in 1:9) {
  nodosIT[i]<-(gsize(grafos_IT[[i]]))
  aristasIT[i]<-(gorder(grafos_IT[[i]]))
}

nodosIT<-mean(nodosIT)
aristasIT<-mean(aristasIT)

cresumen[15,1:3]<-cbind("IT", round(nodosIT,3), round(aristasIT,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_IT[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_IT[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_IT[[i]], directed = TRUE)
  comp<- decompose(grafos_IT[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_IT[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_IT[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "IT")
plot3<-series(asortatividad, "asortatividad", "IT")
plot4<-series(distgeoavg, "dist geodésica promedio", "IT")
plot6<-series(compgsize, "tamaño componente gigante", "IT")
plot7<-series(gavg, "grado de salida promedio", "IT")
###############LT#####################
#nodos y aristas promedio

nodosLT<-aristasLT<-NULL

for (i in 1:9) {
  nodosLT[i]<-(gsize(grafos_LT[[i]]))
  aristasLT[i]<-(gorder(grafos_LT[[i]]))
}

nodosLT<-mean(nodosLT)
aristasLT<-mean(aristasLT)

cresumen[16,1:3]<-cbind("LT", round(nodosLT,3), round(aristasLT,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_LT[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_LT[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_LT[[i]], directed = TRUE)
  comp<- decompose(grafos_LT[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_LT[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_LT[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "LT")
plot3<-series(asortatividad, "asortatividad", "LT")
plot4<-series(distgeoavg, "dist geodésica promedio", "LT")
plot6<-series(compgsize, "tamaño componente gigante", "LT")
plot7<-series(gavg, "grado de salida promedio", "LT")
###############LV#####################
#nodos y aristas promedio

nodosLV<-aristasLV<-NULL

for (i in 1:9) {
  nodosLV[i]<-(gsize(grafos_LV[[i]]))
  aristasLV[i]<-(gorder(grafos_LV[[i]]))
}

nodosLV<-mean(nodosLV)
aristasLV<-mean(aristasLV)

cresumen[17,1:3]<-cbind("LV", round(nodosLV,3), round(aristasLV,3))



for(i in 1:9){
  densidad[i]<-edge_density(grafos_LV[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_LV[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_LV[[i]], directed = TRUE)
  comp<- decompose(grafos_LV[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_LV[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_LV[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "LV")
plot3<-series(asortatividad, "asortatividad", "LV")
plot4<-series(distgeoavg, "dist geodésica promedio", "LV")
plot6<-series(compgsize, "tamaño componente gigante", "LV")
plot7<-series(gavg, "grado de salida promedio", "LV")
###############NL#####################
#nodos y aristas promedio

nodosNL<-aristasNL<-NULL

for (i in 1:9) {
  nodosNL[i]<-(gsize(grafos_NL[[i]]))
  aristasNL[i]<-(gorder(grafos_NL[[i]]))
}

nodosNL<-mean(nodosNL)
aristasNL<-mean(aristasNL)

cresumen[18,1:3]<-cbind("NL", round(nodosNL,3), round(aristasNL,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_NL[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_NL[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_NL[[i]], directed = TRUE)
  comp<- decompose(grafos_NL[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_NL[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_NL[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "NL")
plot3<-series(asortatividad, "asortatividad", "NL")
plot4<-series(distgeoavg, "dist geodésica promedio", "NL")
plot6<-series(compgsize, "tamaño componente gigante", "NL")
plot7<-series(gavg, "grado de salida promedio", "NL")
###############NO#####################
#nodos y aristas promedio

nodosNO<-aristasNO<-NULL

for (i in 1:9) {
  nodosNO[i]<-(gsize(grafos_NO[[i]]))
  aristasNO[i]<-(gorder(grafos_NO[[i]]))
}

nodosNO<-mean(nodosNO)
aristasNO<-mean(aristasNO)

cresumen[19,1:3]<-cbind("NO", round(nodosNO,3), round(aristasNO,3))



for(i in 1:9){
  densidad[i]<-edge_density(grafos_NO[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_NO[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_NO[[i]], directed = TRUE)
  comp<- decompose(grafos_NO[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_NO[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_NO[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "NO")
plot3<-series(asortatividad, "asortatividad", "NO")
plot4<-series(distgeoavg, "dist geodésica promedio", "NO")
plot6<-series(compgsize, "tamaño componente gigante", "NO")
plot7<-series(gavg, "grado de salida promedio", "NO")
###############PL#####################
#nodos y aristas promedio

nodosPL<-aristasPL<-NULL

for (i in 1:9) {
  nodosPL[i]<-(gsize(grafos_PL[[i]]))
  aristasPL[i]<-(gorder(grafos_PL[[i]]))
}

nodosPL<-mean(nodosPL)
aristasPL<-mean(aristasPL)

cresumen[20,1:3]<-cbind("PL", round(nodosPL,3), round(aristasPL,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_PL[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_PL[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_PL[[i]], directed = TRUE)
  comp<- decompose(grafos_PL[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_PL[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_PL[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "PL")
plot3<-series(asortatividad, "asortatividad", "PL")
plot4<-series(distgeoavg, "dist geodésica promedio", "PL")
plot6<-series(compgsize, "tamaño componente gigante", "PL")
plot7<-series(gavg, "grado de salida promedio", "PL")
###############PT#####################
#nodos y aristas promedio

nodosPT<-aristasPT<-NULL

for (i in 1:9) {
  nodosPT[i]<-(gsize(grafos_PT[[i]]))
  aristasPT[i]<-(gorder(grafos_PT[[i]]))
}

nodosPT<-mean(nodosPT)
aristasPT<-mean(aristasPT)

cresumen[21,1:3]<-cbind("PT", round(nodosPT,3), round(aristasPT,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_PT[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_PT[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_PT[[i]], directed = TRUE)
  comp<- decompose(grafos_PT[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_PT[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_PT[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "PT")
plot3<-series(asortatividad, "asortatividad", "PT")
plot4<-series(distgeoavg, "dist geodésica promedio", "PT")
plot6<-series(compgsize, "tamaño componente gigante", "PT")
plot7<-series(gavg, "grado de salida promedio", "PT")

###############RO#####################
#nodos y aristas promedio

nodosRO<-aristasRO<-NULL

for (i in 1:9) {
  nodosRO[i]<-(gsize(grafos_RO[[i]]))
  aristasRO[i]<-(gorder(grafos_RO[[i]]))
}

nodosRO<-mean(nodosRO)
aristasRO<-mean(aristasRO)

cresumen[22,1:3]<-cbind("RO", round(nodosRO,3), round(aristasRO,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_RO[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_RO[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_RO[[i]], directed = TRUE)
  comp<- decompose(grafos_RO[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_RO[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_RO[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "RO")
plot3<-series(asortatividad, "asortatividad", "RO")
plot4<-series(distgeoavg, "dist geodésica promedio", "RO")
plot6<-series(compgsize, "tamaño componente gigante", "RO")
plot7<-series(gavg, "grado de salida promedio", "RO")
###############SE#####################
#nodos y aristas promedio

nodosSE<-aristasSE<-NULL

for (i in 1:9) {
  nodosSE[i]<-(gsize(grafos_SE[[i]]))
  aristasSE[i]<-(gorder(grafos_SE[[i]]))
}

nodosSE<-mean(nodosSE)
aristasSE<-mean(aristasSE)

cresumen[23,1:3]<-cbind("SE", round(nodosSE,3), round(aristasSE,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_SE[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_SE[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_SE[[i]], directed = TRUE)
  comp<- decompose(grafos_SE[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_SE[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_SE[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "SE")
plot3<-series(asortatividad, "asortatividad", "SE")
plot4<-series(distgeoavg, "dist geodésica promedio", "SE")
plot6<-series(compgsize, "tamaño componente gigante", "SE")
plot7<-series(gavg, "grado de salida promedio", "SE")
###############SI#####################
#nodos y aristas promedio

nodosSI<-aristasSI<-NULL

for (i in 1:9) {
  nodosSI[i]<-(gsize(grafos_SI[[i]]))
  aristasSI[i]<-(gorder(grafos_SI[[i]]))
}

nodosSI<-mean(nodosSI)
aristasSI<-mean(aristasSI)

cresumen[24,1:3]<-cbind("SI", round(nodosSI,3), round(aristasSI,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_SI[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_SI[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_SI[[i]], directed = TRUE)
  comp<- decompose(grafos_SI[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_SI[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_SI[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "SI")
plot3<-series(asortatividad, "asortatividad", "SI")
plot4<-series(distgeoavg, "dist geodésica promedio", "SI")
plot6<-series(compgsize, "tamaño componente gigante", "SI")
plot7<-series(gavg, "grado de salida promedio", "SI")
###############SK#####################
#nodos y aristas promedio

nodosSK<-aristasSK<-NULL

for (i in 1:9) {
  nodosSK[i]<-(gsize(grafos_SK[[i]]))
  aristasSK[i]<-(gorder(grafos_SK[[i]]))
}

nodosSK<-mean(nodosSK)
aristasSK<-mean(aristasSK)

cresumen[25,1:3]<-cbind("SK", round(nodosSK,3), round(aristasSK,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_SK[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_SK[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_SK[[i]], directed = TRUE)
  comp<- decompose(grafos_SK[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_SK[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_SK[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "SK")
plot3<-series(asortatividad, "asortatividad", "SK")
plot4<-series(distgeoavg, "dist geodésica promedio", "SK")
plot6<-series(compgsize, "tamaño componente gigante", "SK")
plot7<-series(gavg, "grado de salida promedio", "SK")
###############UK#####################
#nodos y aristas promedio

nodosUK<-aristasUK<-NULL

for (i in 1:9) {
  nodosUK[i]<-(gsize(grafos_UK[[i]]))
  aristasUK[i]<-(gorder(grafos_UK[[i]]))
}

nodosUK<-mean(nodosUK)
aristasUK<-mean(aristasUK)

cresumen[26,1:3]<-cbind("UK", round(nodosUK,3), round(aristasUK,3))




for(i in 1:9){
  densidad[i]<-edge_density(grafos_UK[[i]])
  asortatividad[i]<-assortativity_degree(graph = grafos_UK[[i]], directed= F)
  distgeoavg[i]<-mean_distance(graph = grafos_UK[[i]], directed = TRUE)
  comp<- decompose(grafos_UK[[i]])
  compgsize[i]<-(max(sapply(X =  comp, FUN = vcount)))/vcount(grafos_UK[[i]])
  gavg[i]<-mean(igraph::degree(graph = grafos_UK[[i]]))
}


par(mar = c(2, 2, 2, 2))
par(mfrow=c(2,3))

plot1<-series(densidad, "densidad", "UK")
plot3<-series(asortatividad, "asortatividad", "UK")
plot4<-series(distgeoavg, "dist geodésica promedio", "UK")
plot6<-series(compgsize, "tamaño componente gigante", "UK")
plot7<-series(gavg, "grado de salida promedio", "UK")




###############varios############


#guardar cresumen
saveRDS(cresumen, file = "cresumen.rds")
cresumen<-as.data.frame(cresumen)
write.xlsx(cresumen, "cresumen.xlsx")
