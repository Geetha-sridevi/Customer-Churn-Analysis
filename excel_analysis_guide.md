# Excel Guide — Basic Level

1. Open the CSV in Excel.
2. Select the data and use **Ctrl+T** to format it as a table.
3. Insert a PivotTable.
4. PivotTable A: Rows = `Churn`; Values = `CustomerID` (Count).
5. PivotTable B: Rows = `Contract`; Columns = `Churn`; Values = `CustomerID` (Count).
6. Insert a column chart from PivotTable B.
7. Optional churn-rate formula if Churn is in column M and records are in rows 2–31:
   `=COUNTIF(M2:M31,"Yes")/COUNTA(M2:M31)`
   Format the cell as Percentage.
8. Compare the Excel counts with SQL results and note any differences.

The 30-row dataset is synthetic. Results are for practice only.
