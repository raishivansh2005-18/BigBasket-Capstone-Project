**Prompt #1:**
*   **Role:** Act as a senior database administrator.
*   **Context:** I have a SQLite database with `orders` and `products` tables.
*   **Task:** Write a query that computes total revenue and orders per category and month.
*   **Constraints:** Only calculate this for orders where `status = 'Delivered'`. Format the month as YYYY-MM using `strftime`. Sort the final output by category, then month.
*   **Format:** Provide only the raw SQL block.

**Verification Step:**
I ran the AI-generated query against `bigbasket_capstone.db` and manually confirmed that the total output row count was exactly 36 and that the sum of the `total_revenue` column equalled 88282.


---

**Prompt #2 (Pandas Cleaning):**
*   **Role:** Act as a data analyst using Pandas.
*   **Context:** I have a messy dataframe called `orders` with a column `amount_inr` that contains extreme outliers.
*   **Task:** Write the exact Pandas code to compute the IQR and upper fence for `amount_inr`, and cap (clip) any values above the upper fence.
*   **Constraints:** Do not drop the rows, only cap them. Calculate this only for rows where `status` is 'Delivered'.
*   **Format:** Provide only the python code snippet.

**Verification Step:**
I ran the AI-suggested `.clip()` logic in my Jupyter Notebook and manually printed the `amount_inr.max()` before and after to verify that the maximum value in the column successfully reduced to match the computed upper fence value.