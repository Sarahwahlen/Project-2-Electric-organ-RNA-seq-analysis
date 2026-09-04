#loading in packages
library(tidyverse)
library(ggplot2)
library(dplyr)


#read in forward reads 
Cco_com103_fw_paired_len_dist=read.table("Cco_com103_fw_paired_len_dist.txt", header = FALSE, col.names =c("Frequency_fw","Length"))
Cco_com103_rv_paired_len_dist=read.table("Cco_com103_rv_paired_len_dist.txt", header = FALSE, col.names =c("Frequency_rv","Length"))

#checkIT
head(Cco_com103_fw_paired_len_dist)
head(Cco_com103_rv_paired_len_dist)

#join them! 
Cco_com103_paired_len_dist = full_join(Cco_com103_fw_paired_len_dist, Cco_com103_rv_paired_len_dist)

#checkIT
head(Cco_com103_paired_len_dist)

#plot com103 
Cco_com103_paired_len_dist = Cco_com103_paired_len_dist %>%
  ggplot(aes(x=Length)) +
  geom_col(aes(y= Frequency_fw, fill = "Cco_com103_fw_paired_len_dist"),alpha = 0.3)+ 
  geom_col(aes(y= Frequency_rv, fill = "Cco_com103_rv_paired_len_dist"),alpha = 0.3)+
  labs(x= "Read Len", y= "Freq", color = "Cco_com103_fw_paired_len_dist or Cco_com103_rv_paired_len_dist")

ggsave("Cco_com103_paired_len_dist_plot.pdf")


#### do it again #### 

#read in forward reads 
Cco_com102_fw_paired_len_dist=read.table("Cco_com102_fw_paired_len_dist.txt", header = FALSE, col.names =c("Frequency_fw","Length"))
Cco_com102_rv_paired_len_dist=read.table("Cco_com102_rv_paired_len_dist.txt", header = FALSE, col.names =c("Frequency_rv","Length"))

#checkIT
head(Cco_com102_fw_paired_len_dist)
head(Cco_com102_rv_paired_len_dist)

#join them! 
Cco_com102_paired_len_dist = full_join(Cco_com102_fw_paired_len_dist, Cco_com102_rv_paired_len_dist)

#checkIT
head(Cco_com102_paired_len_dist)

#plot com103 
Cco_com102_paired_len_dist = Cco_com102_paired_len_dist %>%
  ggplot(aes(x=Length)) +
  geom_col(aes(y= Frequency_fw, fill = "Cco_com102_fw_paired_len_dist"),alpha = 0.3)+ 
  geom_col(aes(y= Frequency_rv, fill = "Cco_com102_rv_paired_len_dist"),alpha = 0.3)+
  labs(x= "Read Len", y= "Freq", color = "Cco_com102_fw_paired_len_dist and Cco_com102_rv_paired_len_dist")

ggsave("Cco_com102_paired_len_dist_plot.pdf")









