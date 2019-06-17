# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

midwestt <- function(input=5){
  library(ggplot2)
  library(plotly)
  gg<-ggplot(midwest, aes(x=area, y=poptotal)) + geom_point()
  #return(ggplotly(gg))

  htmlwidgets::saveWidget(widgetframe::frameableWidget(gg),'ggplotly_plot_selfcontained.html', selfcontained = TRUE)
  #rawhtml <- readBin('ggplotly_plot_selfcontained.html', raw(), file.info('ggplotly_plot_selfcontained.html')$size)
  #return(rawhtml)
}
