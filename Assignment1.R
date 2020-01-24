Species = c("Struthio camelus", "Dromaius novaehollandiae","Rhea americana",
            "Apteryx australis","Cygnus buccinator","Cygnus atratus", "Leipoa ocellata",
            "Ortalis vetula","Ortalis ruficauda","Ammoperdix griseogularis")

Limb.Width = abs(rnorm(10,mean=10,sd=10))
Limb.Length = abs(rnorm(10,mean=100,sd=100))

unitsW<-sample(c("mm","cm"),10,replace=TRUE,prob=c(0.5,0.5))
unitsL<-sample(c("mm","cm"),10,replace=TRUE,prob=c(0.5,0.5))

MyData = data.frame("Organism" = Species, "Limb.Width" = Limb.Width, "unitsW" = unitsW, 
                    "Limb.Length" = Limb.Length, "unitsL" = unitsL )



write.csv(MyData,"measurements.csv", row.names = TRUE )
