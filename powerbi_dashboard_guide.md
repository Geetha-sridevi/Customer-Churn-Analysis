# Power BI Dashboard Guide — Beginner

## Load data
1. Open Power BI Desktop.
2. Select Get data > Text/CSV.
3. Choose `data/customer_churn_sample.csv` and click Load.

## Add visuals
1. **Churn status:** Pie chart; Legend = `Churn`; Values = `CustomerID` (Count).
2. **Customers by contract:** Clustered column chart; X-axis = `Contract`; Y-axis = `CustomerID` (Count); Legend = `Churn` if desired.
3. **Average monthly charges:** Column chart; X-axis = `Churn`; Y-axis = `MonthlyCharges` (Average).
4. **Average tenure:** Column chart; X-axis = `Churn`; Y-axis = `TenureMonths` (Average).
5. Add a slicer for `InternetService` or `PaymentMethod`.
6. Add page title: **Customer Churn Analysis**.

## Validate
- Compare counts with SQL and Excel.
- Select slicer values and confirm visuals update.
- Do not describe patterns as proof of cause.
- The sample contains 30 synthetic rows and is not suitable for real business decisions.
