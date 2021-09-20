# Solución práctico 4
# Ecuación
# r^2 = (x-h)^2 + (y-k)^2

# CON RADIO EN EL PUNTO (0,0)
# radio 10
r1 <- 10
# Puntos en plano cartesiano
x1 <- seq(from = -10, to = 10, by = 0.1)
y1 <- sqrt(r1^2 - x1^2)

# radio 5
r2 <- 5
# Puntos en plano cartesiano
x2 <- seq(from = -r2, to = r2, by = 0.1)
y2 <- sqrt(r2^2 - x2^2)

# radio 3
r3 <- 3
# Puntos en plano cartesiano
x3 <- seq(from = -r3, to = r3, by = 0.1)
y3 <- sqrt(r3^2 - x3^2)

# radio 1
r4 <- 1
# Puntos en plano cartesiano
x4 <- seq(from = -r4, to = r4, by = 0.1)
y4 <- sqrt(r4^2 - x4^2)

# grafico en blanco
plot(0, 0, asp = 1, type = "n",
     xlim = c(-20, 30), ylim = c(-10, 10),
     ann = F)

# Agregando lineas
lines(x1, y1, lwd = 3, col = "blue")
lines(x2, y2, lwd = 3, col = "blue")
lines(x3, y3, lwd = 3, col = "blue")
lines(x4, y4, lwd = 3, col = "blue")

# RADIO CON CENTRO (0,10)
# Ecuación
# r^2 = (x-h)^2 + (y-k)^2

r5 <- 10
# Puntos en plano cartesiano
x5 <- seq(from = -10, to = 10, by = 0.1)
y5 <- sqrt(r5^2 - x5^2)

lines(x5 + 10, y5, lwd = 3, col = "red")


# OTRO FORMA
#grafico circunferencia
#Primera circunferencia
#radio
radio <- 10

#Ecuación en coordenadas polares
# x <- a + cos(t)*radio
# y <- b + sin(t)*radio

#origen cero
a <- 0
b <- 0

#angulo
t <- seq(0, 2*pi, length.out = 100)

# Ecuación
x <- a + cos(t)*radio
y <- b + sin(t)*radio



#gráfico
plot(x, y,
     xlim = c(-20, 20),
     ylim = c(-10, 10),
     col = "white")
lines(x,y, lwd=3, col = "red")

#Segunda circunferencia

#radio 1, 3, 5, 10
#Origen cero
x1 <- cos(t)*1
y1 <- sin(t)*1

x2 <- cos(t)*3
y2 <- sin(t)*3

x3 <- cos(t)*5
y3 <- sin(t)*5

x4 <- cos(t)*10
y4 <- sin(t)*10

#origen (10,0)
x5 <- 10 + cos(t)*radio
y5 <- 0 + sin(t)*radio


plot(0, 0, asp = 1, type = "n",
     xlim = c(-20, 30), ylim = c(-10, 10),
     ann = F)

lines(x2,y2, col="blue")
lines(x1,y1, col="blue")
lines(x3,y3, col="blue")
lines(x4,y4, col="blue")
lines(x5,y5, col="red")

