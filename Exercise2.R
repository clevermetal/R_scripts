getwd()
setwd("/Users/prinpillay/R_scripts")
install.packages("gapminder")
?gapminder
head(gapminder)
summary(gapminder)
gapminder$country
levels(gapminder$country)
#Factor variable - different groupings and countries - number of unique countries = levels
#Levels - can only be used with factor variables
SAdata<-gapminder[118,]
SAdata<-gapminder[gapminder$country=="South Africa",]
plot(SAdata$year, SAdata$gdpPercap, type="l")
which(gapminder$country=="South Africa")
Test2<-gapminder[which(gapminder$country=="South Africa"),]
Test2
#Par = window of plots
par(mfrow=c(2,2))
#Play with the plots - if error margins are too small, make window bigger and rerun plot