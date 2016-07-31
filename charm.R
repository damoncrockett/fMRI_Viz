setwd("~/Desktop/fMRI")
df = read.csv("charm.csv")

df$game = rep(1,89)

library(ggplot2)
ggplot(df,aes(Age,Full4.IQ,shape=as.factor(Gender),color=as.factor(Handedness))) + 
  geom_point(size=20)

ggplot(df,
       aes(as.factor(ScanDir.ID),
           as.factor(game),
           shape=as.factor(Gender),
           color=as.factor(Handedness))) +
  scale_size_continuous(range=c(5,25)) +
  scale_colour_manual(values = c("yellow","dodgerblue")) + 
  geom_point(size=50) +
  theme(panel.background = element_rect(fill=rgb(50,50,50,max=255)),
        panel.grid.major = element_line(color=rgb(50,50,50,max=255)),
        panel.grid.minor = element_line(color=rgb(50,50,50,max=255)),
        plot.background = element_rect(fill=rgb(50,50,50,max=255)),
        legend.position="none",
        axis.ticks = element_blank(),
        axis.text = element_blank(),
        text = element_blank())