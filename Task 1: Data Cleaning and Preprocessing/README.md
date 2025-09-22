# 🎬 Data Cleaning and Preprocessing – Netflix Titles Dataset  

This project focuses on **data cleaning and preprocessing** of the Netflix Titles dataset to prepare it for further analysis and visualization.  
The primary goal is to handle **missing values, duplicates, formatting issues, and standardization** so the dataset becomes analysis-ready.  

---

## 📌 Problem Statement  
Raw datasets often contain **inconsistencies, null values, and noise**, making them unfit for direct analysis.  
➡️ In this task, the **Netflix Titles Dataset** is cleaned and standardized to ensure **data quality and reliability** for future analysis.  

---

## ⚙️ Project Workflow  

### 🔹 1. Data Loading  
- Imported the raw dataset (`netflix_titles.csv`) into **Pandas**.  
- Explored shape, structure, and column information.  

### 🔹 2. Data Cleaning Steps  
- **Removed duplicates** to avoid redundancy.  
- **Handled missing values** by dropping or imputing.  
- **Standardized categorical values** (e.g., country, date formats).  
- **Formatted text data** (trimming extra spaces, correcting inconsistencies).  
- **Converted data types** (dates to `datetime`, numeric conversion).  

### 🔹 3. Feature Engineering  
- Extracted **Year, Month** from `date_added`.  
- Separated **multiple countries/genres** into structured formats.  
- Created additional cleaned files (`cleaned_netflix_titles.xls`).  

---

## 📂 Repository Structure  
📁 Task 1: Data Cleaning and Preprocessing

│── Jupyter file.ipynb # Notebook with all cleaning steps

│── README.md # Project documentation

│── Summary.pdf # PDF summary of findings & steps

│── netflix_titles.csv # Original dataset

│── cleaned_netflix_titles.xls # Cleaned dataset (final output)


