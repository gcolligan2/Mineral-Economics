library(quantmod)

getwd()
setwd("C:/Users/gcoll/Documents/School")
getwd()
stringsAsFactors=FALSE


NuclearPro = read.csv(file = "C:\\Users\\gcoll\\Documents\\School\\Mineral Economics\\Primary Fuels\\Copy of Table_8.1_Nuclear_Energy_Overview.csv", header = TRUE, sep = ",")


plot(NuclearPro[,1], NuclearPro[,4], type = "p", main = "Total US Nuclear Energy Production", xlab = "Year, Month", ylab = "MWh")
plot(NuclearPro[,1], NuclearPro[,3], type = "p", main = "Total US Nuclear Capcity", xlab = "Year, Month", ylab = "MWh")
plot(NuclearPro[,1], NuclearPro[,6], type = "p", main = "Total Capcity Usage", xlab = "Year, Month", ylab = "% Use")
        
UraniumPro = read.csv(file = "C:\\Users\\gcoll\\Documents\\School\\Mineral Economics\\Primary Fuels\\Uranium Mine Production.csv", header = TRUE, sep = ",")

plot(UraniumPro[,1], UraniumPro[,4], type = "l", main = "Uranium Mine Production", xlab = "Year", ylab = "Million lbs Uranium Oxide")
plot(UraniumPro[,1], UraniumPro[,5], type = "l", main = "Uranium Concentrate Production", xlab = "Year", ylab = "Million lbs Uranium Oxide")

UraniumSales = read.csv(file = "C:\\Users\\gcoll\\Documents\\School\\Mineral Economics\\Primary Fuels\\Uranium Purchases.csv", header = TRUE, sep = ",")

TotalPurchase <- UraniumSales$Purchases.of.U.S..origin.and.foreign.origin.uranium.4
ForeignPurchase <- UraniumSales$Purchases.of.U.S..origin.and.foreign.origin.uranium.3

as.numeric(levels(TotalPurchase))[TotalPurchase]

as.integer(TotalPurchase)
as.numeric(as.character(TotalPurchase))

Year <- UraniumSales$Year
plot(Year, PercentSales, type = "l", main = "Percent Purchased US Uranium Concentrate", xlab = "Year", ylab = "% Domestic Uranium Purchased")

