data(father.son, package = 'UsingR')
head(father.son)

library(ggplot2)

ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point()
ggplot(father.son, aes(x=fheight, y=sheight)) + geom_point() +
    geom_smooth(method='lm')

height1 <- lm(sheight ~ fheight, data=father.son)
height1    

height1$coefficients[1]
height1$coefficients[2]  

source('code/boros.r')

boros

library(useful)

build.x( ~ Pop, data=boros)
build.x( ~ Pop + Size, data=boros)
build.x( ~ Pop * Size, data=boros)

build.x( ~ Pop + Size + Random, data=boros)

build.x( ~ Boro, data=boros)

build.x( ~ Pop + Size + Boro, data=boros)

library(readr)

land <- read_csv('data/manhattan_Train.csv')

View(land)

value1 <- lm(TotalValue ~ LotArea, data=land)
value1

value2 <- lm(TotalValue ~ LotArea + UnitsTotal, data=land)
value2
summary(value2)

library(coefplot)
coefplot(value2, sort='magnitude')
coefplot(value2, sort='magnitude', intercept=FALSE)

value3 <- lm(TotalValue ~ LotArea + UnitsTotal + OwnerType, data=land)
value3
coefplot(value3, sort='magnitude')
unique(land$OwnerType)

coefplot(value3, sort='magnitude', predictors=c('UnitsTotal', 'LotArea'))

