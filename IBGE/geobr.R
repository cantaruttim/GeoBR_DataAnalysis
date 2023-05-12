library(ggplot2)
library(geobr)
library(sf)
library(magrittr)
library(dplyr)

conj_dados = list_geobr()
View(conj_dados)

brasil = read_state(code_state = "all", year = 2018)
plot(brasil)

ggplot() + geom_sf(data = brasil, fill = "#2D3E50",
                   color = "#FEBF57", size = .15,
                   show.legend = F)


micro_reg = read_micro_region(code_micro = "all", year = 2015)
ggplot() + geom_sf(data = micro_reg, fill = "#2D3E50",
                   color = "#FEBF57", size = .15,
                   show.legend = F)

meso <- read_meso_region(code_meso = "all", year = 2010)
ggplot() + geom_sf(data = meso, fill = "#2D3E50",
                   color = "#FEBF57", size = .15,
                   show.legend = F)

sp = read_state(code_state = "SP")
rj = read_state(code_state = "RJ")

ggplot() + geom_sf(data = sp, fill = "#2D3E50",
                   color = "#FEBF57", size = .15,
                   show.legend = F)

micro_reg_sp = read_micro_region(code_micro = "SP", year = 2010)
ggplot() + geom_sf(data = micro_reg_sp, fill = "#2D3E50",
                   color = "#FEBF57", size = .15,
                   show.legend = F)

meso_sp <- read_meso_region(code_meso = "SP", year = 2010)
ggplot() + geom_sf(data = meso_sp, fill = "#2D3E50",
                   color = "#FEBF57", size = .15,
                   show.legend = F)

plot(micro_reg_sp)

municipios <- read_municipality(code_muni = "SP")
ggplot() + geom_sf(data = municipios, fill = "#2D3E50",
                   color = "#FEBF57", size = .15,
                   show.legend = F)
View(municipios)

municipios_rj <- read_municipality(code_muni = "RJ")


## SP + RJ
municipios <- read_municipality(code_muni = "SP")
ggplot() + geom_sf(data = municipios, fill = "#2D3E50",
                   color = "#FEBF57", size = .15,
                   show.legend = F) + geom_sf(data = municipios_rj, fill = "#2D3E50",
          color = "#FEBF57", size = .15,
          show.legend = F)
  
  
