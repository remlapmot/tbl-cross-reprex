install.packages('gt')
remotes::install_github("ddsjoberg/gtsummary@1830-md-fn-update")

qmdfile <- '
---
title: "tbl_cross reprex"
format:
  html:
    embed-resources: true
---

Example 

```{r}
packageVersion("gt")

mtcars[1:3, 1:2] |> 
  gt::gt() |> 
  gt::cols_label(mpg = gt::md(""))
```
'


yaml <- withr::local_tempfile(fileext = ".yml")
write_yaml(list(title = "test"), yaml)

quarto::quarto_render(qmdfile, output_file = 'tbl-cross-reprex-md-gtsummary-devel.html')
