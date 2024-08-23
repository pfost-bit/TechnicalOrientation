library(tidyverse)

small_n <- tibble(
  
  normal = rnorm(100),
  bi_nomial = rbinom(100,5,.5)
  
)

med_n <- tibble(
  
  normal = rnorm(1000),
  bi_nomial = rbinom(1000,50,.5)
  
)

large_n <- tibble(
  
  normal = rnorm(10000),
  bi_nomial = rbinom(10000,500,.5)
  
)


ggplot(small_n, aes(x = normal))+
  geom_histogram(fill = 'red', color = 'black')

ggplot(small_n, aes(x = bi_nomial))+
  geom_histogram(fill = 'yellow', color = 'black')

ggplot(med_n, aes(x = normal))+
  geom_histogram(fill = 'red', color = 'black')

ggplot(med_n, aes(x = bi_nomial))+
  geom_histogram(fill = 'yellow', color = 'black')
ggplot(large_n, aes(x = normal))+
  geom_histogram(fill = 'red', color = 'black')

ggplot(large_n, aes(x = bi_nomial))+
  geom_histogram(fill = 'yellow', color = 'black')

