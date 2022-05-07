library(ggplot2)

# Read in dataset
data(iris)

# Plot
p <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) +
  geom_point()


#add titles and labels
p <- p + labs(title="Petal and sepal length of iris",
              subtitle="Relationship between petal and sepal length by species",
         caption="Source = Iris data set") +
  labs(y="Petal length (cm)", x = "Sepal length (cm)")


#set axis to start at 0 and go up to maximum
p <- p +                               
  scale_x_continuous(expand=c(0,0),limits = c(0,max(iris$Sepal.Length)+1)) +
  scale_y_continuous(expand=c(0,0),limits = c(0,max(iris$Petal.Length)+1))


#theme
p <- p + theme(panel.background = element_rect(fill = NA),
          axis.line = element_line(size = 0.5, colour = "black"),
          panel.grid.major = element_line(size = 0.5,colour = "grey90")
          )
p

#save plot
ggsave("first_ggplot_chart.png", p, 
       path = "/Users/lisa.hornung/Documents/Projects/100DaysOfDataviz/Day2")
          