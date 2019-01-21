spojeneTabulky_1
polozky
sladkosti= c("Alfajores","Cake","Argentina Night","Art Tray","Cookies")
sladkosti = c("Muffin")

sladkosti
spojeneTabulky_1$Polozky =ifelse(spojeneTabulky_1$Item=="Coffee", "Napoj","Jedlo" )
spojeneTabulky_1$Polozky =ifelse(spojeneTabulky_1$Item=="Coke", "Napoj","Jedlo" )

summary(spojeneTabulky_1[which(spojeneTabulky_1$Polozky.y == "Napoj"),"Item"])
spojeneTabulky_1$Polozky = spojeneTabulky_1[which(spojeneTabulky_1$Item == "Coffee"),]



napoje = data.frame(Item =napoje, Polozky = napoj)
length(napoje)
for (i in 1:13) {
  napoj[i] = c("Napoj")  
}
napoj = c(NULL) 
merge(spojeneTabulky_1, napoje, by="Item")
spojeneTabulky_1 = merge(spojeneTabulky_1, napoje, by="Item")
spojeneTabulky_1$Polozky.x = NULL 
spojeneTabulky_1$Polozky.y
spojeneTabulky_1 = spojeneTabulky_1[,c(2,3,4,1,5,6,7,8,9,10,11,12,13)]
spojeneTabulky_1= spojeneTabulky_1[ordered(c(spojeneTabulky_1$Date,spojeneTabulky_1$Time)),]
spojeneTabulky_1$Dni.x = NULL
spojeneTabulky_1$hms.Minuty..hour= minutes(spojeneTabulky_1$Time)
spojeneTabulky_1$hms.Minuty..minutes = spojeneTabulky_1$hms.Minuty..hour@minute
spojeneTabulky_1$hms.Minuty..hour = NULL
spojeneTabulky_1 = spojeneTabulky_1[,c(1,2,3,4,5,6,10,7,8,9)]
levels(spojeneTabulky_1$Item)

                                                        
                              

sladkosti = c("Victorian Sponge","Vegan mincepie","Valentine's card","Tiffin","Truffles","The BART","Spread","Siblings"
             ,"Scone","Raw bars","Raspberry shortbread sandwich","Pick and Mix Bowls","My-5 Fruit Shoot","Muffin","Muesli"
             ,"Medialuna","Kids biscuit","Chocolates","Honey","Cherry me Dried fruit","Dulce de Leche","Bread Pudding"
             ,"Fairy Doors","Alfajores","Cake","Cookies","Art Tray" ,"Brownie")
pecivoNesl = c("Toast","Vegan Feast","Baguette","Bread","Sandwich","Scandinavian")
ostatnePolozky = c("Adjustment","Afternoon with the baker","Argentina Night","Bacon","Bakewell","Bare Popcorn",                 
                   "Basket","Bowl Nic Pitt","Brioche and salami","Caramel bites","Crepes","Crisps","Duck egg","Empanadas",
                   "Extra Salami or Feta","Farm House","Focaccia","Frittata","Fudge","Gift voucher","Granola","Hack the stack",               
                   "Half slice Monster ","Hearty & Seasonal","Chicken sand","Chicken Stew","Chimichurri Oil","Christmas common","Jam","Jammie Dodgers",               
                   "Keeping It Local","Mighty Protein","Mortimer","Nomad bag","NONE","Olum & polenta","Panatone","Pastry","Polenta","Postcard",                      
                   "Salad","Spanish Brunch","Tacos/Fajita","Tartine","The Nomad","Tshirt")


napoje = c("Coffee","Coke","Drinking chocolate spoons", "Ella's Kitchen Pouches",
           "Gingerbread syrup","Hot chocolate","Juice","Lemon and coconut",
           "Mineral water", "Soup","Smoothies","Tea","Coffee granules")


Celkovy_Index = 1:21293
spojeneTabulky_1$IndexPolozky = Celkovy_Index
Sladkosti = spojeneTabulky_1[which(spojeneTabulky_1$Item==sladkosti[1]|spojeneTabulky_1$Item==sladkosti[2]
                                   |spojeneTabulky_1$Item==sladkosti[3]
                                   |spojeneTabulky_1$Item==sladkosti[4]
                                   |spojeneTabulky_1$Item==sladkosti[5]
                                   |spojeneTabulky_1$Item==sladkosti[6]
                                   |spojeneTabulky_1$Item==sladkosti[7]
                                   |spojeneTabulky_1$Item==sladkosti[8]
                                   |spojeneTabulky_1$Item==sladkosti[9]
                                   |spojeneTabulky_1$Item==sladkosti[10]
                                   |spojeneTabulky_1$Item==sladkosti[11]
                                   |spojeneTabulky_1$Item==sladkosti[12]
                                   |spojeneTabulky_1$Item==sladkosti[13]
                                   |spojeneTabulky_1$Item==sladkosti[14]
                                   |spojeneTabulky_1$Item==sladkosti[15]
                                   |spojeneTabulky_1$Item==sladkosti[16]
                                   |spojeneTabulky_1$Item==sladkosti[17]
                                   |spojeneTabulky_1$Item==sladkosti[18]
                                   |spojeneTabulky_1$Item==sladkosti[19]
                                   |spojeneTabulky_1$Item==sladkosti[20]
                                   |spojeneTabulky_1$Item==sladkosti[21]
                                   |spojeneTabulky_1$Item==sladkosti[22]
                                   |spojeneTabulky_1$Item==sladkosti[23]
                                   |spojeneTabulky_1$Item==sladkosti[24]
                                   |spojeneTabulky_1$Item==sladkosti[25]
                                   |spojeneTabulky_1$Item==sladkosti[26]
                                   |spojeneTabulky_1$Item==sladkosti[27]
                                   |spojeneTabulky_1$Item==sladkosti[28]
                                   ),]



OstatnePolozky = spojeneTabulky_1[which(spojeneTabulky_1$Item==ostatnePolozky[1]|spojeneTabulky_1$Item==ostatnePolozky[2]
                                   |spojeneTabulky_1$Item==ostatnePolozky[3]
                                   |spojeneTabulky_1$Item==ostatnePolozky[4]
                                   |spojeneTabulky_1$Item==ostatnePolozky[5]
                                   |spojeneTabulky_1$Item==ostatnePolozky[6]
                                   |spojeneTabulky_1$Item==ostatnePolozky[7]
                                   |spojeneTabulky_1$Item==ostatnePolozky[8]
                                   |spojeneTabulky_1$Item==ostatnePolozky[9]
                                   |spojeneTabulky_1$Item==ostatnePolozky[10]
                                   |spojeneTabulky_1$Item==ostatnePolozky[11]
                                   |spojeneTabulky_1$Item==ostatnePolozky[12]
                                   |spojeneTabulky_1$Item==ostatnePolozky[13]
                                   |spojeneTabulky_1$Item==ostatnePolozky[14]
                                   |spojeneTabulky_1$Item==ostatnePolozky[15]
                                   |spojeneTabulky_1$Item==ostatnePolozky[16]
                                   |spojeneTabulky_1$Item==ostatnePolozky[17]
                                   |spojeneTabulky_1$Item==ostatnePolozky[18]
                                   |spojeneTabulky_1$Item==ostatnePolozky[19]
                                   |spojeneTabulky_1$Item==ostatnePolozky[20]
                                   |spojeneTabulky_1$Item==ostatnePolozky[21]
                                   |spojeneTabulky_1$Item==ostatnePolozky[22]
                                   |spojeneTabulky_1$Item==ostatnePolozky[23]
                                   |spojeneTabulky_1$Item==ostatnePolozky[24]
                                   |spojeneTabulky_1$Item==ostatnePolozky[25]
                                   |spojeneTabulky_1$Item==ostatnePolozky[26]
                                   |spojeneTabulky_1$Item==ostatnePolozky[27]
                                   |spojeneTabulky_1$Item==ostatnePolozky[28]
                                   |spojeneTabulky_1$Item==ostatnePolozky[29]
                                   |spojeneTabulky_1$Item==ostatnePolozky[30]
                                   |spojeneTabulky_1$Item==ostatnePolozky[31]
                                   |spojeneTabulky_1$Item==ostatnePolozky[32]
                                   |spojeneTabulky_1$Item==ostatnePolozky[33]
                                   |spojeneTabulky_1$Item==ostatnePolozky[34]
                                   |spojeneTabulky_1$Item==ostatnePolozky[35]
                                   |spojeneTabulky_1$Item==ostatnePolozky[36]
                                   |spojeneTabulky_1$Item==ostatnePolozky[37]
                                   |spojeneTabulky_1$Item==ostatnePolozky[38]
                                   |spojeneTabulky_1$Item==ostatnePolozky[39]
                                   |spojeneTabulky_1$Item==ostatnePolozky[40]
                                   |spojeneTabulky_1$Item==ostatnePolozky[41]
                                   |spojeneTabulky_1$Item==ostatnePolozky[42]
                                   |spojeneTabulky_1$Item==ostatnePolozky[43]
                                   |spojeneTabulky_1$Item==ostatnePolozky[44]
                                   |spojeneTabulky_1$Item==ostatnePolozky[45]
                                   |spojeneTabulky_1$Item==ostatnePolozky[46]
                                   
),]

PecivoNesl = spojeneTabulky_1[which(spojeneTabulky_1$Item==pecivoNesl[1]|spojeneTabulky_1$Item==pecivoNesl[2]
                                    |spojeneTabulky_1$Item==pecivoNesl[3]
                                    |spojeneTabulky_1$Item==pecivoNesl[4]
                                    |spojeneTabulky_1$Item==pecivoNesl[5]
                                    |spojeneTabulky_1$Item==pecivoNesl[6]
                                    
                                    
),]

Napoje = spojeneTabulky_1[which(spojeneTabulky_1$Item==napoje[1]|spojeneTabulky_1$Item==napoje[2]
                                  |spojeneTabulky_1$Item==napoje[3]
                                  |spojeneTabulky_1$Item==napoje[4]
                                  |spojeneTabulky_1$Item==napoje[5]
                                  |spojeneTabulky_1$Item==napoje[6]
                                  |spojeneTabulky_1$Item==napoje[7]
                                  |spojeneTabulky_1$Item==napoje[8]
                                  |spojeneTabulky_1$Item==napoje[9]
                                  |spojeneTabulky_1$Item==napoje[10]
                                  |spojeneTabulky_1$Item==napoje[11]
                                  |spojeneTabulky_1$Item==napoje[12]
                                  |spojeneTabulky_1$Item==napoje[13]
),]  
Napoje$Polozky = "Napoj"
OstatnePolozky$Polozky = "OstatnePolozky"
PecivoNesl$Polozky = "PecivoNesladke"
Sladkosti$Polozky = "Sladkosti"
spojeneTabulky_1_1 =  rbind(Napoje,PecivoNesl,OstatnePolozky,Sladkosti)
spojeneTabulky_1_1 = spojeneTabulky_1_1[order(spojeneTabulky_1_1$IndexPolozky),]
spojeneTabulky_1_1$Polozky = as.factor(spojeneTabulky_1_1$Polozky)
set.seed(200)
Vzorka = sample(2,nrow(spojeneTabulky_1_1),replace = TRUE, prob = c(0.7,0.3))

spojeneTabulky_1_1.tren = spojeneTabulky_1_1[Vzorka==1,c(-4,-12)]
spojeneTabulky_1_1.tren_spoj = spojeneTabulky_1_1[Vzorka==1,12]
spojeneTabulky_1_1.test = spojeneTabulky_1_1[Vzorka==2,c(-4,-12)]
spojeneTabulky_1_1.test_spoj = spojeneTabulky_1_1[Vzorka==2,12]

library(e1071)
klasifikacia.trenovacia = naiveBayes(spojeneTabulky_1_1.tren,spojeneTabulky_1_1.tren_spoj)
table(predict(klasifikacia.trenovacia,spojeneTabulky_1_1.tren),spojeneTabulky_1_1.tren_spoj)
uspechKlasifikacie = data.frame(table(predict(klasifikacia.trenovacia,spojeneTabulky_1_1.tren),spojeneTabulky_1_1.tren_spoj))
vyhodnotenie = uspechKlasifikacie [which(uspechKlasifikacie$Var1== uspechKlasifikacie$spojeneTabulky_1_1.tren_spoj & uspechKlasifikacie$Freq>0),]
uspesnost = sum(vyhodnotenie$Freq)/sum(uspechKlasifikacie$Freq)*100
uspesnost

table(predict(klasifikacia.trenovacia,newdata = spojeneTabulky_1_1.test),spojeneTabulky_1_1.test_spoj)
uspechKlasifikacie_2 = data.frame(table(predict(klasifikacia.trenovacia,newdata = spojeneTabulky_1_1.test),spojeneTabulky_1_1.test_spoj))
vyhodnotenie_2 = uspechKlasifikacie_2 [which(uspechKlasifikacie_2$Var1== uspechKlasifikacie_2$spojeneTabulky_1_1.test_spoj & uspechKlasifikacie_2$Freq>0),]
uspesnost = sum(vyhodnotenie_2$Freq)/sum(uspechKlasifikacie_2$Freq)*100
uspesnost
library(party)
spojeneTabulky_1_1.tren_1 = spojeneTabulky_1_1[Vzorka==1,]
spojeneTabulky_1_1.test_1 = spojeneTabulky_1_1[Vzorka==2,]


myFormula = Polozky ~ Dni + hms.Minuty..minutes + hms.Hodiny..hour + Mesiace + Roky
spojeneTabulky_1_1.ctree = ctree(myFormula, data = spojeneTabulky_1_1.tren_1)
plot(spojeneTabulky_1_1.ctree, type="simple")
plot(spojeneTabulky_1_1.ctree)
table(predict(spojeneTabulky_1_1.ctree),spojeneTabulky_1_1.tren_1$Polozky)

table(predict(spojeneTabulky_1_1.ctree, newdata=spojeneTabulky_1_1.test_1), spojeneTabulky_1_1.test_1$Polozky)




saveRDS(spojeneTabulky_1, "final.rda")
saveRDS(spojeneTabulky_1_1, "final_1.rda")
spojeneTabulky_1 = readRDS("final.rda")
spojeneTabulky_1_1 =readRDS("final_1.rda")
pie(sledovane_1$B, labels = j, col = rainbow(length(sledovane_1$B)), main = "Graf s rozdelenim predanych poloziek za sledovane obdobie")


download.file("http://web.tuke.sk/fei-cit/butka/res/titanic.csv", destfile = "titanic.csv")
titanic = read.csv("titanic.csv", header = TRUE, sep = ",")
library(jsonlite)

titanic = fromJSON("titanic.json") 
#install.packages("arulesViz")
library(arules)

rules <- apriori(titanic, control = list(verbose=F), 
                 parameter = list(minlen=2, supp=0.005, conf=0.8),     
                 appearance = list(rhs=c("Survived=No","Survived=Yes"), default="lhs"))
rules.sorted <- sort(rules, by="lift") 
inspect(rules.sorted)
library(arulesViz)
plot(rules)






inspect(head(pravidla, by="support", n=10))
selektovaneTransakcie <- read.transactions("BreadBasket_DMS.csv",format="single",cols=c(3,4),sep=",")
summary(itemFrequency(selektovaneTransakcie))
30/length(selektovaneTransakcie)


pravidla <- apriori(selektovaneTransakcie,parameter=list(support=0.0045,confidence=.5))
inspect(pravidla)
inspect(head(pravidla,by="confidence"))
plot(pravidla, measure=c("support","lift"), shading="confidence")
plot(pravidla, method = "two-key plot")
plot(pravidla, method="graph")
plot(pravidla, method="grouped")
plot(pravidla, method="paracoord", control=list(reorder=TRUE))
