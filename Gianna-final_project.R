# Gianna Final Project Analysis Script

# Load data
data <- read.csv("data.csv")

# Create complete-case dataset
data_complete <- data[complete.cases(data), ]

# Descriptive statistics
table(data_complete$gender)
table(data_complete$theme)

# Cross-tab (main relationship)
gender_theme <- table(data_complete$gender, data_complete$theme)
gender_theme

# Chi-square test
chisq.test(gender_theme)

# Check assumptions (expected counts)
chisq.test(gender_theme)$expected

# Optional: Barplot
barplot(gender_theme,
        beside = TRUE,
        legend = TRUE,
        main = "Gender by Song Theme",
        xlab = "Theme",
        ylab = "Count")
