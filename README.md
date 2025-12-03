# Gianna-Final
I am comparing Artist Gender and Lyrical theme to see if there is a corrlation based on the "Top 200 Songs from the 2010s"

##  Project Overview  
This repository contains all materials for a replication/analysis project investigating whether there is a relationship between an artist’s gender and the lyrical theme of their song among the top popular songs of the 2010s.  

##  Research Question  
**Does artist gender correlate with the lyrical theme of their song for the “Top 200 Songs from the 2010s”?**  

## Repository Structure  Data & Operationalization  

### Dataset  
- The dataset consists of 200 songs from 2010–2019 drawn from established “Top 200 Songs of the 2010s” lists.  
- Each row corresponds to one song.  

### Variables used  

| Variable | Name (in data) | Type | Categories / Coding | Description |
|----------|----------------|------|----------------------|-------------|
| Artist gender | `gender` | Categorical | `Woman`, `Man`, `Mix/Band` | Gender of the lead artist, or “Mix/Band” if group / mixed gender / band. |
| Lyrical theme | `theme` | Categorical | `Love`, `Identity`, `Party`, `Wealth`, `Mixed/General` | Dominant lyrical theme assigned via content analysis of lyrics / track descriptions. |

### Data Cleaning Steps  
1. Load raw data into R.  
2. Filter out any rows with missing values via `data_complete <- data %>% filter(complete.cases(.))`.  
3. Recode missing or ambiguous gender/theme values to valid categories if possible; otherwise exclude.  
4. Convert `gender` and `theme` into factor variables ensuring exact spelling matches.  
5. Ensure all categorical levels correspond to the codebook exactly (no extra whitespace, capitalization mismatches, etc.).  
6. Output cleaned dataset to `Data/data.csv`.  

## 📊 Analysis Script  

The `analysis.R` file performs the following:  
- Imports `Data/data.csv`.  
- Computes descriptive statistics (counts / proportions) for each gender category and each theme category.  
- Builds a contingency table (gender × theme).  
- Performs a chi-square test of independence:  

```r
chisq.test(table(data_complete$gender, data_complete$theme))
