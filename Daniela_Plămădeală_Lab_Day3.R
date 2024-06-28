list.files(pattern='csv')
D <- read.csv("C:/Users/daniela.plamadeala/Downloads/sativas413.csv", skip=1)
head(D)
plot(D$PC1, D$PC2)
POP=unique(D$Sub.population)
library(RColorBrewer)
COL=RColorBrewer::brewer.pal(7,"Dark2")
plot(D$PC1, D$PC2,  col='lightgrey')

for(i in 1:7){
  d1=subset(D, D$Sub.population == POP[i])
  points(d1$PC1, d1$PC3, col = COL[i], pch=15)
}
legend('topleft', legend=POP, col=COL, pch=15, cex=.5)

cor(as.numeric(D$Latitude), D$PC1)

list.files(pattern='Q')
Q=read.table("C:/Users/daniela.plamadeala/Downloads/sativas413.3.Q")
head(Q)
FAM=read.table("C:/Users/daniela.plamadeala/Downloads/sativas413.fam")
head(FAM)
D1=cbind(FAM, Q)
head(D1)
