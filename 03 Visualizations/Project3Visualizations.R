#This is the placeholder for the 03 Visualizations folder

require("ggplot2")
require("gplots")

ggplot(G1, aes(x = AIRCRAFT_COUNTRY_AREA, y = NUMBER_DATAPOINTS)) + geom_point(colour = "dodgerblue2") + ggtitle("Same Number of Trades")

tradeplot1 <- ggplot(aircrafttrades, aes(x = AIRCRAFT_COUNTRY_AREA, y = NUMBER_DATAPOINTS)) + geom_area(colour="dodgerblue2") + labs(x = "Aircraft Trade Countries", y = "Number of Trades") + ggtitle("Aircraft Trades") + theme(plot.title=element_text(size=20, face="bold", vjust=2))

tradeplot2 <- ggplot(ammotrades, aes(x = AMMO_COUNTRY_AREA, y = NUMBER_DATAPOINTS)) + geom_area(colour="red") + labs(x = "Number of Ammo Trades", y = "Countries") + ggtitle("Ammo Trades") + theme(plot.title=element_text(size=20, face="bold", vjust=2))

tradeplot3 <- ggplot(altrades, aes(x = AL_COUNTRY_AREA, y = NUMBER_DATAPOINTS)) + geom_area(colour="chocolate") + labs(x = "Number of Leather Trades", y = "Countries") + ggtitle("Article Leather Trades") + theme(plot.title=element_text(size=20, face="bold", vjust=2))

yearPlot1<-ggplot(yc1, aes(x = COUNTRY, y = YEAR, color=factor(YEAR))) +geom_point() + coord_flip()
yearPlot2<-ggplot(G3 %>% slice(100:300),aes(x= YEAR, y=COUNTRY))+geom_line(aes(color="Country Variety"))+geom_point(aes(color="Country Points"))+scale_colour_manual(name='', values=c('Country Variety'='grey','Country Points'='red')) + theme(axis.text.x = element_text(angle=90, vjust=0.5, size=12))
                                                                                                                                                                                                                                      

tradeplot1
tradeplot2
tradeplot3

yearPlot1
yearPlot2

