########################### TAREA SEMANA 8: SOLUCIONARIO #############################
crabs <- read.csv("datos/datos_cangrejos.txt")
head(crabs)

# Columna 1: Fracción del total de especímenes recolectados en el Sector 1 que estaban en la categoría reproductiva “O” para cada mes.

# Total de individuos en el sector 1
total_sector1 <- crabs[which(crabs$Sector == "Sector_1"),]
length(total_sector1$Year)

# Total de individuos ovigeras para cada mes (ej. enero)
enero_ovig <- crabs[which(crabs$Sector == "Sector_1" &
                            crabs$Sex == "O" &
                            Month == "1"),]

# Fracción del total de O en cada mes
length(enero_ovig$Year) / length(total_sector1$Year) * 100




# Columna 2: Fracción del total de especímenes recolectados en el Sector 2 que estaban en la categoría reproductiva “O” para cada mes

# Total de individuos en el sector 2
total_sector2 <- crabs[which(crabs$Sector == "Sector_2"),]
length(total_sector2$Year)

# Total de individuos ovigeras para cada mes (ej. enero)
enero_ovig_S2 <- crabs[which(crabs$Sector == "Sector_2" &
                            crabs$Sex == "O" &
                            Month == "1"),]

# Fracción del total de O en cada mes
length(enero_ovig_S2$Year)/length(total_sector2$Year) * 100

# Columna 3: El promedio de la longitud de los cangrejos (C_Length) para cada mes
crabs_enero <- crabs[which(crabs$Month == "1"),]
mean(crabs_enero$C_Length, na.rm = T)


########################## TAREA SEMANA 9: SOLUCIONARIO ##############################

# Dada las siguientes condiciones
#A) Si x1 es positivo y x2  es igual a 8 entonces 
#calcule x3 como la suma de x1 y x2, sino x4=100

x1 <- -5
x2 <- 4

if (x1>0 & x2==8){
  
  x3 <- x1 + x2
  
}else{
  
  x4<-100
  
}

#B) Dado a=2, b=3 y c=4
# B1)Encuentre el valor de y1 sumando a,b,c si "a" es menor a "b" y "b" es menor a "c"
# B2)Encuentre el valor de y3 multiplicando a,b,c si a>b o si a<c

a<-2
b<-3
c<-4

if (a<b & b<c) {y1<-a+b+c}

if (a>b | a<c){
  y3<- a*b*c
}

#C) Dado los vectores z1 y z2
#z1=[2,4,0,0]
#z2=[5,3,2]

# Identifique cuantos ceros hay en el vector z1
#si la cantidad de ceros en menor a 2 sume 1 a z1 

z1 <- c(2,4,0,0)
z2 <- c(5,3,2)

#C1) Haga un código que identifique cuantos ceros hay en el vector z1 
pp <- which(z1==0)
n <- length(pp)

#C2)
if (n<2){
  z3 <- z1 + 1
}else if(n==2){
  z3 <- z2 + 3
}else {
  z3 <- z1 + 4
} 






