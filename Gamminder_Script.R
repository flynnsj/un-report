library(tidyverse)
gapminder_1997<-read_csv("gapminder_1997.csv")
str(gapminder_1997)

?read_csv
getwd()
sum(23,3)
round(3.1415)
round(3.1415, 3)
round(x=3.1415, digits = 3)

ggplot(data = gapminder_1997) + 
  aes(x = gdpPercap) +
  labs(x = "GDP per Cap") +
  aes(y = lifeExp) +
  labs(Y = "Life Expectancy") +
  geom_point() +
  labs(title = "Are the Wealthy more Healthy") +
  aes(color = continent) +
  scale_color_brewer(palette = "Set1") +
  aes(size = pop/1000000) +
  labs(size = "pop in millions") +
  labs(continent = "Place on Earth")

ggplot(data = gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp, color = continent, size = pop/1000000) +
  geom_point() +
  scale_color_brewer(palette = "Set1") +
  labs(x = "GDP per Cap", y = "Life Expectancy", 
       title = "Are the Wealth more Healthy?", 
       size = "pop in millions")

gapminder_data<-read_csv("gapminder_data.csv")

dim(gapminder_data)
dim(gapminder_1997)
ggplot(data = gapminder_data) +
  aes(x = year, y = lifeExp, group = country, color = continent) +
  geom_line()

#Discrete plots

ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) + 
  geom_boxplot()

ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) + 
  geom_violin() +
  geom_jitter()
  
ggplot(data = gapminder_1997) +
  aes(x = continent, y = lifeExp) + 
  geom_jitter() +
  geom_violin() 
  

#master Aesthetics
ggplot(data = gapminder_1997, aes(x = continent, y = lifeExp))+
  geom_jitter() +
  geom_violin() 

ggplot(data = gapminder_1997, aes(x = continent, y = lifeExp))+
  geom_jitter(aes(size = pop), color = "pink") +
  geom_violin(aes(fill = "pink")) 

ggplot(data = gapminder_1997, aes(x = continent, y = lifeExp))+
  geom_violin(aes(fill = "pink")) 


# Univariate plots

ggplot(gapminder_1997) +
  aes(x = lifeExp) +
  geom_histogram()


ggplot(gapminder_1997) +
  aes(x = lifeExp) +
  geom_histogram(bins = 5)

# plot Themes

ggplot(gapminder_1997) +
  aes(x = lifeExp) +
  geom_histogram(bins = 20) +
  theme_minimal()


ggplot(gapminder_1997) +
  aes(x = lifeExp) +
  geom_histogram(bins = 20) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

ggplot(gapminder_1997) +
  aes(x = lifeExp) +
  geom_histogram(bins = 20) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, 
                                   vjust = 1.1, 
                                   hjust = 1))

#facet wrap
ggplot(gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp) +
  geom_point() +
  facet_wrap(vars(continent))


#facet grid
ggplot(gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp) +
  geom_point() +
  facet_grid(rows = vars(continent))

#facet grid
ggplot(gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp) +
  geom_line() +
  facet_grid(rows = vars(continent))

ggsave("awesome_plot.jpg", width = 6, height = 4)

ggsave(awesome_plot, file = "awesome_plot.jpg", 
       width = 6, height = 4)

#exercise:
#violoin plot of continent and life expectancey, 
#color mapped to continent 
#asssigned to an object "violin plot"
# black and white theme
# save as "awesome_violin_plot.jpg"

Violin_plot <-ggplot(gapminder_data) +
  aes(x = continent, y = lifeExp, color = continent) +
  geom_violin()+ 
  theme_bw() +
  theme(axis.text.x = element_text(angle = 25, vjust = 1, hjust = 1))

ggsave(Violin_plot, file = "violin_plot.jpg")


Violin_plot2 <-ggplot(gapminder_data) +
  aes(y = continent, x = lifeExp, color = continent) +
  geom_violin()+ 
  theme_bw() +
  theme(axis.text.x = element_text(angle = 25, vjust = 1, hjust = 1))
  
Violin_plot2

ggplot(gapminder_data) +
  aes(x = continent, y = lifeExp, color = continent) +
  geom_violin() +
  geom_point() + 
  theme_classic()+
  theme(axis.text.x = element_text(angle = 25, vjust = 1, hjust = 1))




  