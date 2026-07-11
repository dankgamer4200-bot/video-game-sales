data<-read.csv("C:/Users/dankg/OneDrive/Documents/vgsales.csv")
install.packages("ggplot2")
install.packages("dplyr")


#-------------------------------
# Graph 1: Video Game Releases Over Time
#-------------------------------

library(ggplot2)
library(dplyr)

games_year <- data %>%
  filter(!is.na(Year), Year != "N/A") %>%
  mutate(Year = as.numeric(as.character(Year))) %>%
  group_by(Year) %>%
  summarise(Games = n(), .groups = "drop")

ggplot(games_year, aes(x = Year, y = Games)) +
  
  geom_line(
    color = "#0072B2",
    linewidth = 1.4
  ) +
  
  geom_point(
    color = "#D55E00",
    size = 3
  ) +
  
  scale_x_continuous(
    breaks = seq(1980, 2020, by = 2)
  ) +
  
  labs(
    title = "Video Game Releases Over Time",
    subtitle = "Annual number of video games released between 1980 and 2020",
    x = "Release Year",
    y = "Number of Games",
    caption = "Source: Video Game Sales Dataset"
  ) +
  
  theme_minimal(base_size = 13) +
  
  theme(
    
    plot.title = element_text(
      face = "bold",
      size = 18,
      hjust = 0.5
    ),
    
    plot.subtitle = element_text(
      size = 12,
      color = "gray40",
      hjust = 0.5
    ),
    
    axis.title = element_text(
      face = "bold",
      size = 14
    ),
    
    axis.text = element_text(
      size = 11
    ),
    
    plot.caption = element_text(
      face = "italic",
      color = "gray50"
    ),
    
    panel.grid.minor = element_blank()
    
  )