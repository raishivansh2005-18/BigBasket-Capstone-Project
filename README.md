# BigBasket Capstone Project

## 1. Project Overview
This project analyzes a dataset for BigBasket, simulating an end-to-end data pipeline. It involves generating a local SQLite database using Python, writing SQL queries to extract and aggregate foundational business metrics, verifying the aggregations in a spreadsheet utilizing XLOOKUP formulas, creating an interactive Tableau dashboard to visualize category performance, and performing independent data cleaning and cross-validation using Python and Pandas.

## 2. File & Folder Structure
* `generate_data.py`: Python script used to generate the mock dataset.
* `bigbasket_capstone.db`: The local SQLite database containing the tables.
* `orders_raw.csv` / `products.csv`: Raw data exports.
* `verify.sql`: Initial verification queries and record counts.
* `01_foundations.sql`: Basic SQL filtering and exploratory queries.
* `02_aggregation_joins.sql`: SQL queries demonstrating INNER and LEFT JOINs.
* `03_reporting.sql`: Complex reporting queries including tiering and variance calculations.
* `monthly_category_revenue.csv`: The clean data export used for spreadsheet and dashboard analysis.
* `Part2_Spreadsheet.xlsx`: Spreadsheet cross-checking SQL outputs via pivot tables and lookup formulas.
* `analysis.ipynb`: Jupyter Notebook detailing Pandas data cleaning, outlier handling (IQR), and analysis.
* `DATA_STORY.md`: Business interpretation and actionable recommendations based on the dashboard.
* `ai_log.md`: Documentation of AI assistance used during the project.
* `README.md`: This project documentation file.

## 3. Database Generation & Data Location
To regenerate the database from scratch, run `python generate_data.py` in your terminal. This will rebuild `bigbasket_capstone.db` and the associated raw CSVs. 
All SQL task queries are located in their respective sequentially numbered `.sql` files (`01_foundations.sql`, `02_aggregation_joins.sql`, `03_reporting.sql`).

## 4. Deliverable Links & Pointers
* **Tableau Public Dashboard:**
* https://public.tableau.com/views/BigBasketDashboard_17886144992350/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
* **Data Story & Recommendations:** See `DATA_STORY.md`
* **Spreadsheet Verification:** See `Spreadsheet.xlsx`
* **Pandas Cleaning & Analysis:** See `analysis.ipynb`
* **AI Prompt Logging:** See `ai_log.md`
