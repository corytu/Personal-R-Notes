# Personal-R-Notes
## Getting help
* `?` or `help` gives the documentation of a specific function.
* `??` or `help.search` searches for provided key word (or regex pattern) in the help system.

## Files management
* `setwd` & `getwd`
* `list.files` & `list.dirs`
* `file.exists`, `file.copy`, `file.rename`, `file.remove`
* `download.file`

## Data cleaning and manipulation
* `anyNA`, `complete.cases`, `is.na`, and `na.omit` are useful when finding or excluding NAs.
* `order` can order the data frame with data in its column(s). For example, `airquality[order(airquality$Month),]` and `airquality[order(airquality$Day),]` order that data frame by Month and Day respectively. Multiple argumets in `order` are allowed.
* `transform` transforms columns in a data frame.

## Word processing (including regular expressions)
* [R的字串處理](https://www.ptt.cc/bbs/Statistics/M.1277714037.A.2CC.html)
* `grep`, `grepl`, `regexpr`, `gregexpr` and `regexec` search for matches to argument pattern within each element of a character vector: they differ in the format of and amount of detail in the results.
* `sub` and `gsub` perform replacement of the first and all matches respectively.
* `sprintf` returns a character vector containing a formatted combination of text and variable values.
* `substr` extracts or replaces substrings in a character vector.
* `strsplit` splits the elements of a character vector x into substrings according to the matches to substring split within them.
* `tolower` and `toupper` convert upper-case characters in a character vector to lower-case, or vice versa. Non-alphabetic characters are left unchanged.
* `nchar` takes a character vector as an argument and returns a vector whose elements contain the sizes of the corresponding elements of x.

## Logic
* `xor` indicates elementwise exclusive OR.

## Data visualization
* <a href="http://stackoverflow.com/questions/10357768/plotting-lines-and-the-group-aesthetic-in-ggplot2">Plotting lines and the group aesthetic in ggplot2</a><br>
A good thing to know when using `ggplot2` to plot a line chart where x-axis is a categorical variable.
* [Never use [] or $ inside aes](https://stackoverflow.com/questions/32543340/behavior-ggplot2-aes-in-combination-with-facet-grid-when-passing-variable-wi)<br>
Avoid using column slicing with `[]` or `$` in `ggplot2::aes`.
* <a href="http://stackoverflow.com/questions/34889766/what-is-the-width-argument-in-position-dodge">What is the width argument in position_dodge?</a><br>
Decent explanation and demonstration of mechanisms of `ggplot2::position_dodge`.
* [Share a legend between multiple plots using grid.arrange](https://github.com/tidyverse/ggplot2/wiki/Share-a-legend-between-two-ggplot2-graphs)<br>
Using `grid` to place the plots and the legends in an arbitrary layout. I also modified this function to allow shared axes titles and to specify only ncol or nrow.

* [Heat maps with ggplot2](http://blog.aicry.com/r-heat-maps-with-ggplot2/)<br>
A tutorial for creating heat maps in R, including with base and ggplot2 system.

## Functions for programming
* All arguments after an ellipsis must have default values.
* The arguments can be passed by order or by specified names. When specifying names, they can be either names themselves or characters. For instances, `mean(x = 1:3)` is equivalent to `mean("x" = 1:3)`.
* `return` returns the result of an expression and ignores all the following lines in that function.
* Generating messages for function users:
  * `message` is used for generating a diagnostic message
  * `warning` and `stop` are for generating warnings and fetal errors respectively.
  * `stopifnot`, is "If any of the expressions in `...` are not all TRUE, `stop` is called, producing an error message indicating the first of the elements of `...` which were not true."
* `missing` can be used to test whether a value was specified as an argument to a function. For instance, `test <- function(y = 1) {if (missing(y)) {print(y)}}`.
* `on.exit` records the expression given as its argument as needing to be executed when the current function exits (either naturally or as the result of an error).
* `exist` can test whether the named object exist in the specified environment.
* `readline` reads a line from the terminal (in interactive use).
* `::` to use functions (once) without loading the package For example, calling `reshape2::melt` is equivalent to `library(reshape2)` or `require(reshape2)` before `melt`.

## Functions do loops or parallel operations
* `split` divides the data in the vector x into the groups defined by f.
* `apply`, `sapply`, `lapply`, `tapply`, and `mapply` ("apply" family). See an example of `mapply` [here](mapply_example.R) since it's more complicated.
* `by` is an object-oriented wrapper for `tapply` applied to data frames.
* `Reduce` uses a binary function to successively combine the elements of a given vector and a possibly given initial value.
* `do.call` constructs and executes a function call from a name or a function and a list of arguments to be passed to it.
* `replicate` is a wrapper for the common use of sapply for repeated evaluation of an expression (which will usually involve random number generation).
* `Vectorize` creates a function wrapper that vectorizes the action of its argument FUN.

## Other useful functions
* `class` returns the data type (or to be specific, the method) of one object. Compare this with `mode`.
* `str` compactly displays the internal structure of an R object
* `append` adds elements to a vector.
* `diff` returns suitably lagged and iterated differences, e.g. `diff(1:5)`.
* `call` constructs an unevaluated call.
* `identical` tests two objects for being exactly equal.
* `system.time` returns CPU (and other) times that expr used. Compare this with `Sys.time`.
* `unlist` simplifies it to produce a vector which contains all the atomic components which occur in the given list.
* `unname` removes the names or dimnames attribute of an R object.
* `search` gives a list of attached packages (see library), and R objects, usually data frames.
* `rle` computes the lengths and values of runs of equal values in a vector.
* `sequence` can be regarded as the vectorized version of `seq_len`.<br>
  ```r
  x <- c(rep(1:4, times = 1:4), 1, 1)
  sequence(rle(x)$length)
  # 1 1 2 1 2 3 1 2 3 4 1 2
  ```

## Useful packages (ordered alphabetically)
* [car](https://cran.r-project.org/package=car)<br>
Short for "Companion to Applied Regression". Two of the useful functions are `Anova` and `Manova`, which can calculate type-II or type-III ANOVA and MANOVA respectively.
* [caret](http://topepo.github.io/caret/index.html)<br>
Short for "**C**lassification **A**nd **RE**gression **T**raining". A package integrate multiple machine learning algorithm packages. In addition, it helps data preprocessing and cross-validation with `confusionMatrix`.
* [cowplot](https://cran.r-project.org/web/packages/cowplot/vignettes/introduction.html)<br>
Merging multiple ggplots and labeling them respectively in one graph.
* [dendextend](https://cran.r-project.org/web/packages/dendextend/vignettes/introduction.html)<br>
Extended functions for built-in dendrograms in R.
* [dplyr](https://cran.r-project.org/web/packages/dplyr/vignettes/introduction.html)<br>
Some other ways to manipulate or cleanse data.
* [e1071](https://cran.r-project.org/package=e1071)<br>
LIBSVM package for R.
* [ggmap](https://cran.r-project.org/web/packages/ggmap/index.html)<br>
Spatial visualization with ggplot2.
* [ggplot2](http://ggplot2.org)<br>
A popular plotting system in R.
* [googleVis](https://cran.r-project.org/web/packages/googleVis/vignettes/googleVis_examples.html)<br>
R interface to Google's chart tools, allowing users to create interactive charts based on data frames.
* [gridExtra](https://cran.r-project.org/package=gridExtra)<br>
"Miscellaneous Functions for 'Grid' Graphics." A tutorial can be found <a href="http://www.sthda.com/english/wiki/ggplot2-easy-way-to-mix-multiple-graphs-on-the-same-page-r-software-and-data-visualization">here</a>.
* [leaflet](https://rstudio.github.io/leaflet/)<br>
Useful for adding markers and (interactive) polygons on the map.
* [magrittr](https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html)<br>
The "pipe-like" operator `%>%` allows people to transmit a value or object to an expression or function call.
* [MICE](https://cran.r-project.org/web/packages/mice/index.html)<br>
Short for "Multivariate Imputation by Chained Equations". Tutorials of means, including but not limit to MICE, to deal with missing data can be found in [this webpage](http://rpubs.com/skydome20/R-Note10-Missing_Value) (in Mandarin). Check also [my understanding to MICE](mice.md) and [Tutorial on 5 Powerful R Packages used for imputing missing values](https://www.analyticsvidhya.com/blog/2016/03/tutorial-powerful-packages-imputing-missing-values/).
* [MCMCglmm](https://cran.r-project.org/package=MCMCglmm)<br>
A package for fitting Bayesian mixed models in R. More introduction and tutorial <a href="https://github.com/tmalsburg/MCMCglmm-intro">here</a>.
* [plotly](https://plot.ly/r/)<br>
A powerful package to build interactive plots. Its `plot_ly` function creates various types of plots, and `ggplotly` turns most of `ggplot2` objects interactive.
* [rattle](http://rattle.togaware.com)<br>
Wonderful GUI for machine learning analyses. The author emphasizes its capability of creating logs when users click the GUI, and exporting them as a shortcut for further argument tuning. Programming is still encouraged.
* [reshape2](https://cran.r-project.org/package=reshape2)<br>
`melt` the data into a long-format or `cast` it into a wide-format. An example is provided <a href="https://corytu.github.io/R_Language_Playground/reshape2_melt.html">here</a>.
* [shiny](https://shiny.rstudio.com/)<br>
Building interactive interface and present data to others even they don't know R. Its tutorial is very worth reading.

## Stack Overflow
### Answered
* [Could not fetch elements from a list in R as one element contains multiple elements](http://stackoverflow.com/questions/44096790/could-not-fetch-elements-from-a-list-in-r-as-one-element-contains-multiple-elem)
* [Export R plot to multiple formats](https://stackoverflow.com/questions/48132169/export-r-plot-to-multiple-formats/)
* [Extracting values from nested lists](http://stackoverflow.com/questions/42771789/extracting-values-from-nested-lists/)
* [ggplot: How to change facet labels?](http://stackoverflow.com/questions/3472980/ggplot-how-to-change-facet-labels/)
* [How to assign colnames for multiple dataframes from their first row in R environment](http://stackoverflow.com/questions/44014184/how-to-assign-colnames-for-multiple-dataframes-from-their-first-row-in-r-environ/)
* [Testing whether two vectors are increasing or decreasing in R](http://stackoverflow.com/questions/44015452/testing-whether-two-vectors-are-increasing-or-decreasing-in-r/)

### Asked
* [R returns factor(0) when predicting with a SVM model](http://stackoverflow.com/questions/44003391/r-returns-factor0-when-predicting-with-a-svm-model)
* [Using R to extract indices of a matching letter from a string](http://stackoverflow.com/questions/40927854/using-r-to-extract-indices-of-a-matching-letter-from-a-string)
