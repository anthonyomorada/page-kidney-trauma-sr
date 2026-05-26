# Analysis Protocol

The primary reproducible analysis file is `data-analysis.Rmd`.

Run from the repository root:

```r
rmarkdown::render("protocols/data-analysis.Rmd")
```

Inputs:

- `data/trauma-page-kidney-table.csv`

Outputs:

- `protocols/data-analysis.html`
- `protocols/data-analysis.pdf`
- `data/tpk-table.csv`
- `data/table1.csv`
- `page_kidney_table.docx` locally, ignored by git

Required R packages are listed in the root `README.md`. The rendered HTML and PDF reports are tracked so readers can inspect the current analysis without installing R.
