
source("teoriadecision_funciones_incertidumbre.R")


 # Problema 1
# Aplicar los criterios de decisión bajo incertidumbre al problema cuya matriz de valores numéricos viene dada por la siguiente tabla:
# -|    | e1 | e2 | e3 | e4 |
# -|----|----|----|----|----|
# -| d1 | 5  | 3  | 2  | 8  |
# -| d2 | 1  | 7  | 4  | 1  |
# -| d3 | 2  | 4  | 6  | 6  |
#Nota. Añadimos favorable si son benficios y desfavorable si son costos


 # Resolución del problema:
tablaX = matrix(c(5,3,2,8,
                  1,7,4,1,
                  2,4,6,6),nrow=4,ncol=3,byrow=TRUE)
colnames(tablaX)=c('e1','e2','e3',)
rownames(tablaX)=c('d1','d2','d3','d4')
tablaX

## Criterio de Wald o Pesimista
criterio.Wald(tablaX,favorable=TRUE) 

## Criterio Optimista
criterio.Optimista(tablaX,favorable=TRUE)

## Criterio Hurwicz
criterio.Hurwicz(tablaX,alfa=0.3,favorable=TRUE)

## Savage
criterio.Savage(tablaX,favorable=TRUE)

## Criterio Laplace
criterio.Laplace(tablaX,favorable=TRUE)

## Criterio punto ideal
criterio.PuntoIdeal(tablaX,favorable=TRUE)


 # Problema 2
# Clara y Pedro están considerando cambiar su plan de telefonía móvil y se enfrentan a tres opciones de tarifas ofrecidas por la misma compañía. Sin embargo, no están seguros de cuál es la mejor opción, ya que la decisión puede variar mucho de mes a mes, lo que introduce incertidumbre en la decisión.
# 
# Las tarifas disponibles son las siguientes:
#
#   Tarifa Básica:
#   Precio: 10 euros al mes.
# Datos incluidos: 2 GB de internet.
# Costo adicional por cada GB extra: 5 euros por GB.
#
# Tarifa Media:
#   Precio: 20 euros al mes.
# Datos incluidos: 10 GB de internet.
# Costo adicional por cada GB extra: 3 euros por GB.
#
# Tarifa Ilimitada:
#   Precio: 35 euros al mes.
# Datos incluidos: Datos ilimitados (sin cargos adicionales por uso extra).
#
# Uso mensual esperado: Clara y Pedro no están seguros de cuántos datos usarán al mes, pero consideran los siguientes escenarios posibles basados en su historial de uso:
# Escenario bajo: Usarán 5 GB en total.
# Escenario moderado: Usarán 15 GB en total.
# Escenario alto: Usarán 25 GB en total.
#
# -|           | Bajo (5GB) |  Moderado (15GB) | Alto (25GB) |
# -|-----------|------------|------------------|-------------|
# -| Básica    |     25     |        75        |     125     |
# -| Media     |     20     |        35        |     65      |
# -| Ilimitada |     35     |        35        |     35      |


 # Resolución del problema:
tablaY = matrix(c(25,75,125,
                  20,35,65,
                  35,35,35),nrow=3,ncol=3,byrow=TRUE)
colnames(tablaY)=c('Bajo','Moderado','Alto')
rownames(tablaY)=c('Basica','Media','Ilimitada')
tablaY

## Unión de criterios
criterio.Todos(tablaY,alfa=0.3,favorable=F)

  