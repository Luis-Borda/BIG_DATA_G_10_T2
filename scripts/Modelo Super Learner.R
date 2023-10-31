####################### SUPERLEARNER #########
bd<- train %>% mutate(logprice=log(price)) 

p_load("caret")
p_load("SuperLearner")

set.seed(1011)
inTrain <- createDataPartition(
  y = bd$logprice, 
  p = .7, 
  list = FALSE)

bdtrain_is <- bd[ inTrain,]
bdtest_is  <- bd[-inTrain,]
colnames(bdtrain_is)

listWrappers()

ySL<- bdtrain_is$price
ySL <- ySL[1:1000]
XSL<- bdtrain_is  %>% select(surface_total,surface_covered,rooms,bedrooms,bathrooms,
                             distancia_parque,area_parque,distancia_bus,
                             distancia_avenida_principal,distancia_universidad,distancia_policia,
                             dist_jar,puntos_SC,dist_cole,property_type)
XSL <- XSL[1:1000,]
sl.lib <- c("SL.randomForest", "SL.lm")
install.packages("randomForest")

fitY <- SuperLearner(Y = ySL,  X= data.frame(XSL),
                     method = "method.NNLS", # combinación convexa
                     SL.library = sl.lib)

fitY

bdtest_is <- bdtest_is  %>%  mutate(yhat_Sup=predict(fitY, newdata = data.frame(bdtest_is), onlySL = T)$pred)
head(bdtest_is$yhat_Sup)

test <- test  %>%  mutate(yhat_Sup=predict(fitY, newdata = data.frame(test), onlySL = T)$pred)
head(test$yhat_Sup)

MAE_S4 <- with(bdtest_is,mean(abs(price-yhat_Sup))) #MAE
MAE_S4

#Redondear precio predicho

bdtest_is$price_round <- round(bdtest_is$yhat_Sup/1e5)*1e5
head(bdtest_is$price_round)

MAE_S4R <- with(bdtest_is,mean(abs(price-price_round))) #MAE
MAE_S4R

