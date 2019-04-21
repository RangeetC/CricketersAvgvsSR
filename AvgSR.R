library(ggplot2)


avgsr <- read.csv('AveragevsStrikeRate.csv')
summary(avgsr)

ggplot(aes(x=Average,y=Strike.Rate),data=avgsr) +
    geom_point() + 
    geom_text(aes(label=ifelse(Name.of.Player %in% c("RN ten Doeschate","V Kohli","MG Bevan","AB de Villiers","MS Dhoni",
                                                     "HM Amla","RG Sharma","IVA Richards","SR Tendulkar","GJ Maxwell",
                                                     "Shahid Afridi","V Sehwag","AC Gilchrist","DA Warner",
                                                     "BB McCullum","N Kapil Dev","JC Buttler","JM Bairstow")
                               ,as.character(Name.of.Player),'')),vjust=-0.5)

              