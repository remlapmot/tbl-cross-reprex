# Previous version of gt
devtools::install_version('gt', '0.10.1', repos = "https://cran.rstudio.com/")
quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-old.html')
rmarkdown::render('tbl-cross-reprex-rmd.Rmd', output_file = 'tbl-cross-reprex-rmd-gt-old.html')
quarto::quarto_render('tbl-cross-reprex-md.qmd', output_file = 'tbl-cross-reprex-md-gt-old.html')

# Current version of gt
install.packages('gt')
reprex::reprex({
  try(quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-new.html'))
})
rmarkdown::render('tbl-cross-reprex-rmd.Rmd', output_file = 'tbl-cross-reprex-rmd-gt-new.html')
try(quarto::quarto_render('tbl-cross-reprex-md.qmd', output_file = 'tbl-cross-reprex-md-gt-new.html'))

# Current gt and pre-release Quarto
quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-new-quarto-pre.html')
quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-new-quarto-pre.docx', output_format = 'docx')
quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-new-quarto-pre.pdf', output_format = 'pdf')

# Development gt and current gtsummary
remotes::install_github("rstudio/gt")
quarto::quarto_render('tbl-cross-reprex-md.qmd', output_file = 'tbl-cross-reprex-md-gt-devel.html')
quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-devel.html')

# Current gt and gtsummary PR
install.packages('gt')
remotes::install_github("ddsjoberg/gtsummary@1830-md-fn-update")
quarto::quarto_render('tbl-cross-reprex-md.qmd', output_file = 'tbl-cross-reprex-md-gtsummary-devel.html')
quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gtsummary-devel.html')
