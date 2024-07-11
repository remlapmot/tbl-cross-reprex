```
> quarto::quarto_render('tbl-cross-reprex.qmd', output_file = 'tbl-cross-reprex-gt-new.html')


processing file: tbl-cross-reprex.qmd
|...................................                 |  67% [unnamed-chunk-1]Error in `vapply()`:
  ! values must be length 1,
but FUN(X[[1]]) result is length 0
Backtrace:
  1. global .main()
27. gt:::knit_print.gt_tbl(.)
29. gt:::as.tags.gt_tbl(x, ...)
31. gt:::render_as_html(data = x)
32. gt:::build_data(data = data, context = "html")
33. gt:::dt_boxhead_build(data = data, context = context)
34. base::lapply(...)
35. gt (local) FUN(X[[i]], ...)
36. gt:::process_text(label, context)
37. base::vapply(...)



Quitting from lines 9-16 [unnamed-chunk-1] (tbl-cross-reprex.qmd)

Execution halted
Error in `quarto::quarto_render()`:
  ✖ Error running quarto cli.
Caused by error:
  ! System command 'quarto' failed
Run `rlang::last_trace()` to see where the error occurred.
```
