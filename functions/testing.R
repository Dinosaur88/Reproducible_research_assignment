
#Function that subsets data for just culmen length/flipper length and filters for each species
spp_subset_data <- function(penguins_clean, species_name){
  penguins_clean %>%
    filter(species == species_name) %>%
  select(species, culmen_length_mm, flipper_length_mm)
}
  


