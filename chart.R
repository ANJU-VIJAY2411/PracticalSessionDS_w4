dosage <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)
opinion <- c("Excellent","No effect" ,"Some effect" , "No effect", "Some effect")

drugs <- data.frame(dosage, 
                        drugA, 
                        drugB,opinion)

plot(drugs)

#Examine individual charts

attach(drugs)
plot(dosage , type = "o" , col = "Blue")

plot(dosage,drugA,type = "b" , col = "blue")


#if you want to plot a cat var then convert to factor first

drugs$opinion <- as.factor(drugs$opinion)

str(drugs)

plot(drugs$opinion , las = 2)


#par function - default parameters

oper <- par(no.readonly = TRUE)
 
par(lty = 2 , pch = 17)
plot(dosage , drugA, type = "b")

par <- oper


plot(drugA 
     , type = "o" 
     , pch = 22 
     , lty = 2 
     ,col = "red"
       ,main = "Drug Dosage" 
     , col.main = "Blue" 
     , font.main = 4
     ,xlab = "No of Days"
     , ylab = "Drug Dosage (ml)"
)

#title(main = "Drug Dosage" , col.main = "Blue" , font.main = 4,xlab = "No of Days" , ylab = "Drug Dosage (ml)")



graph_range <- range(0,drugA,drugB)

graph_range

plot(drugA ,  type = "o" 
     , pch = 22 
     , lty = 2,ylim = graph_range , axes = FALSE , ann = FALSE  )

#graph drug b with red dashed line and square points



lines(drugB, type = "o",
      pch = 22,
      lty = 2,
      col="red")

# make custom x axis

axis(1, at = 1:5,
     lab = c("20 ml", "40 ml" , "60 ml" , "80 ml", "100 ml"))

# make custom y axis

axis(2, las = 1, at = 5 * 0:graph_range[2])

#modify default params as that graph_range
#is 2 inch wide and 3 inch tall

par(pin = c(2,3))


par()
