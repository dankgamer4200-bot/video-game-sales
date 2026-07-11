# video-game-sales

# 🎮 Video Game Sales Data Visualization in R

A data visualization project developed in **R** to analyze a video game sales dataset using multiple visualization techniques.

The project demonstrates how different chart types can be used to identify trends, compare categories, and explore relationships within a real-world dataset.

---

## 📌 Project Overview

This project analyzes the **Video Game Sales Dataset**, which contains information about approximately **16,500 video games**, including:

- Game Name
- Platform
- Release Year
- Genre
- Publisher
- Regional Sales (North America, Europe, Japan, Other)
- Global Sales

Using **ggplot2**, **dplyr**, and **Plotly**, five different visualizations were created to gain insights from the data.

---

## 📊 Visualizations

### 1. Video Game Releases Over Time
- Line Chart
- Shows how the number of video game releases changed over the years.

### 2. Global Sales by Genre
- Horizontal Bar Chart
- Compares total worldwide sales across different game genres.

### 3. North America vs Europe Sales
- Interactive Scatter Plot (Plotly)
- Examines the relationship between regional sales.

### 4. Genre vs Platform Heatmap
- Heatmap
- Displays the number of games released for each Genre–Platform combination.

### 5. Top Publishers by Global Sales
- Horizontal Bar Chart
- Ranks the top ten publishers based on cumulative global game sales.

---

## 🛠 Technologies Used

- R
- ggplot2
- dplyr
- Plotly

---

## 📂 Dataset

**Dataset:** Video Game Sales Dataset (vgsales.csv)

The dataset contains approximately **16,500 records** with sales information across multiple regions and gaming platforms.

---

## 🚀 How to Run

1. Clone this repository.
2. Open the R script in RStudio.
3. Install the required packages:

```r
install.packages(c("ggplot2", "dplyr", "plotly"))
```

4. Load the dataset.
5. Run the script to generate the visualizations.

---

## 📈 Learning Outcomes

This project demonstrates:

- Data cleaning using `dplyr`
- Data aggregation using `group_by()` and `summarise()`
- Data visualization using `ggplot2`
- Interactive visualizations using `Plotly`
- Choosing appropriate chart types for different kinds of data

---

## 📄 License

This project is intended for educational purposes.
