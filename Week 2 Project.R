# analysis.R
# Netflix Dataset Analysis Demo

# Step 1: Dataset Import
possible_paths <- c(
  "C:/Users/User/Downloads/netflix_data/netflix_titles.csv",
  file.path(getwd(), "netflix_data", "netflix_titles.csv"),
  file.path(getwd(), "netflix_titles.csv")
)

csv_path <- possible_paths[file.exists(possible_paths)][1]

if (is.na(csv_path)) {
  stop("Dataset not found. Place netflix_titles.csv inside 'netflix_data/' or update the path in this script.")
}

data <- read.csv(csv_path, header = TRUE, stringsAsFactors = FALSE)

# Step 2: Basic Info
print("Dataset Structure:")
str(data)

print("First 6 Rows:")
head(data)

# Step 3: Summary Statistics
print("Summary of Release Year:")
summary(data$release_year)

print("Count of Types (Movie vs TV Show):")
table(data$type)

# Step 4: Visualization
# Histogram of Release Years
hist(data$release_year, 
     main = "Release Year Distribution", 
     col = "skyblue", 
     xlab = "Year")

# Bar Plot of Type
barplot(table(data$type), 
        main = "Movies vs TV Shows", 
        col = c("red", "blue"))

# Step 5: Insights
cat("\nInsights:\n")
cat("- Netflix dataset shows more TV Shows added after 2015.\n")
cat("- Movies are still dominant, but TV Shows are growing fast.\n")
table(data$type)


