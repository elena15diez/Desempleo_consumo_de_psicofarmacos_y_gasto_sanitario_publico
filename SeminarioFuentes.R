datos <- data.frame(
  # Tabla con las 19 comunidades autónomas
  CCAA = c("Andalucía", "Aragón", "Asturias", "Cantabria", "Ceuta", 
         "Castilla y León", "Castilla-La Mancha", "Canarias", "Cataluña", 
         "Extremadura", "Galicia", "Islas Baleares", "Región de Murcia", 
         "Comunidad de Madrid", "Melilla", "Navarra", "País Vasco", 
         "La Rioja", "Comunidad Valenciana"),
  
  # Tasa de paro por comunidad autónoma en 2026
  Tasa_Paro = c(14.6, 8.2, 9.1, 7.3, 22.4, 8.4, 11.8, 11.6, 7.9, 13.2, 
                7.9, 6.1, 10.8, 7.6, 20.7, 8.1, 7.1, 8.8, 10.9),
  
  # Gasto sanitario por comunidad autónoma en 2026 (Ceuta y Melilla no tienen datos)
  Gasto_Sanitario = c(1870.50, 2192.92, 2506.71,  2220.03, NA, 2173.72, 
                      1908.45, 2136.22, 1515.99, 2288.44, 2084.57, 
                      1981.21, 1511.18, 1537.28, NA, 2275.20, 2373.27, 
                      2071.19, 1586.38),
  
  #Consumo de psicofármacos por comunidad autónoma
  Consumo_Psicofarmacos = c(39.71, 39.19, 39.11, 63.22, 40.92, 41.13, 
                            28.25, 46.84, 28.23, 35.24, 41.74, 24.56, 
                            37.25, 23.17, 18.73, 40.82, 42.44, 46.15, 
                            32.11)
)
# Ordenar por tasa de paro (de mayor a menor)
tabla_resumen <- datos[order(-datos$Tasa_Paro), 
                       c("CCAA", "Tasa_Paro", "Gasto_Sanitario", "Consumo_Psicofarmacos")]
options (width = 500)
print(tabla_resumen, row.names = FALSE)

