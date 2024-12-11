# Load libraries needed
library(ggplot2)

plot_scatterplot <- function(data,
                             x_column,
                             y_column,
                             x_label,
                             y_label) {
  
  # Remove NA values
  data <- data %>%
    drop_na({{x_column}}, {{y_column}})
  
  # Makes plot
  ggplot(data = data,
         aes(
           x = {{x_column}},
           y = {{y_column}},
           color = species)) +  
    geom_point(
      alpha = 0.7,
      size = 2
    ) +
    labs(
      x = x_label,
      y = y_label) +
    theme_bw() +
    facet_wrap(~ species)
  
}





#flipper_culmen_scatterplot <- ggplot(penguins_clean, aes(x = culmen_length_mm, y = flipper_length_mm, color = species)) +
# geom_point(alpha = 0.4) +
#labs(title = "Scatter plot of culmen length against flipper length for each species",
#    x = "Culmen length (mm)",
#   y = "Flipper length (mm)") +
#theme_bw()

#flipper_culmen_scatterplot
















