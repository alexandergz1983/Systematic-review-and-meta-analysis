# required libraries
# install.packages("readxl")
# install.packages("dplyr")
# install.packages("metafor")
#install.packages("ggplot2")

library(readxl)
library(dplyr)
library(metafor)
library(ggplot2)

# our file and the tab with table of interest
archivo_excel <- "/Users/usuario/Documents/project_defense/metanalysis/resultados_metaanalisis_d.xlsx"
pestaña <- "Sheet 1"

# We import the data from our DataFrame
datos <- read_excel(archivo_excel, sheet = pestaña)

resultadoplot <- rma(yi = datos$AUC_ROC, sei =datos$SE2, method = "DL")
print(resultadoplot)
forest(resultadoplot,slab = paste(datos$Ref))


       