library(ggplot2)
library(animint2)

#library(animint2)
#library(ggplot2)

data<-data.frame(
    gsocorg = rep(c("rproj", "cern", "mnepython", "numfocus"), each = 5),
    proglang = rep(c("R", "Python", "C++","Javascript","C"), times = 4),
    projcount = c(50, 45, 7, 23, 23, 56, 34, 44, 10, 11, 67, 29, 36, 14, 62, 38, 24, 21, 47, 55)
)

data$proglang <- as.factor(data$proglang)


plot <- ggplot(data, aes(x = gsocorg, y = projcount)) +

geom_bar(
  aes(fill = proglang),
    clickSelects = "proglang",
    showSelected = "proglang",
    stat = "identity",
    position = "identity"
  ) +
  
ggtitle("GSOC Organizations by Programming Language") +
 theme_bw()

viz <- animint(
  gsocplot = plot,
  title = "GSOC Organizations by Programming Language",
  source = "https://github.com/AasmaGupta/gsoc-viz/blob/main/easy.r"
)

animint2pages(viz, "gsoc-viz-deploy")