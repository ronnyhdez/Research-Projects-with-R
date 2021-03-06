

# R workshop OTS TropBio_2018
# Impartido por: Ronny Hdez-mora.
# Contacto: ronny.hernandezm@gmail.com
# Twitter: @RonnyHdezM
# Github: ronnyhdez


# -----------------1.Start session-----------------------------------------------

# Load your libraries:
library(tidyr)
library(dplyr)
library(ggplot2)

# Read your data:
data <- read.csv("raw_data/bmi.csv")

# Check your data:
head(data)
tail(data)
str(data)
View(data)

# Where is your working directory?
getwd()

# What do I have in my working directory?
dir()

# -----------------2.Objects and structure---------------------------------------

# To create vectors c( )
a <- c("biology", "A", "estadistica")
class(a)

b <- c(18.6, 90)
class(b)

c <- c(18L, 26L)
class(c)

d <- 2 + 4i
class(d)

e <- c(TRUE, FALSE)
class(e)

#------2.1 Try to mix values and check the class

##YOUR CODE IN HERE##


#------2.2 Structures

# Vectores elementos son del mismo tipo
v_1 <- c(10, 20, 30)
v_2 <- c("a", "b", "c")
v_3 <- c(TRUE, FALSE, TRUE)

# Listas elementos son de diferente tipo 
l_1 <- list(v_1,v_2,v_3)

l_1

# matrix es de dos dimensiones con elementos
# del mismo tipo:

matrix_1 <- matrix(1:9, nrow = 3, ncol = 3)
matrix_1

# data frame es de dos dimensiones con elementos
# de diferente tipo:

numero <- 1:5
nombre <- c("Mercurio", "Venus", "Tierra", "Marte", "Jupiter")
planeta <- data.frame(numero, nombre)
planeta

# You can check the class of one column from a dataframe:

class(planeta$numero)
class(planeta$nombre)

# -----------------3. Coercing ---------------------------------------------------

biolo_vector<-c(20, 40, "A", 80)
class(biolo_vector)
z <- as.numeric(biolo_vector)
z

biolo_vector<-c(20, 40, TRUE, 80)
class(biolo_vector)
biolo_vector

biolo_vector <- c(20:60)
bv_1 <- as.character(biolo_vector)
bv_2 <- as.logical(biolo_vector)
bv_3 <- as.complex(biolo_vector)
class(bv_1)
class(bv_2)
class(bv_3)

# -----------------4. Loops and functions basics -------------------------------------------------

# for Loops
for (i in seq(1, 5)) {
  cat("iteracion nr.", i, "\n")
}

# while
i <- 1
while (i <= 5) {
  cat("iteracion nr.", i, "\n")
  i <- i + 1
}

# repeat
i <- 0
repeat {
  i <- i + 1
  cat("iteracion nr.", i, "\n")
  if (i >= 5) break
}

# Functions
mi_funcion <- function() {
  print("hola")
}

mi_funcion <- function(name) {
  cat("hola", name)
}

mi_funcion <- function(name = "REU's") {
  cat("hola", name)
}

mi_funcion <- function(name = "Georgia") {
  resultado <- paste("hola", nombre)
  return(resultado)
}

environment_function <- function(x){
  y <- 5
  print(x + y)
}


#------4.1 Loop over a dataset:
#Let's say that you want to get the mean of the columns:


mean_per_year <- vector("numeric", ncol(data))
for(i in seq_along(data)){
  mean_per_year[[i]] <- mean(data[[i]])
}




# -----------------5. Tidy Data -------------------------------------------------

tidy_bmi_data <- gather(data = data, key = year, bmi, - Country)

no_tidy_bmi_data <- spread(data = tidy_bmi_data, key = year, value = bmi)

paste_columns_data <- unite(data = tidy_bmi_data, col = unite_column,
                            year, bmi, sep = "/")

separate_columns_data <- separate(data = paste_columns_data, col = unite_column,
                                  into = c("bmi", "year"), sep = "/")

# With a real dataset:
fotos <- read.csv("raw_data/Camara_3.csv")

fotos_sep <- separate(fotos, col = DateAndTime, into = c("Date", "Time"),
                      sep = " ")

