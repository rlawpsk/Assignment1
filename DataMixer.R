data = read.csv("measurements.csv")

data
for (i in 1:length(data$unitsW)) {
  if(data$unitsW[i] == 'mm') {
    data$Limb.Width[i] = data$Limb.Width[i]/10
    data$unitsW[i] = 'cm'
  } else {
    print(data$Limb.Width)
  }
}


for (i in 1:length(data$unitsL)) {
  if(data$unitsL[i] == 'mm') {
    data$Limb.Length[i] = data$Limb.Length[i]/10
    data$unitsL[i] = 'cm'
  } else {
    print(data$Limb.Length)
  }
}


data$volume = pi*((data$Limb.Width[i]/2)^2*data$Limb.Length)

library(ggplot2)

qplot(x = Limb.Width, y = Limb.Length, data = data, xlab = "Limb Width", 
      ylab = 'Limb Length')


