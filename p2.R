



#------------------------------------------
# Graph 2: Top 10 Genres by Global Sales
#------------------------------------------

library(ggplot2)
library(dplyr)

genre_sales <- data %>%
  group_by(Genre) %>%
  summarise(
    Total_Sales = sum(Global_Sales, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  arrange(desc(Total_Sales))

ggplot(
  genre_sales,
  aes(
    x = reorder(Genre, Total_Sales),
    y = Total_Sales
  )
) +
  
  geom_col(
    fill = "#009E73",
    width = 0.7
  ) +
  
  coord_flip() +
  
  geom_text(
    aes(label = round(Total_Sales, 1)),
    hjust = -0.15,
    size = 3.8
  ) +
  
  labs(
    title = "Top Video Game Genres by Global Sales",
    subtitle = "Total worldwide sales (in millions of copies) grouped by genre",
    x = "Genre",
    y = "Global Sales (Millions)",
    caption = "Source: Video Game Sales Dataset"
  ) +
  
  expand_limits(y = max(genre_sales$Total_Sales) * 1.08) +
  
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