## Pacotes 
library(FD)
library(ade4)
library(ecodados)
library(gridExtra)
library(ggplot2)
library(ggrepel)
library(tidyverse)
library(picante)
library(vegan)
library(SYNCSA)
library(GGally)
library(FD)
library(betapart)
library(nlme)
library(ape)
library(TPD)
library(cati)
library(kableExtra)

# ## Dados e funções
# comun_fren_dat <- ecodados::fundiv_frenette2012a_comu
# ambie_fren_dat <- ecodados::fundiv_frenette2012a_amb
# trait_fren_dat <- ecodados::fundiv_frenette2012a_trait
# trait_dat      <- ecodados::fundiv_barbaro2009a_trait
# comun_dat      <- ecodados::fundiv_barbaro2009a_comu
# ambie_dat      <- ecodados::fundiv_barbaro2009a_amb
# trait_baselga  <- ecodados::trait_baselga
# comm_baselga   <- ecodados::comm_baselga
# anuros_comm    <- ecodados::anuros_comm
# traits         <- ecodados::traits
# env            <- ecodados::env
# # ecodados::wITV # funtion: wITV

comm.LTX_ALL <- read.csv("com_ltx_all.csv", sep=",", row.names= 1)
names(comm.LTX_ALL)
comm.LTX_ALL<-t(comm.LTX_ALL)
comm.LTX_ALL<-as.data.frame(comm.LTX_ALL)
class(comm.LTX_ALL)

env.LTX_ALL <- read.csv("ltx_all_env.csv", sep=",", dec=",", row.names = 1) 
names(env.LTX_ALL)  
head(env.LTX_ALL)
class(env.LTX_ALL)

traits.LTX_ALL <- read.csv("traits_ltx_all.csv", sep=",", row.names = 1) 
names(traits.LTX_ALL)
head(traits.LTX_ALL)
class(traits.LTX_ALL)
cols <- c("Rgn", "Str", "Dsp", "See")
traits.LTX_ALL[cols] <- lapply(traits.LTX_ALL[cols], factor)
str(traits.LTX_ALL)
sum(rownames(traits.LTX_ALL)==colnames(comm.LTX_ALL)) # 179 spp 

data.frame(rownames(traits.LTX_ALL)==colnames(comm.LTX_ALL)) # 179 spp 

cwm.dom<-functcomp(traits.LTX_ALL, as.matrix(comm.LTX_ALL), CWM.type = "dom")

cwm.dom %>% 
  rownames_to_column() %>% 
  mutate(paisagem=c(rep("LDL",12),rep("IDL", 13),rep("HDL",11))) %>% 
  ggplot(aes(WSD, color=paisagem, fill=paisagem))+
  geom_density(alpha=0.5)

cwm.dom %>% 
  rownames_to_column() %>% 
  mutate(paisagem=c(rep("LDL",12),rep("IDL", 13),rep("HDL",11))) %>% 
  group_by(paisagem) %>% 
  summarise_at(vars(Str_4), list(mean, sd))

str(traits.LTX_ALL)
fd.values<-dbFD(traits.LTX_ALL, as.matrix(comm.LTX_ALL))
cwm.dom %>% 
  rownames_to_column() %>% 
  mutate(paisagem=c(rep("LDL",12),rep("IDL", 13),rep("HDL",11)))->cwm.dom1
d1<-data.frame(fd.values$FRic, fd.values$FEve, fd.values$FDis, cwm.dom1$paisagem, fd.values$nbsp)
d1 %>% 
  ggplot(aes(cwm.dom1.paisagem,fd.values.FDis))+geom_boxplot()
d1 %>% 
  ggplot(aes(fd.values.FRic,fd.values.FDis))+geom_point()


