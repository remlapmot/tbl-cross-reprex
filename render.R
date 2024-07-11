# Previous version of gt
devtools::install_version('gt', '0.10.1')
reprex::reprex({
  quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-old.html')
})
rmarkdown::render('tbl-cross-reprex-rmd.Rmd', output_file = 'tbl-cross-reprex-rmd-gt-old.html')

# Current version of gt
devtools::install_version('gt', '0.11.0')
reprex::reprex({
  try(quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-new.html'))
})
rmarkdown::render('tbl-cross-reprex-rmd.Rmd', output_file = 'tbl-cross-reprex-rmd-gt-new.html')
