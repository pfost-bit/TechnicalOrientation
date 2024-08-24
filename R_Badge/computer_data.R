library(tidyverse)
library(readxl)
library(tidyverse)
library(writexl)

df <- read_excel("2023-06-13-survey.xlsx", col_names = c("timestamp", "os", "cpu","cores","ram","hd","gpu","coda"),skip = 1)

df1 <- df |> 
  select(os,cpu,cores,ram,hd,gpu,coda)

ggplot(df1, aes(x=os, fill = os))+
  geom_bar()

ggplot(df1, aes(x = cpu, fill = os))+
  geom_histogram( color = "black", binwidth = .2)

ggplot(df1, aes(x=cores, fill = os))+
  geom_histogram(color = "black",binwidth = 2)

ggplot(df1, aes(x=ram, fill = os))+
  geom_histogram(color = "black",binwidth = 4)

ggplot(df1, aes(x=hd, fill =os))+
  geom_histogram(color = "black",binwidth = 100)

ggplot(df1, aes(x=coda,fill =os))+
  geom_histogram(color = "black", binwidth = 60)

ggplot(df1, aes(x= gpu,fill = gpu))+
  geom_bar(color = "black")
  
