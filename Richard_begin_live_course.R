1-1
1-1
2*4
4+3
5/2
x <- 2
x
x <- 3
x
x <- c(1,2,3)
x + 2
x * 2
library(readr)
tomato <- read_csv('data/TomatoFirst.csv')
tomato
library(readxl)
excel_sheets('data/ExcelExample.xlsx')
wine <- read_excel('data/ExcelExample.xlsx', sheet='Wine')
wine

library(dplyr)
data(diamonds, package = 'ggplot2')
diamonds

head(diamonds)
head(diamonds, n=10)
tail(diamonds)

diamonds %>% head()
diamonds %>% head(n=3)

diamonds %>% head(n=4) %>%  tail(n=1)
