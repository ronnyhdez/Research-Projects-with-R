

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

# -----------------2. Start session-----------------------------------------------
# We are going to use the fuel economy dataset:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = cyl))

# We need to make cyl a factor
mpg$cyl <- as.factor(mpg$cyl)

# Repeat the graph
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = cyl))

# We can use size instead of color:
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl))

# Sometimes is useful to use some transparency to visualize the data points:
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = cyl, alpha = 0.5))

# Or shapes
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = cyl))

#------2.2 Facets:

# With categorical variables we can make suplots:

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)


#------2.3 Geometric objects:
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv))

# Bar plots

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

#------2.4 Position adjustments:

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

# identity position
ggplot(
  data = diamonds,
  mapping = aes(x = cut, fill = clarity)) +
  geom_bar(alpha = 0.2, position = "identity")

  
ggplot(
  data = diamonds,
  mapping = aes(x = cut, color = clarity)) +
  geom_bar(fill = NA, position = "identity")

# fill position
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "fill"
  )

# dodge position

ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "dodge"
  )

#------2.5 Themes:

ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "dodge"
  ) +
  theme_classic(base_size = 18)





