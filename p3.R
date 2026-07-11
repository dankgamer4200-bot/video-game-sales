install.packages("plotly")

#------------------------------------------
# Graph 3: North America vs Europe Sales
#------------------------------------------

library(ggplot2)
library(plotly)

p <- ggplot(
  data,
  aes(
    x = NA_Sales,
    y = EU_Sales,
    text = paste(
      "<b>", Name, "</b>",
      "<br><b>Platform:</b> ", Platform,
      "<br><b>Genre:</b> ", Genre,
      "<br><b>NA Sales:</b> ", NA_Sales, " M",
      "<br><b>EU Sales:</b> ", EU_Sales, " M",
      "<br><b>Global Sales:</b> ", Global_Sales, " M"
    )
  )
) +
  
#------------------------------------------
# Graph 3: North America vs Europe Sales
#------------------------------------------
  geom_point(
    color = "#6A3D9A",
    alpha = 0.55,
    size = 2.5
  ) +
  
  coord_cartesian(
    xlim = c(0,10),
    ylim = c(0,10)
  ) +
  
  labs(
    title = "North America vs Europe Video Game Sales",
    subtitle = "Comparison of regional sales for video games",
    x = "North America Sales (Millions)",
    y = "Europe Sales (Millions)",
    caption = "Source: Video Game Sales Dataset"
  ) +
  
  theme_minimal(base_size = 13) +
  
  theme(
    plot.title = element_text(face="bold", size=18, hjust=0.5),
    plot.subtitle = element_text(size=12, color="gray40", hjust=0.5),
    axis.title = element_text(face="bold", size=14),
    axis.text = element_text(size=11),
    plot.caption = element_text(face="italic", color="gray50"),
    panel.grid.minor = element_blank()
  )

ggplotly(
  p,
  tooltip = "text"
)