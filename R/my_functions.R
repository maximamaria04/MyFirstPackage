#function 1: custom plotting function so I don't have to type themes every time
my_cool_plot <- function(data, x_col, y_col) {
  library(ggplot2)
  # Makes a scatterplot with my favorite colors and a clean theme
  p <- ggplot(data, aes_string(x = x_col, y = y_col)) +
    geom_point(color = "hotpink", size = 3) +
    theme_minimal() +
    labs(title = "My Custom Plotting Function")

  return(p)
}

#function 2: the sorting hat
sorting_hat <- function(student_name) {

  #create a vector of all the Hogwarts houses
  houses <- c("Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff")

  #a few specific characters just to be safe
  if (student_name == "Harry Potter") {
    assigned_house <- "Gryffindor"
  } else if (student_name == "Draco Malfoy") {
    assigned_house <- "Slytherin"
  } else {
    #if it is anyone else, pick a random house
    assigned_house <- sample(houses, size = 1)
  }

  #paste the final announcement together
  announcement <- paste("Ah, right then... The Sorting Hat puts", student_name, "into...", assigned_house, "!")

  #return the text so the user can see it
  return(announcement)
}

