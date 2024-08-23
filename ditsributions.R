library(tidyverse)


df <- tibble(
  
  uniform = runif(1000),
  normal = rnorm(1000),
  poisson = rpois(1000,10)
  
)


ggplot(df, aes(x = uniform ))+
  geom_histogram(fill = "blue", color = "black")

ggplot(df, aes(x = normal))+
  geom_histogram(fill= 'red', color = 'black')

ggplot(df, aes(x = poisson))+
  geom_histogram(fill = 'green', color = 'black')