library(igraph)
############CONSOLIDADO DE GRAFOS############
############POR PAIS#########



###############AT#####################
#importación grafos
AT_2008<-read.graph("country_year_networks/AT_2008.gml",format=c("gml"))
AT_2009<-read.graph("country_year_networks/AT_2009.gml",format=c("gml"))
AT_2010<-read.graph("country_year_networks/AT_2010.gml",format=c("gml"))
AT_2011<-read.graph("country_year_networks/AT_2011.gml",format=c("gml"))
AT_2012<-read.graph("country_year_networks/AT_2012.gml",format=c("gml"))
AT_2013<-read.graph("country_year_networks/AT_2013.gml",format=c("gml"))
AT_2014<-read.graph("country_year_networks/AT_2014.gml",format=c("gml"))
AT_2015<-read.graph("country_year_networks/AT_2015.gml",format=c("gml"))
AT_2016<-read.graph("country_year_networks/AT_2016.gml",format=c("gml"))


grafos_AT<-list(NA)

grafos_AT[[1]]<-AT_2008
grafos_AT[[2]]<-AT_2009
grafos_AT[[3]]<-AT_2010
grafos_AT[[4]]<-AT_2011
grafos_AT[[5]]<-AT_2012
grafos_AT[[6]]<-AT_2013
grafos_AT[[7]]<-AT_2014
grafos_AT[[8]]<-AT_2015
grafos_AT[[9]]<-AT_2016


rm(AT_2008)
rm(AT_2009)
rm(AT_2010)
rm(AT_2011)
rm(AT_2012)
rm(AT_2013)
rm(AT_2014)
rm(AT_2015)
rm(AT_2016)


save(grafos_AT,file="grafos_AT.Rda")
###############BE#####################
#importación grafos
BE_2008<-read.graph("country_year_networks/BE_2008.gml",format=c("gml"))
BE_2009<-read.graph("country_year_networks/BE_2009.gml",format=c("gml"))
BE_2010<-read.graph("country_year_networks/BE_2010.gml",format=c("gml"))
BE_2011<-read.graph("country_year_networks/BE_2011.gml",format=c("gml"))
BE_2012<-read.graph("country_year_networks/BE_2012.gml",format=c("gml"))
BE_2013<-read.graph("country_year_networks/BE_2013.gml",format=c("gml"))
BE_2014<-read.graph("country_year_networks/BE_2014.gml",format=c("gml"))
BE_2015<-read.graph("country_year_networks/BE_2015.gml",format=c("gml"))
BE_2016<-read.graph("country_year_networks/BE_2016.gml",format=c("gml"))


grafos_BE<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_BE[[1]]<-BE_2008
grafos_BE[[2]]<-BE_2009
grafos_BE[[3]]<-BE_2010
grafos_BE[[4]]<-BE_2011
grafos_BE[[5]]<-BE_2012
grafos_BE[[6]]<-BE_2013
grafos_BE[[7]]<-BE_2014
grafos_BE[[8]]<-BE_2015
grafos_BE[[9]]<-BE_2016

rm(BE_2008)
rm(BE_2009)
rm(BE_2010)
rm(BE_2011)
rm(BE_2012)
rm(BE_2013)
rm(BE_2014)
rm(BE_2015)
rm(BE_2016)


save(grafos_BE,file="grafos_BE.Rda")
###############BG#####################
#importación grafos
BG_2008<-read.graph("country_year_networks/BG_2008.gml",format=c("gml"))
BG_2009<-read.graph("country_year_networks/BG_2009.gml",format=c("gml"))
BG_2010<-read.graph("country_year_networks/BG_2010.gml",format=c("gml"))
BG_2011<-read.graph("country_year_networks/BG_2011.gml",format=c("gml"))
BG_2012<-read.graph("country_year_networks/BG_2012.gml",format=c("gml"))
BG_2013<-read.graph("country_year_networks/BG_2013.gml",format=c("gml"))
BG_2014<-read.graph("country_year_networks/BG_2014.gml",format=c("gml"))
BG_2015<-read.graph("country_year_networks/BG_2015.gml",format=c("gml"))
BG_2016<-read.graph("country_year_networks/BG_2016.gml",format=c("gml"))


grafos_BG<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_BG[[1]]<-BG_2008
grafos_BG[[2]]<-BG_2009
grafos_BG[[3]]<-BG_2010
grafos_BG[[4]]<-BG_2011
grafos_BG[[5]]<-BG_2012
grafos_BG[[6]]<-BG_2013
grafos_BG[[7]]<-BG_2014
grafos_BG[[8]]<-BG_2015
grafos_BG[[9]]<-BG_2016


rm(BG_2008)
rm(BG_2009)
rm(BG_2010)
rm(BG_2011)
rm(BG_2012)
rm(BG_2013)
rm(BG_2014)
rm(BG_2015)
rm(BG_2016)

save(grafos_BG,file="grafos_BG.Rda")
###############CY#####################
#importación grafos
CY_2008<-read.graph("country_year_networks/CY_2008.gml",format=c("gml"))
CY_2009<-read.graph("country_year_networks/CY_2009.gml",format=c("gml"))
CY_2010<-read.graph("country_year_networks/CY_2010.gml",format=c("gml"))
CY_2011<-read.graph("country_year_networks/CY_2011.gml",format=c("gml"))
CY_2012<-read.graph("country_year_networks/CY_2012.gml",format=c("gml"))
CY_2013<-read.graph("country_year_networks/CY_2013.gml",format=c("gml"))
CY_2014<-read.graph("country_year_networks/CY_2014.gml",format=c("gml"))
CY_2015<-read.graph("country_year_networks/CY_2015.gml",format=c("gml"))
CY_2016<-read.graph("country_year_networks/CY_2016.gml",format=c("gml"))


grafos_CY<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_CY[[1]]<-CY_2008
grafos_CY[[2]]<-CY_2009
grafos_CY[[3]]<-CY_2010
grafos_CY[[4]]<-CY_2011
grafos_CY[[5]]<-CY_2012
grafos_CY[[6]]<-CY_2013
grafos_CY[[7]]<-CY_2014
grafos_CY[[8]]<-CY_2015
grafos_CY[[9]]<-CY_2016


rm(CY_2008)
rm(CY_2009)
rm(CY_2010)
rm(CY_2011)
rm(CY_2012)
rm(CY_2013)
rm(CY_2014)
rm(CY_2015)
rm(CY_2016)

save(grafos_CY,file="grafos_CY.Rda")
###############CZ#####################
#importación grafos
CZ_2008<-read.graph("country_year_networks/CZ_2008.gml",format=c("gml"))
CZ_2009<-read.graph("country_year_networks/CZ_2009.gml",format=c("gml"))
CZ_2010<-read.graph("country_year_networks/CZ_2010.gml",format=c("gml"))
CZ_2011<-read.graph("country_year_networks/CZ_2011.gml",format=c("gml"))
CZ_2012<-read.graph("country_year_networks/CZ_2012.gml",format=c("gml"))
CZ_2013<-read.graph("country_year_networks/CZ_2013.gml",format=c("gml"))
CZ_2014<-read.graph("country_year_networks/CZ_2014.gml",format=c("gml"))
CZ_2015<-read.graph("country_year_networks/CZ_2015.gml",format=c("gml"))
CZ_2016<-read.graph("country_year_networks/CZ_2016.gml",format=c("gml"))


grafos_CZ<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_CZ[[1]]<-CZ_2008
grafos_CZ[[2]]<-CZ_2009
grafos_CZ[[3]]<-CZ_2010
grafos_CZ[[4]]<-CZ_2011
grafos_CZ[[5]]<-CZ_2012
grafos_CZ[[6]]<-CZ_2013
grafos_CZ[[7]]<-CZ_2014
grafos_CZ[[8]]<-CZ_2015
grafos_CZ[[9]]<-CZ_2016


rm(CZ_2008)
rm(CZ_2009)
rm(CZ_2010)
rm(CZ_2011)
rm(CZ_2012)
rm(CZ_2013)
rm(CZ_2014)
rm(CZ_2015)
rm(CZ_2016)


save(grafos_CZ,file="grafos_CZ.Rda")

###############DE#####################
#importación grafos
DE_2008<-read.graph("country_year_networks/DE_2008.gml",format=c("gml"))
DE_2009<-read.graph("country_year_networks/DE_2009.gml",format=c("gml"))
DE_2010<-read.graph("country_year_networks/DE_2010.gml",format=c("gml"))
DE_2011<-read.graph("country_year_networks/DE_2011.gml",format=c("gml"))
DE_2012<-read.graph("country_year_networks/DE_2012.gml",format=c("gml"))
DE_2013<-read.graph("country_year_networks/DE_2013.gml",format=c("gml"))
DE_2014<-read.graph("country_year_networks/DE_2014.gml",format=c("gml"))
DE_2015<-read.graph("country_year_networks/DE_2015.gml",format=c("gml"))
DE_2016<-read.graph("country_year_networks/DE_2016.gml",format=c("gml"))


grafos_DE<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_DE[[1]]<-DE_2008
grafos_DE[[2]]<-DE_2009
grafos_DE[[3]]<-DE_2010
grafos_DE[[4]]<-DE_2011
grafos_DE[[5]]<-DE_2012
grafos_DE[[6]]<-DE_2013
grafos_DE[[7]]<-DE_2014
grafos_DE[[8]]<-DE_2015
grafos_DE[[9]]<-DE_2016

rm(DE_2008)
rm(DE_2009)
rm(DE_2010)
rm(DE_2011)
rm(DE_2012)
rm(DE_2013)
rm(DE_2014)
rm(DE_2015)
rm(DE_2016)


save(grafos_DE,file="grafos_DE.Rda")
#importación grafos
DK_2008<-read.graph("country_year_networks/DK_2008.gml",format=c("gml"))
DK_2009<-read.graph("country_year_networks/DK_2009.gml",format=c("gml"))
DK_2010<-read.graph("country_year_networks/DK_2010.gml",format=c("gml"))
DK_2011<-read.graph("country_year_networks/DK_2011.gml",format=c("gml"))
DK_2012<-read.graph("country_year_networks/DK_2012.gml",format=c("gml"))
DK_2013<-read.graph("country_year_networks/DK_2013.gml",format=c("gml"))
DK_2014<-read.graph("country_year_networks/DK_2014.gml",format=c("gml"))
DK_2015<-read.graph("country_year_networks/DK_2015.gml",format=c("gml"))
DK_2016<-read.graph("country_year_networks/DK_2016.gml",format=c("gml"))


grafos_DK<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_DK[[1]]<-DK_2008
grafos_DK[[2]]<-DK_2009
grafos_DK[[3]]<-DK_2010
grafos_DK[[4]]<-DK_2011
grafos_DK[[5]]<-DK_2012
grafos_DK[[6]]<-DK_2013
grafos_DK[[7]]<-DK_2014
grafos_DK[[8]]<-DK_2015
grafos_DK[[9]]<-DK_2016


rm(DK_2008)
rm(DK_2009)
rm(DK_2010)
rm(DK_2011)
rm(DK_2012)
rm(DK_2013)
rm(DK_2014)
rm(DK_2015)
rm(DK_2016)


save(grafos_DK,file="grafos_DK.Rda")

###############DK#####################
#importación grafos
DK_2008<-read.graph("country_year_networks/DK_2008.gml",format=c("gml"))
DK_2009<-read.graph("country_year_networks/DK_2009.gml",format=c("gml"))
DK_2010<-read.graph("country_year_networks/DK_2010.gml",format=c("gml"))
DK_2011<-read.graph("country_year_networks/DK_2011.gml",format=c("gml"))
DK_2012<-read.graph("country_year_networks/DK_2012.gml",format=c("gml"))
DK_2013<-read.graph("country_year_networks/DK_2013.gml",format=c("gml"))
DK_2014<-read.graph("country_year_networks/DK_2014.gml",format=c("gml"))
DK_2015<-read.graph("country_year_networks/DK_2015.gml",format=c("gml"))
DK_2016<-read.graph("country_year_networks/DK_2016.gml",format=c("gml"))


grafos_DK<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_DK[[1]]<-DK_2008
grafos_DK[[2]]<-DK_2009
grafos_DK[[3]]<-DK_2010
grafos_DK[[4]]<-DK_2011
grafos_DK[[5]]<-DK_2012
grafos_DK[[6]]<-DK_2013
grafos_DK[[7]]<-DK_2014
grafos_DK[[8]]<-DK_2015
grafos_DK[[9]]<-DK_2016


rm(DK_2008)
rm(DK_2009)
rm(DK_2010)
rm(DK_2011)
rm(DK_2012)
rm(DK_2013)
rm(DK_2014)
rm(DK_2015)
rm(DK_2016)


save(grafos_DK,file="grafos_DK.Rda")
###############EE#####################
#importación grafos
EE_2008<-read.graph("country_year_networks/EE_2008.gml",format=c("gml"))
EE_2009<-read.graph("country_year_networks/EE_2009.gml",format=c("gml"))
EE_2010<-read.graph("country_year_networks/EE_2010.gml",format=c("gml"))
EE_2011<-read.graph("country_year_networks/EE_2011.gml",format=c("gml"))
EE_2012<-read.graph("country_year_networks/EE_2012.gml",format=c("gml"))
EE_2013<-read.graph("country_year_networks/EE_2013.gml",format=c("gml"))
EE_2014<-read.graph("country_year_networks/EE_2014.gml",format=c("gml"))
EE_2015<-read.graph("country_year_networks/EE_2015.gml",format=c("gml"))
EE_2016<-read.graph("country_year_networks/EE_2016.gml",format=c("gml"))


grafos_EE<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_EE[[1]]<-EE_2008
grafos_EE[[2]]<-EE_2009
grafos_EE[[3]]<-EE_2010
grafos_EE[[4]]<-EE_2011
grafos_EE[[5]]<-EE_2012
grafos_EE[[6]]<-EE_2013
grafos_EE[[7]]<-EE_2014
grafos_EE[[8]]<-EE_2015
grafos_EE[[9]]<-EE_2016


rm(EE_2008)
rm(EE_2009)
rm(EE_2010)
rm(EE_2011)
rm(EE_2012)
rm(EE_2013)
rm(EE_2014)
rm(EE_2015)
rm(EE_2016)


save(grafos_EE,file="grafos_EE.Rda")
###############ES#####################
#importación grafos
ES_2008<-read.graph("country_year_networks/ES_2008.gml",format=c("gml"))
ES_2009<-read.graph("country_year_networks/ES_2009.gml",format=c("gml"))
ES_2010<-read.graph("country_year_networks/ES_2010.gml",format=c("gml"))
ES_2011<-read.graph("country_year_networks/ES_2011.gml",format=c("gml"))
ES_2012<-read.graph("country_year_networks/ES_2012.gml",format=c("gml"))
ES_2013<-read.graph("country_year_networks/ES_2013.gml",format=c("gml"))
ES_2014<-read.graph("country_year_networks/ES_2014.gml",format=c("gml"))
ES_2015<-read.graph("country_year_networks/ES_2015.gml",format=c("gml"))
ES_2016<-read.graph("country_year_networks/ES_2016.gml",format=c("gml"))


grafos_ES<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_ES[[1]]<-ES_2008
grafos_ES[[2]]<-ES_2009
grafos_ES[[3]]<-ES_2010
grafos_ES[[4]]<-ES_2011
grafos_ES[[5]]<-ES_2012
grafos_ES[[6]]<-ES_2013
grafos_ES[[7]]<-ES_2014
grafos_ES[[8]]<-ES_2015
grafos_ES[[9]]<-ES_2016


rm(ES_2008)
rm(ES_2009)
rm(ES_2010)
rm(ES_2011)
rm(ES_2012)
rm(ES_2013)
rm(ES_2014)
rm(ES_2015)
rm(ES_2016)

save(grafos_ES,file="grafos_ES.Rda")
###############FI#####################
#importación grafos
FI_2008<-read.graph("country_year_networks/FI_2008.gml",format=c("gml"))
FI_2009<-read.graph("country_year_networks/FI_2009.gml",format=c("gml"))
FI_2010<-read.graph("country_year_networks/FI_2010.gml",format=c("gml"))
FI_2011<-read.graph("country_year_networks/FI_2011.gml",format=c("gml"))
FI_2012<-read.graph("country_year_networks/FI_2012.gml",format=c("gml"))
FI_2013<-read.graph("country_year_networks/FI_2013.gml",format=c("gml"))
FI_2014<-read.graph("country_year_networks/FI_2014.gml",format=c("gml"))
FI_2015<-read.graph("country_year_networks/FI_2015.gml",format=c("gml"))
FI_2016<-read.graph("country_year_networks/FI_2016.gml",format=c("gml"))


grafos_FI<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_FI[[1]]<-FI_2008
grafos_FI[[2]]<-FI_2009
grafos_FI[[3]]<-FI_2010
grafos_FI[[4]]<-FI_2011
grafos_FI[[5]]<-FI_2012
grafos_FI[[6]]<-FI_2013
grafos_FI[[7]]<-FI_2014
grafos_FI[[8]]<-FI_2015
grafos_FI[[9]]<-FI_2016


rm(FI_2008)
rm(FI_2009)
rm(FI_2010)
rm(FI_2011)
rm(FI_2012)
rm(FI_2013)
rm(FI_2014)
rm(FI_2015)
rm(FI_2016)

save(grafos_FI,file="grafos_FI.Rda")
###############FR#####################
#importación grafos
FR_2008<-read.graph("country_year_networks/FR_2008.gml",format=c("gml"))
FR_2009<-read.graph("country_year_networks/FR_2009.gml",format=c("gml"))
FR_2010<-read.graph("country_year_networks/FR_2010.gml",format=c("gml"))
FR_2011<-read.graph("country_year_networks/FR_2011.gml",format=c("gml"))
FR_2012<-read.graph("country_year_networks/FR_2012.gml",format=c("gml"))
FR_2013<-read.graph("country_year_networks/FR_2013.gml",format=c("gml"))
FR_2014<-read.graph("country_year_networks/FR_2014.gml",format=c("gml"))
FR_2015<-read.graph("country_year_networks/FR_2015.gml",format=c("gml"))
FR_2016<-read.graph("country_year_networks/FR_2016.gml",format=c("gml"))


grafos_FR<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_FR[[1]]<-FR_2008
grafos_FR[[2]]<-FR_2009
grafos_FR[[3]]<-FR_2010
grafos_FR[[4]]<-FR_2011
grafos_FR[[5]]<-FR_2012
grafos_FR[[6]]<-FR_2013
grafos_FR[[7]]<-FR_2014
grafos_FR[[8]]<-FR_2015
grafos_FR[[9]]<-FR_2016

rm(FR_2008)
rm(FR_2009)
rm(FR_2010)
rm(FR_2011)
rm(FR_2012)
rm(FR_2013)
rm(FR_2014)
rm(FR_2015)
rm(FR_2016)

save(grafos_FR,file="grafos_FR.Rda")
###############GR#####################
#importación grafos
GR_2008<-read.graph("country_year_networks/GR_2008.gml",format=c("gml"))
GR_2009<-read.graph("country_year_networks/GR_2009.gml",format=c("gml"))
GR_2010<-read.graph("country_year_networks/GR_2010.gml",format=c("gml"))
GR_2011<-read.graph("country_year_networks/GR_2011.gml",format=c("gml"))
GR_2012<-read.graph("country_year_networks/GR_2012.gml",format=c("gml"))
GR_2013<-read.graph("country_year_networks/GR_2013.gml",format=c("gml"))
GR_2014<-read.graph("country_year_networks/GR_2014.gml",format=c("gml"))
GR_2015<-read.graph("country_year_networks/GR_2015.gml",format=c("gml"))
GR_2016<-read.graph("country_year_networks/GR_2016.gml",format=c("gml"))


grafos_GR<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_GR[[1]]<-GR_2008
grafos_GR[[2]]<-GR_2009
grafos_GR[[3]]<-GR_2010
grafos_GR[[4]]<-GR_2011
grafos_GR[[5]]<-GR_2012
grafos_GR[[6]]<-GR_2013
grafos_GR[[7]]<-GR_2014
grafos_GR[[8]]<-GR_2015
grafos_GR[[9]]<-GR_2016


rm(GR_2008)
rm(GR_2009)
rm(GR_2010)
rm(GR_2011)
rm(GR_2012)
rm(GR_2013)
rm(GR_2014)
rm(GR_2015)
rm(GR_2016)

###############HU#####################
#importación grafos
HU_2008<-read.graph("country_year_networks/HU_2008.gml",format=c("gml"))
HU_2009<-read.graph("country_year_networks/HU_2009.gml",format=c("gml"))
HU_2010<-read.graph("country_year_networks/HU_2010.gml",format=c("gml"))
HU_2011<-read.graph("country_year_networks/HU_2011.gml",format=c("gml"))
HU_2012<-read.graph("country_year_networks/HU_2012.gml",format=c("gml"))
HU_2013<-read.graph("country_year_networks/HU_2013.gml",format=c("gml"))
HU_2014<-read.graph("country_year_networks/HU_2014.gml",format=c("gml"))
HU_2015<-read.graph("country_year_networks/HU_2015.gml",format=c("gml"))
HU_2016<-read.graph("country_year_networks/HU_2016.gml",format=c("gml"))


grafos_HU<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_HU[[1]]<-HU_2008
grafos_HU[[2]]<-HU_2009
grafos_HU[[3]]<-HU_2010
grafos_HU[[4]]<-HU_2011
grafos_HU[[5]]<-HU_2012
grafos_HU[[6]]<-HU_2013
grafos_HU[[7]]<-HU_2014
grafos_HU[[8]]<-HU_2015
grafos_HU[[9]]<-HU_2016


rm(HU_2008)
rm(HU_2009)
rm(HU_2010)
rm(HU_2011)
rm(HU_2012)
rm(HU_2013)
rm(HU_2014)
rm(HU_2015)
rm(HU_2016)

save(grafos_HU,file="grafos_HU.Rda")
###############IE#####################
#importación grafos
IE_2008<-read.graph("country_year_networks/IE_2008.gml",format=c("gml"))
IE_2009<-read.graph("country_year_networks/IE_2009.gml",format=c("gml"))
IE_2010<-read.graph("country_year_networks/IE_2010.gml",format=c("gml"))
IE_2011<-read.graph("country_year_networks/IE_2011.gml",format=c("gml"))
IE_2012<-read.graph("country_year_networks/IE_2012.gml",format=c("gml"))
IE_2013<-read.graph("country_year_networks/IE_2013.gml",format=c("gml"))
IE_2014<-read.graph("country_year_networks/IE_2014.gml",format=c("gml"))
IE_2015<-read.graph("country_year_networks/IE_2015.gml",format=c("gml"))
IE_2016<-read.graph("country_year_networks/IE_2016.gml",format=c("gml"))


grafos_IE<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_IE[[1]]<-IE_2008
grafos_IE[[2]]<-IE_2009
grafos_IE[[3]]<-IE_2010
grafos_IE[[4]]<-IE_2011
grafos_IE[[5]]<-IE_2012
grafos_IE[[6]]<-IE_2013
grafos_IE[[7]]<-IE_2014
grafos_IE[[8]]<-IE_2015
grafos_IE[[9]]<-IE_2016

rm(IE_2008)
rm(IE_2009)
rm(IE_2010)
rm(IE_2011)
rm(IE_2012)
rm(IE_2013)
rm(IE_2014)
rm(IE_2015)
rm(IE_2016)

save(grafos_IE,file="grafos_IE.Rda")
###############IT#####################
#importación grafos
IT_2008<-read.graph("country_year_networks/IT_2008.gml",format=c("gml"))
IT_2009<-read.graph("country_year_networks/IT_2009.gml",format=c("gml"))
IT_2010<-read.graph("country_year_networks/IT_2010.gml",format=c("gml"))
IT_2011<-read.graph("country_year_networks/IT_2011.gml",format=c("gml"))
IT_2012<-read.graph("country_year_networks/IT_2012.gml",format=c("gml"))
IT_2013<-read.graph("country_year_networks/IT_2013.gml",format=c("gml"))
IT_2014<-read.graph("country_year_networks/IT_2014.gml",format=c("gml"))
IT_2015<-read.graph("country_year_networks/IT_2015.gml",format=c("gml"))
IT_2016<-read.graph("country_year_networks/IT_2016.gml",format=c("gml"))


grafos_IT<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_IT[[1]]<-IT_2008
grafos_IT[[2]]<-IT_2009
grafos_IT[[3]]<-IT_2010
grafos_IT[[4]]<-IT_2011
grafos_IT[[5]]<-IT_2012
grafos_IT[[6]]<-IT_2013
grafos_IT[[7]]<-IT_2014
grafos_IT[[8]]<-IT_2015
grafos_IT[[9]]<-IT_2016

rm(IT_2008)
rm(IT_2009)
rm(IT_2010)
rm(IT_2011)
rm(IT_2012)
rm(IT_2013)
rm(IT_2014)
rm(IT_2015)
rm(IT_2016)

save(grafos_IT,file="grafos_IT.Rda")
###############LT#####################
#importación grafos
LT_2008<-read.graph("country_year_networks/LT_2008.gml",format=c("gml"))
LT_2009<-read.graph("country_year_networks/LT_2009.gml",format=c("gml"))
LT_2010<-read.graph("country_year_networks/LT_2010.gml",format=c("gml"))
LT_2011<-read.graph("country_year_networks/LT_2011.gml",format=c("gml"))
LT_2012<-read.graph("country_year_networks/LT_2012.gml",format=c("gml"))
LT_2013<-read.graph("country_year_networks/LT_2013.gml",format=c("gml"))
LT_2014<-read.graph("country_year_networks/LT_2014.gml",format=c("gml"))
LT_2015<-read.graph("country_year_networks/LT_2015.gml",format=c("gml"))
LT_2016<-read.graph("country_year_networks/LT_2016.gml",format=c("gml"))


grafos_LT<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_LT[[1]]<-LT_2008
grafos_LT[[2]]<-LT_2009
grafos_LT[[3]]<-LT_2010
grafos_LT[[4]]<-LT_2011
grafos_LT[[5]]<-LT_2012
grafos_LT[[6]]<-LT_2013
grafos_LT[[7]]<-LT_2014
grafos_LT[[8]]<-LT_2015
grafos_LT[[9]]<-LT_2016

rm(LT_2008)
rm(LT_2009)
rm(LT_2010)
rm(LT_2011)
rm(LT_2012)
rm(LT_2013)
rm(LT_2014)
rm(LT_2015)
rm(LT_2016)

save(grafos_LT,file="grafos_LT.Rda")
###############LV#####################
#importación grafos
LV_2008<-read.graph("country_year_networks/LV_2008.gml",format=c("gml"))
LV_2009<-read.graph("country_year_networks/LV_2009.gml",format=c("gml"))
LV_2010<-read.graph("country_year_networks/LV_2010.gml",format=c("gml"))
LV_2011<-read.graph("country_year_networks/LV_2011.gml",format=c("gml"))
LV_2012<-read.graph("country_year_networks/LV_2012.gml",format=c("gml"))
LV_2013<-read.graph("country_year_networks/LV_2013.gml",format=c("gml"))
LV_2014<-read.graph("country_year_networks/LV_2014.gml",format=c("gml"))
LV_2015<-read.graph("country_year_networks/LV_2015.gml",format=c("gml"))
LV_2016<-read.graph("country_year_networks/LV_2016.gml",format=c("gml"))


grafos_LV<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_LV[[1]]<-LV_2008
grafos_LV[[2]]<-LV_2009
grafos_LV[[3]]<-LV_2010
grafos_LV[[4]]<-LV_2011
grafos_LV[[5]]<-LV_2012
grafos_LV[[6]]<-LV_2013
grafos_LV[[7]]<-LV_2014
grafos_LV[[8]]<-LV_2015
grafos_LV[[9]]<-LV_2016

rm(LV_2008)
rm(LV_2009)
rm(LV_2010)
rm(LV_2011)
rm(LV_2012)
rm(LV_2013)
rm(LV_2014)
rm(LV_2015)
rm(LV_2016)

save(grafos_LV,file="grafos_LV.Rda")
###############NL#####################
#importación grafos
NL_2008<-read.graph("country_year_networks/NL_2008.gml",format=c("gml"))
NL_2009<-read.graph("country_year_networks/NL_2009.gml",format=c("gml"))
NL_2010<-read.graph("country_year_networks/NL_2010.gml",format=c("gml"))
NL_2011<-read.graph("country_year_networks/NL_2011.gml",format=c("gml"))
NL_2012<-read.graph("country_year_networks/NL_2012.gml",format=c("gml"))
NL_2013<-read.graph("country_year_networks/NL_2013.gml",format=c("gml"))
NL_2014<-read.graph("country_year_networks/NL_2014.gml",format=c("gml"))
NL_2015<-read.graph("country_year_networks/NL_2015.gml",format=c("gml"))
NL_2016<-read.graph("country_year_networks/NL_2016.gml",format=c("gml"))


grafos_NL<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_NL[[1]]<-NL_2008
grafos_NL[[2]]<-NL_2009
grafos_NL[[3]]<-NL_2010
grafos_NL[[4]]<-NL_2011
grafos_NL[[5]]<-NL_2012
grafos_NL[[6]]<-NL_2013
grafos_NL[[7]]<-NL_2014
grafos_NL[[8]]<-NL_2015
grafos_NL[[9]]<-NL_2016

rm(NL_2008)
rm(NL_2009)
rm(NL_2010)
rm(NL_2011)
rm(NL_2012)
rm(NL_2013)
rm(NL_2014)
rm(NL_2015)
rm(NL_2016)

save(grafos_NL,file="grafos_NL.Rda")
###############NO#####################
#importación grafos
NO_2008<-read.graph("country_year_networks/NO_2008.gml",format=c("gml"))
NO_2009<-read.graph("country_year_networks/NO_2009.gml",format=c("gml"))
NO_2010<-read.graph("country_year_networks/NO_2010.gml",format=c("gml"))
NO_2011<-read.graph("country_year_networks/NO_2011.gml",format=c("gml"))
NO_2012<-read.graph("country_year_networks/NO_2012.gml",format=c("gml"))
NO_2013<-read.graph("country_year_networks/NO_2013.gml",format=c("gml"))
NO_2014<-read.graph("country_year_networks/NO_2014.gml",format=c("gml"))
NO_2015<-read.graph("country_year_networks/NO_2015.gml",format=c("gml"))
NO_2016<-read.graph("country_year_networks/NO_2016.gml",format=c("gml"))


grafos_NO<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_NO[[1]]<-NO_2008
grafos_NO[[2]]<-NO_2009
grafos_NO[[3]]<-NO_2010
grafos_NO[[4]]<-NO_2011
grafos_NO[[5]]<-NO_2012
grafos_NO[[6]]<-NO_2013
grafos_NO[[7]]<-NO_2014
grafos_NO[[8]]<-NO_2015
grafos_NO[[9]]<-NO_2016


rm(NO_2008)
rm(NO_2009)
rm(NO_2010)
rm(NO_2011)
rm(NO_2012)
rm(NO_2013)
rm(NO_2014)
rm(NO_2015)
rm(NO_2016)

save(grafos_NO,file="grafos_NO.Rda")

###############PL#####################
#importación grafos
PL_2008<-read.graph("country_year_networks/PL_2008.gml",format=c("gml"))
PL_2009<-read.graph("country_year_networks/PL_2009.gml",format=c("gml"))
PL_2010<-read.graph("country_year_networks/PL_2010.gml",format=c("gml"))
PL_2011<-read.graph("country_year_networks/PL_2011.gml",format=c("gml"))
PL_2012<-read.graph("country_year_networks/PL_2012.gml",format=c("gml"))
PL_2013<-read.graph("country_year_networks/PL_2013.gml",format=c("gml"))
PL_2014<-read.graph("country_year_networks/PL_2014.gml",format=c("gml"))
PL_2015<-read.graph("country_year_networks/PL_2015.gml",format=c("gml"))
PL_2016<-read.graph("country_year_networks/PL_2016.gml",format=c("gml"))


grafos_PL<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_PL[[1]]<-PL_2008
grafos_PL[[2]]<-PL_2009
grafos_PL[[3]]<-PL_2010
grafos_PL[[4]]<-PL_2011
grafos_PL[[5]]<-PL_2012
grafos_PL[[6]]<-PL_2013
grafos_PL[[7]]<-PL_2014
grafos_PL[[8]]<-PL_2015
grafos_PL[[9]]<-PL_2016


rm(PL_2008)
rm(PL_2009)
rm(PL_2010)
rm(PL_2011)
rm(PL_2012)
rm(PL_2013)
rm(PL_2014)
rm(PL_2015)
rm(PL_2016)

save(grafos_PL,file="grafos_PL.Rda")
###############PT#####################
#importación grafos
PT_2008<-read.graph("country_year_networks/PT_2008.gml",format=c("gml"))
PT_2009<-read.graph("country_year_networks/PT_2009.gml",format=c("gml"))
PT_2010<-read.graph("country_year_networks/PT_2010.gml",format=c("gml"))
PT_2011<-read.graph("country_year_networks/PT_2011.gml",format=c("gml"))
PT_2012<-read.graph("country_year_networks/PT_2012.gml",format=c("gml"))
PT_2013<-read.graph("country_year_networks/PT_2013.gml",format=c("gml"))
PT_2014<-read.graph("country_year_networks/PT_2014.gml",format=c("gml"))
PT_2015<-read.graph("country_year_networks/PT_2015.gml",format=c("gml"))
PT_2016<-read.graph("country_year_networks/PT_2016.gml",format=c("gml"))


grafos_PT<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_PT[[1]]<-PT_2008
grafos_PT[[2]]<-PT_2009
grafos_PT[[3]]<-PT_2010
grafos_PT[[4]]<-PT_2011
grafos_PT[[5]]<-PT_2012
grafos_PT[[6]]<-PT_2013
grafos_PT[[7]]<-PT_2014
grafos_PT[[8]]<-PT_2015
grafos_PT[[9]]<-PT_2016

rm(PT_2008)
rm(PT_2009)
rm(PT_2010)
rm(PT_2011)
rm(PT_2012)
rm(PT_2013)
rm(PT_2014)
rm(PT_2015)
rm(PT_2016)

save(grafos_PT,file="grafos_PT.Rda")
###############RO#####################
#importación grafos
RO_2008<-read.graph("country_year_networks/RO_2008.gml",format=c("gml"))
RO_2009<-read.graph("country_year_networks/RO_2009.gml",format=c("gml"))
RO_2010<-read.graph("country_year_networks/RO_2010.gml",format=c("gml"))
RO_2011<-read.graph("country_year_networks/RO_2011.gml",format=c("gml"))
RO_2012<-read.graph("country_year_networks/RO_2012.gml",format=c("gml"))
RO_2013<-read.graph("country_year_networks/RO_2013.gml",format=c("gml"))
RO_2014<-read.graph("country_year_networks/RO_2014.gml",format=c("gml"))
RO_2015<-read.graph("country_year_networks/RO_2015.gml",format=c("gml"))
RO_2016<-read.graph("country_year_networks/RO_2016.gml",format=c("gml"))


grafos_RO<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_RO[[1]]<-RO_2008
grafos_RO[[2]]<-RO_2009
grafos_RO[[3]]<-RO_2010
grafos_RO[[4]]<-RO_2011
grafos_RO[[5]]<-RO_2012
grafos_RO[[6]]<-RO_2013
grafos_RO[[7]]<-RO_2014
grafos_RO[[8]]<-RO_2015
grafos_RO[[9]]<-RO_2016

rm(RO_2008)
rm(RO_2009)
rm(RO_2010)
rm(RO_2011)
rm(RO_2012)
rm(RO_2013)
rm(RO_2014)
rm(RO_2015)
rm(RO_2016)

save(grafos_RO,file="grafos_RO.Rda")
###############SE#####################
#importación grafos
SE_2008<-read.graph("country_year_networks/SE_2008.gml",format=c("gml"))
SE_2009<-read.graph("country_year_networks/SE_2009.gml",format=c("gml"))
SE_2010<-read.graph("country_year_networks/SE_2010.gml",format=c("gml"))
SE_2011<-read.graph("country_year_networks/SE_2011.gml",format=c("gml"))
SE_2012<-read.graph("country_year_networks/SE_2012.gml",format=c("gml"))
SE_2013<-read.graph("country_year_networks/SE_2013.gml",format=c("gml"))
SE_2014<-read.graph("country_year_networks/SE_2014.gml",format=c("gml"))
SE_2015<-read.graph("country_year_networks/SE_2015.gml",format=c("gml"))
SE_2016<-read.graph("country_year_networks/SE_2016.gml",format=c("gml"))


grafos_SE<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_SE[[1]]<-SE_2008
grafos_SE[[2]]<-SE_2009
grafos_SE[[3]]<-SE_2010
grafos_SE[[4]]<-SE_2011
grafos_SE[[5]]<-SE_2012
grafos_SE[[6]]<-SE_2013
grafos_SE[[7]]<-SE_2014
grafos_SE[[8]]<-SE_2015
grafos_SE[[9]]<-SE_2016

rm(SE_2008)
rm(SE_2009)
rm(SE_2010)
rm(SE_2011)
rm(SE_2012)
rm(SE_2013)
rm(SE_2014)
rm(SE_2015)
rm(SE_2016)

save(grafos_SE,file="grafos_SE.Rda")
###############SI#####################
#importación grafos
SI_2008<-read.graph("country_year_networks/SI_2008.gml",format=c("gml"))
SI_2009<-read.graph("country_year_networks/SI_2009.gml",format=c("gml"))
SI_2010<-read.graph("country_year_networks/SI_2010.gml",format=c("gml"))
SI_2011<-read.graph("country_year_networks/SI_2011.gml",format=c("gml"))
SI_2012<-read.graph("country_year_networks/SI_2012.gml",format=c("gml"))
SI_2013<-read.graph("country_year_networks/SI_2013.gml",format=c("gml"))
SI_2014<-read.graph("country_year_networks/SI_2014.gml",format=c("gml"))
SI_2015<-read.graph("country_year_networks/SI_2015.gml",format=c("gml"))
SI_2016<-read.graph("country_year_networks/SI_2016.gml",format=c("gml"))


grafos_SI<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_SI[[1]]<-SI_2008
grafos_SI[[2]]<-SI_2009
grafos_SI[[3]]<-SI_2010
grafos_SI[[4]]<-SI_2011
grafos_SI[[5]]<-SI_2012
grafos_SI[[6]]<-SI_2013
grafos_SI[[7]]<-SI_2014
grafos_SI[[8]]<-SI_2015
grafos_SI[[9]]<-SI_2016

rm(SI_2008)
rm(SI_2009)
rm(SI_2010)
rm(SI_2011)
rm(SI_2012)
rm(SI_2013)
rm(SI_2014)
rm(SI_2015)
rm(SI_2016)

save(grafos_SI,file="grafos_SI.Rda")
###############SK#####################
#importación grafos
SK_2008<-read.graph("country_year_networks/SK_2008.gml",format=c("gml"))
SK_2009<-read.graph("country_year_networks/SK_2009.gml",format=c("gml"))
SK_2010<-read.graph("country_year_networks/SK_2010.gml",format=c("gml"))
SK_2011<-read.graph("country_year_networks/SK_2011.gml",format=c("gml"))
SK_2012<-read.graph("country_year_networks/SK_2012.gml",format=c("gml"))
SK_2013<-read.graph("country_year_networks/SK_2013.gml",format=c("gml"))
SK_2014<-read.graph("country_year_networks/SK_2014.gml",format=c("gml"))
SK_2015<-read.graph("country_year_networks/SK_2015.gml",format=c("gml"))
SK_2016<-read.graph("country_year_networks/SK_2016.gml",format=c("gml"))


grafos_SK<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_SK[[1]]<-SK_2008
grafos_SK[[2]]<-SK_2009
grafos_SK[[3]]<-SK_2010
grafos_SK[[4]]<-SK_2011
grafos_SK[[5]]<-SK_2012
grafos_SK[[6]]<-SK_2013
grafos_SK[[7]]<-SK_2014
grafos_SK[[8]]<-SK_2015
grafos_SK[[9]]<-SK_2016


rm(SK_2008)
rm(SK_2009)
rm(SK_2010)
rm(SK_2011)
rm(SK_2012)
rm(SK_2013)
rm(SK_2014)
rm(SK_2015)
rm(SK_2016)

save(grafos_SK,file="grafos_SK.Rda")
#importación grafos
UK_2008<-read.graph("country_year_networks/UK_2008.gml",format=c("gml"))
UK_2009<-read.graph("country_year_networks/UK_2009.gml",format=c("gml"))
UK_2010<-read.graph("country_year_networks/UK_2010.gml",format=c("gml"))
UK_2011<-read.graph("country_year_networks/UK_2011.gml",format=c("gml"))
UK_2012<-read.graph("country_year_networks/UK_2012.gml",format=c("gml"))
UK_2013<-read.graph("country_year_networks/UK_2013.gml",format=c("gml"))
UK_2014<-read.graph("country_year_networks/UK_2014.gml",format=c("gml"))
UK_2015<-read.graph("country_year_networks/UK_2015.gml",format=c("gml"))
UK_2016<-read.graph("country_year_networks/UK_2016.gml",format=c("gml"))


grafos_UK<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_UK[[1]]<-UK_2008
grafos_UK[[2]]<-UK_2009
grafos_UK[[3]]<-UK_2010
grafos_UK[[4]]<-UK_2011
grafos_UK[[5]]<-UK_2012
grafos_UK[[6]]<-UK_2013
grafos_UK[[7]]<-UK_2014
grafos_UK[[8]]<-UK_2015
grafos_UK[[9]]<-UK_2016

rm(UK_2008)
rm(UK_2009)
rm(UK_2010)
rm(UK_2011)
rm(UK_2012)
rm(UK_2013)
rm(UK_2014)
rm(UK_2015)
rm(UK_2016)

save(grafos_UK,file="grafos_UK.Rda")
###############UK#####################
#importación grafos
UK_2008<-read.graph("country_year_networks/UK_2008.gml",format=c("gml"))
UK_2009<-read.graph("country_year_networks/UK_2009.gml",format=c("gml"))
UK_2010<-read.graph("country_year_networks/UK_2010.gml",format=c("gml"))
UK_2011<-read.graph("country_year_networks/UK_2011.gml",format=c("gml"))
UK_2012<-read.graph("country_year_networks/UK_2012.gml",format=c("gml"))
UK_2013<-read.graph("country_year_networks/UK_2013.gml",format=c("gml"))
UK_2014<-read.graph("country_year_networks/UK_2014.gml",format=c("gml"))
UK_2015<-read.graph("country_year_networks/UK_2015.gml",format=c("gml"))
UK_2016<-read.graph("country_year_networks/UK_2016.gml",format=c("gml"))


grafos_UK<-list(NA)
densidad<-coefagrupamiento<-asortatividad<-distgeoavg<-compgsize<-gavg<-matrix(c(rep(NA,9)))

grafos_UK[[1]]<-UK_2008
grafos_UK[[2]]<-UK_2009
grafos_UK[[3]]<-UK_2010
grafos_UK[[4]]<-UK_2011
grafos_UK[[5]]<-UK_2012
grafos_UK[[6]]<-UK_2013
grafos_UK[[7]]<-UK_2014
grafos_UK[[8]]<-UK_2015
grafos_UK[[9]]<-UK_2016

rm(UK_2008)
rm(UK_2009)
rm(UK_2010)
rm(UK_2011)
rm(UK_2012)
rm(UK_2013)
rm(UK_2014)
rm(UK_2015)
rm(UK_2016)

save(grafos_UK,file="grafos_UK.Rda")


############POR AÑO#########
grafos_2008<-grafos_2009<-grafos_2010<-grafos_2011<-grafos_2012<-grafos_2013<-grafos_2014<-grafos_2015<-grafos_2016<-list(NA)
cresumen<-readRDS("cresumen.rds")


for (i in 1:nrow(cresumen)) {
  grafos_2008[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[1]]
}

save(grafos_2008,file="grafos_2008.Rda")

for (i in 1:nrow(cresumen)) {
  grafos_2009[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[2]]
}

save(grafos_2009,file="grafos_2009.Rda")

for (i in 1:nrow(cresumen)) {
  grafos_2010[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[3]]
}

save(grafos_2010,file="grafos_2010.Rda")

for (i in 1:nrow(cresumen)) {
  grafos_2011[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[4]]
}

save(grafos_2011,file="grafos_2011.Rda")


for (i in 1:nrow(cresumen)) {
  grafos_2012[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[5]]
}

save(grafos_2012,file="grafos_2012.Rda")

for (i in 1:nrow(cresumen)) {
  grafos_2013[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[6]]
}

save(grafos_2013,file="grafos_2013.Rda")

for (i in 1:nrow(cresumen)) {
  grafos_2014[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[7]]
}

save(grafos_2014,file="grafos_2014.Rda")

for (i in 1:nrow(cresumen)) {
  grafos_2015[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[8]]
}

save(grafos_2015,file="grafos_2015.Rda")

for (i in 1:nrow(cresumen)) {
  grafos_2016[[i]]<-get(paste0('grafos_',cresumen[i,1]))[[9]]
}

save(grafos_2016,file="grafos_2016.Rda")
