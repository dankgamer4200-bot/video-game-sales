#------------------------------------------
# Graph 5: Top 10 Publishers by Global Sales
#------------------------------------------

library(ggplot2)
library(dplyr)

publisher_sales <- data %>%
  group_by(Publisher) %>%
  summarise(
    Total_Sales = sum(Global_Sales, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  arrange(desc(Total_Sales)) %>%
  slice_head(n = 10)

ggplot(
  publisher_sales,
  aes(
    x = reorder(Publisher, Total_Sales),
    y = Total_Sales
  )
) +
  
  geom_col(
    fill = "#E67E22",
    width = 0.7
  ) +
  
  coord_flip() +
  
  geom_text(
    aes(label = round(Total_Sales, 1)),
    hjust = -0.15,
    size = 3.8
  ) +
  
  scale_y_continuous(
    expand = expansion(mult = c(0, 0.08))
  ) +
  
  labs(
    title = "Top 10 Video Game Publishers by Global Sales",
    subtitle = "Publishers ranked by total worldwide game sales",
    x = "Publisher",
    y = "Global Sales (Millions)",
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