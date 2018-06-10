

# R workshop OTS TropBio_2018
# Impartido por: Ronny Hdez-mora.
# Contacto: ronny.hernandezm@gmail.com
# Twitter: @RonnyHdezM
# Github: ronnyhdez
 
# -----------------1. Start session-----------------------------------------------

# Load your libraries:
library(tidyr)
library(dplyr)
library(ggplot2)

# Read your data:
#vuelos <- read.csv("raw_data/vuelos.csv")


# -----------------2. dplyr verbs -----------------------------------------------
# Call data from nycflights13 package

flights <- nycflights13::flights

#------2.1 Information about the data set:
 
?flights

# What if you want just the flights from january?
filter(flights, month == 1)

# What if you want the flights just from january and february?
filter(flights, month == 1 | month == 2)

# Select just one column from the data:
select(flights, month)

# Select all columns except minute
select(flights, -minute)

# arrange all rows in a descending way
arrange(flights, desc(dep_delay))

arrange(flights, dep_delay)

#------2.2 Summaries with summarize():

# Pipe %>% 

# Get the mean of arrival delays by month of all flights

flights %>% 
  group_by(month) %>% 
  summarise(
    mean = mean(arr_delay)
  )

# What is happening?

any(is.na(flights$arr_delay))

# If you want to avoid NA:

flights %>% 
  group_by(month) %>% 
  summarise(
    mean = mean(arr_delay, na.rm = TRUE)
  )

# Count how many flights arrived early throughout the year per carrier:

flights %>% 
  filter(arr_delay < 0) %>% 
  group_by(carrier) %>% 
  summarise(
    total = n()
  )

# 
#------2.3 Make a new column with mutate():

flights %>% 
  mutate(
    speed = distance / air_time
  )

# If you need to keep the new result, save it in a object:

flights_speed <- flights %>% 
  mutate(
    speed = distance / air_time
  )

# If you want to keep just the new variable:

flights_speed <- flights %>% 
  transmute(
    speed = distance / air_time
  )

