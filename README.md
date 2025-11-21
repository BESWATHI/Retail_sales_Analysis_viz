# Retail Orders Data Analysis Project

A comprehensive data analysis project that processes retail orders data, performs data cleaning and transformation, stores it in MySQL, and performs advanced SQL analytics. The project includes data visualization using Tableau.

## 📋 Project Overview

This project analyzes retail orders data to extract business insights including:
- Top-selling products by region
- Month-over-month sales growth comparison
- Category-wise sales performance
- Sub-category profit growth analysis

## 🗂️ Project Structure

```
sqlpythonda/
├── README.md                      # Project documentation
├── orders.csv                     # Raw retail orders dataset
├── orders data analysis.ipynb     # Jupyter notebook with data processing
├── datanalysisproject.sql         # SQL queries for data analysis
├── df_orders_tableau.csv          # Processed data for Tableau visualization
└── Dashboard.png                  # Tableau dashboard visualization
```

## 📊 Dataset

The dataset is downloaded from Kaggle: [Retail Orders Dataset](https://www.kaggle.com/datasets/ankitbansal06/retail-orders)

**Dataset Features:**
- Order information (ID, Date, Ship Mode)
- Customer segments (Consumer, Corporate, Home Office)
- Geographic data (Country, City, State, Region)
- Product details (Category, Sub-Category, Product ID)
- Pricing data (Cost Price, List Price, Discount Percent, Quantity)

## 🛠️ Technologies Used

- **Python**: Data processing and manipulation
- **Pandas**: Data cleaning and transformation
- **MySQL**: Database storage and querying
- **SQL**: Advanced analytics and reporting
- **Tableau**: Data visualization

## 📦 Dependencies

Install the required packages:

```bash
pip install pandas
pip install pymysql
pip install sqlalchemy
pip install kaggle
```

## 🚀 Getting Started

### Prerequisites

1. Python 3.x installed
2. MySQL server running locally
3. Kaggle API credentials (for downloading dataset)

### Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd sqlpythonda
   ```

2. **Set up Kaggle API:**
   - Create a Kaggle account and download your API credentials
   - Place `kaggle.json` in `~/.kaggle/` directory
   - Set proper permissions: `chmod 600 ~/.kaggle/kaggle.json`

3. **Set up MySQL Database:**
   - Create a database named `mydatabaseretail`
   - Update database credentials in the notebook if needed:
     - Host: `127.0.0.1`
     - Port: `3306`
     - User: `root`
     - Password: `Localhost3306` (update as per your setup)
     - Database: `mydatabaseretail`

4. **Run the Jupyter Notebook:**
   ```bash
   jupyter notebook "orders data analysis.ipynb"
   ```

## 📝 Data Processing Steps

The notebook performs the following data transformations:

1. **Data Download**: Downloads the retail orders dataset from Kaggle
2. **Data Loading**: Reads the CSV file into a pandas DataFrame
3. **Null Value Handling**: Replaces 'Not Available' and 'unknown' values with NaN
4. **Column Standardization**: 
   - Converts column names to lowercase
   - Replaces spaces with underscores
5. **Feature Engineering**:
   - Calculates `discount` = list_price × discount_percent × 0.01
   - Calculates `sale_price` = list_price - discount
   - Calculates `profit` = sale_price - cost_price
6. **Data Type Conversion**: Converts `order_date` from string to datetime format
7. **Database Storage**: Loads processed data into MySQL table `df_orders`
8. **Export**: Exports cleaned data to CSV for Tableau visualization

## 🔍 SQL Analysis Queries

The `datanalysisproject.sql` file contains four main analytical queries:

### 1. Top 5 Highest Selling Products by Region
Identifies the top 5 products with highest sales in each region using window functions.

### 2. Month-over-Month Growth Comparison (2022 vs 2023)
Compares sales performance month-by-month between 2022 and 2023.

### 3. Highest Sales Month by Category
Finds the month with highest sales for each product category.

### 4. Sub-Category with Highest Profit Growth (2023 vs 2022)
Identifies the sub-category with the highest profit growth comparing 2023 to 2022.

## 📈 Visualization

The project includes a Tableau dashboard that visualizes:
- Sales trends over time
- Regional performance
- Category and sub-category analysis
- Profitability metrics

**Interactive Dashboard:** [View Retail Sales Dashboard on Tableau Public](https://public.tableau.com/app/profile/swathi.baba.eswarappa/viz/Retail_Sales_Dashboard_17637021960890/Retail_sales_Dashboard)

A static screenshot of the dashboard is also available as `Dashboard.png` in the project directory.

The processed data file `df_orders_tableau.csv` is ready for import into Tableau.

## 📊 Key Insights

The analysis provides insights into:
- Regional sales performance
- Seasonal trends and year-over-year growth
- Product category performance
- Profitability by sub-category

## 🔧 Configuration

Update the following in the notebook if needed:
- MySQL connection credentials
- Database name
- File paths

## 📄 License

The dataset used in this project is licensed under CC0-1.0 (Public Domain).

## 👤 Author

Data Analysis Project - Retail Orders Analysis

## 🤝 Contributing

Feel free to fork this project and submit pull requests for any improvements.

## 📝 Notes

- Ensure MySQL server is running before executing database operations
- The dataset contains 9,994 records
- All monetary values are in the dataset's original currency units

