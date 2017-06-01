# Personal-R-Notes
## Data cleaning and manipulation
* Ordering the data frame with data in its column(s)<br>
`order` function can do the trick here. For example, `airquality[order(airquality$Month),]` and `airquality[order(airquality$Day),]` order that data frame by Month and Day respectively. Multiple argumets in `order` are allowed.

## Logic
* `xor` indicates elementwise exclusive OR.

## Data visualization
* <a href="http://stackoverflow.com/questions/10357768/plotting-lines-and-the-group-aesthetic-in-ggplot2">Plotting lines and the group aesthetic in ggplot2</a><br>
A good thing to know when using `ggplot2` to plot a line chart where x-axis is a categorical variable.
* <a href="http://stackoverflow.com/questions/34889766/what-is-the-width-argument-in-position-dodge">What is the width argument in position_dodge?</a><br>
Decent explanation and demonstration of mechanisms of `ggplot2::position_dodge`.
* [Share a legend between multiple plots using grid.arrange](https://github.com/tidyverse/ggplot2/wiki/Share-a-legend-between-two-ggplot2-graphs)<br>
Using `grid` to place the plots and the legends in an arbitrary layout. I also modified this function to allow shared axes titles and to specify only ncol or nrow.

## Knowledge for general R programming
* All arguments after an ellipsis must have default values<br>
For example, `paste (..., sep = " ", collapse = NULL)` in its documentation.
* Generating messages for function users<br>
`message` is used for generating a diagnostic message, while `warning` and `stop` are for generating warnings and fetal errors respectively. `stopifnot`, on the other hand, is "If any of the expressions in `...` are not all TRUE, `stop` is called, producing an error message indicating the first of the elements of `...` which were not true."
* Using functions (once) without loading the package<br>
Specify the package and function separated by `::`. For example, calling `reshape2::melt` is equivalent to `library(reshape2)` or `require(reshape2)` before `melt`.

## "apply" family
`apply`, `sapply`, `lapply`, `tapply`, and `mapply`. Use them wisely.

## Useful functions
* `append` adds elements to a vector.
* `diff` returns suitably lagged and iterated differences, e.g. `diff(1:5)`.
* `Reduce` uses a binary function to successively combine the elements of a given vector and a possibly given initial value.
* `replicate` is a wrapper for the common use of sapply for repeated evaluation of an expression (which will usually involve random number generation).
* `sprintf` returns a character vector containing a formatted combination of text and variable values.
* `unlist` simplifies it to produce a vector which contains all the atomic components which occur in the given list.
* `unname` removes the names or dimnames attribute of an R object.

## Useful packages (ordered alphabetically)
* [car](https://cran.r-project.org/package=car)<br>
Short for "Companion to Applied Regression". Two of the useful functions are `Anova` and `Manova`, which can calculate type-II or type-III ANOVA and MANOVA respectively.
* [caret](http://topepo.github.io/caret/index.html)<br>
Short for "**C**lassification **A**nd **RE**gression **T**raining". A package integrate multiple machine learning algorithm packages. In addition, it helps data preprocessing and cross-validation with `confusionMatrix`.
* [cowplot](https://cran.r-project.org/web/packages/cowplot/vignettes/introduction.html)<br>
Merging multiple ggplots and labeling them respectively in one graph.
* [dplyr](https://cran.r-project.org/web/packages/dplyr/vignettes/introduction.html)<br>
Some other ways to manipulate or cleanse data.
* [e1071](https://cran.r-project.org/package=e1071)<br>
LIBSVM package for R.
* [ggplot2](http://ggplot2.org)<br>
A popular plotting system in R.
* [gridExtra](https://cran.r-project.org/package=gridExtra)<br>
"Miscellaneous Functions for 'Grid' Graphics." A tutorial can be found <a href="http://www.sthda.com/english/wiki/ggplot2-easy-way-to-mix-multiple-graphs-on-the-same-page-r-software-and-data-visualization">here</a>.
* <a href="https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html">magrittr</a><br>
The "pipe-like" operator `%>%` allows people to transmit a value or object to an expression or function call.
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
* [Extracting values from nested lists](http://stackoverflow.com/questions/42771789/extracting-values-from-nested-lists/)
* [ggplot: How to change facet labels?](http://stackoverflow.com/questions/3472980/ggplot-how-to-change-facet-labels/)
* [How to assign colnames for multiple dataframes from their first row in R environment](http://stackoverflow.com/questions/44014184/how-to-assign-colnames-for-multiple-dataframes-from-their-first-row-in-r-environ/)
* [Testing whether two vectors are increasing or decreasing in R](http://stackoverflow.com/questions/44015452/testing-whether-two-vectors-are-increasing-or-decreasing-in-r/)

### Asked
* [R returns factor(0) when predicting with a SVM model](http://stackoverflow.com/questions/44003391/r-returns-factor0-when-predicting-with-a-svm-model)
* [Using R to extract indices of a matching letter from a string](http://stackoverflow.com/questions/40927854/using-r-to-extract-indices-of-a-matching-letter-from-a-string)
