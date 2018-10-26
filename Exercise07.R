rm(list=ls())
setwd("/Users/ta4ha/Documents/Biocomputing/Biocomp-Fall2018-181012-Exercise7")

# Problem 1
# Function that returns the odd (1, 3, 5, etc.) rows of any dataframe
# passed as an argument

iris <- read.csv(file="iris.csv")

Odd_rows <- function(dataframe) {
  alt_rows <- dataframe[seq(1, nrow(dataframe), 2),]
  return(alt_rows)
}

Odd_rows(iris)

# Problem 2
# Number of observations for a given species included in the data set


Num_spec <- function(species) {
  n=species
  species_count <- nrow(subset(iris, iris$Species == n))
  return(species_count)
}

Num_spec("setosa")


# Dataframe for flowers with Sepal.Width greater than a value
# specified by the function user


Min_Sepal_Width <- function(min) {
  sepal_w <- iris[iris$Sepal.Width > min,]
  return(sepal_w)
}

Min_Sepal_Width(3.5)

# Data for a given species written to a comma-delimited file
# with the given species name as the file name

Species_csv <- function(spec) {
  specDF <- subset(iris, iris$Species == spec)
  write.csv(specDF, file = paste0(spec, '.csv'))
}

Species_csv(spec="setosa")