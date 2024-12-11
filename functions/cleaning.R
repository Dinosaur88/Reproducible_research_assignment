#Load raw data
#penguins_raw <- read_csv(here("data", "penguins_raw.csv"), show_col_types = FALSE)

#Function - cleaning up data
cleaning_data <- function(penguins_raw){
  penguins_raw %>%
    clean_names()%>%
    remove_empty(c("rows", "cols")) %>%
    select(-starts_with("delta")) %>%
    select(-comments) %>%
    mutate(species = case_when(
    species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
    species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
    species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
  )) %>%
    na.omit()
}

#Cleans the data using funct
#penguins_clean <- cleaning_data(penguins_raw)

#Saves clean version of the data
#write_csv(penguins_clean, here("data", "penguins_clean.csv"))


#Checks output
#names(penguins_clean)

#--------------------------

# Function 2 - remove NA values

remove_NA <- function(penguins_data) {
  penguins_data %>%
    drop_na()
}


