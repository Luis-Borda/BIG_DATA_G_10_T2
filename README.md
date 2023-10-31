# Problem Set 2: Making Money with ML?

## Universidad de Los Andes - Maestría en Economía Aplicada

Integrantes:

Luis Olegario Borda Silva

Julian Santiago Muñoz Garrido

Joan Sebastián Potosí Hoyos

Juan Felipe Vargas Guacheta

# Introducción

A diferencia de la mayoría de los bienes económicos, las viviendas se caracterizan por ser bienes heterogéneos que poseen una diversidad de atributos físicos, funcionales, de localización y de durabilidad, a la vez que proveen una gama de servicios, como confort, seguridad, proximidad al empleo y medios de transporte, etc., que las hacen prácticamente únicas e irrepetibles. Sin embargo, dado que lo que se tranza es la vivienda como un todo, la mayoría de las veces no es posible observar los precios o valoraciones marginales objetivas de cada uno de ellos. En consecuencia, es de interés conocer el precio implícito o hedónico de cada atributo. Al respecto, Rosen define la teoría de precios hedónicos como un problema de economía del equilibrio espacial en el que todo el conjunto de precios implícitos guía las decisiones de ubicación tanto del consumidor como del productor.

Sobre las consideraciones anteriores, en este repositorio se desarrolla un ejercicio para predecir los precios de viviendas en la localidad de Chapinero en Bogotá haciendo uso de modelos de precios hedónicos y técnicas de aprendizaje de máquinas. El objetivo de los modelos planteados es comprar el mayor número de viviendas gastando la menor cantidad de dinero posible. Para esto se utilizaron diferentes métodos: modelos lineales, técnicas de regularización, árboles de decisión y bosques, con el propósito de obtener una comprensión más profunda del espacio de predicción. La base de datos utilizada para este Set, cuenta con una muestra de 38.644 observaciones y 16 variables, además de algunas variables que se pueden extraer a partir de la descripción de cada inmueble en venta y otras adicionales, que se crearon con el propósito de optimizar la capacidad predictiva del modelo. 

Para realizar este ejercicio se aplicaron los conceptos aprendidos en el curso "Big data y Machine Learning para economía aplicada" de la Universidad de los Andes.

# Contenido del repositorio

## Document
En esta carpeta se encuentra el documento en el cual se desarrollo el problem set. El documento inicia con corta introducción, posteriormente en la segunda sección, se hace una descripción de los datos utilizados incluyendo, el proceso de obtención y limpieza de los datos y algunas estadísticas descriptivas de las variables utilizadas. Luego, en la sección 3 se presenta el modelo con mejor puntuación incluyendo: una explicación detallada sobre cómo se entrenó el modelo y como se hizo la selección de hiperparámetros. Además se compara el rendimiento del envío mejor puntuado con otros envíos enviados en Kaggle. Finalmente, en la sección 4 se presentan las conclusiones y recomendaciones. 

## Scripts

En esta carpeta se encuentran los scripts estructurados para desarrollar el problem set organizados de la siguiente manera: 

- `Limpieza e imputación`: este script contiene la limpieza de los datos e imputación, delimitación de áreas de interes (train para Bogotá y test para la localidad de Chapinero) visualización de datos,cálculo de estadiscticas descriptivas e imputación a partir de métodos convencionales. 
- `Spacial`:En este script se generan las variables espaciales, sus estadísticas descriptivas y los graficos de correlaciones con la variable precios.
- `Modelos de regularización`: en este script se los modelos de OLw, Ridge, Lasso y Elastic Net. 
- `Modelos de árboles`: aquí se encuentran las estimaciones del modelo de árboles
- `Modelo super learner`: en este script se encuentran las estimaciones del modelo super learner

## Stores

En esta carpeta se alojan las base de datos utilizadas para realizar el problem set. 

## Views

En esta carpeta se encuentran las gráficas en formato JPG y tablas.




