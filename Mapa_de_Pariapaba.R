library(dplyr)
library(geobr)

# Baixar limites territorias do Brasil de acordo com o ano 2019
br <- read_country(year = 2019) 

# Baixa limites territoriasi de todos os estados
estados <- read_state(code_state = 'all')
br$geom %>% plot()

#Baixar limites de todos os munic?pios do Brasil para olhar o c?digo do munic?pio
br.muni <- read_municipality()

# Baixar os limites de todos os munic?pios do Ce
ce.muni <- read_municipality(code_muni = "CE", year = 2019)
ce.muni$geom %>% plot()

# Ler c?digo dos limites territoriais do munic?pio de Paraipaba
lookup_muni(name_muni = "Paraipaba")

ce.muni <- read_municipality(code_muni = 2310258)
ce.muni$geom %>% plot()
