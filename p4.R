#------------------------------------------
# Graph 4: Genre vs Platform Heatmap
#------------------------------------------

library(ggplot2)
library(dplyr)

heat_data <- data %>%
  group_by(Genre, Platform) %>%
  summarise(
    Number_of_Games = n(),
    .groups = "drop"
  )

ggplot(
  heat_data,
  aes(
    x = Platform,
    y = Genre,
    fill = Number_of_Games
  )
) +
  
  geom_tile(
    color = "white",
    linewidth = 0.4
  ) +
  
  geom_text(
    aes(label = Number_of_Games),
    size = 3,
    color = "black"
  ) +
  
  scale_fill_gradient(
    low = "#E3F2FD",
    high = "#1565C0",
    name = "Games"
  ) +
  
  labs(
    title = "Distribution of Video Game Genres Across Platforms",
    subtitle = "Each cell represents the number of games released for a genre on a platform",
    x = "Platform",
    y = "Genre",
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
    
    axis.text.x = element_text(
      angle = 45,
      hjust = 1,
      size = 10
    ),
    
    axis.text.y = element_text(
      size = 10
    ),
    
    plot.caption = element_text(
      face = "italic",
      color = "gray50"
    ),
    
    panel.grid = element_blank()
    
  )
