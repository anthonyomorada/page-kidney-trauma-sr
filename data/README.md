# Data Files

This folder contains the tabular data needed to audit and rerun the systematic review analysis.

| File | Role |
| --- | --- |
| `trauma-page-kidney-table.csv` | Source extraction table. This is the main audit dataset and includes included/excluded records, screening labels, reviewer initials, and extracted patient-level variables. |
| `tpk-table.csv` | Cleaned included-case table generated from the source table by `protocols/data-analysis.Rmd`. |
| `table1.csv` | Publication-style summary table generated from the source table by `protocols/data-analysis.Rmd`. |
| `trauma-page-kidney-table.xlsx` | Spreadsheet copy of the source extraction table for manual review. |

The source of truth is `trauma-page-kidney-table.csv`. The generated CSVs are retained so readers can inspect the expected analysis outputs without running R first.
