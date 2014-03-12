# Colors
myColors <- function() {
	colorRamp(c("Blue", "Red"))
	y <- colorRamp(c("Blue", "Red"))
	colorRampPalette(c("Blue","Red"))
	y2 <- colorRampPalette(c("Blue","Red"))
	cl <- colors(20)
	length(cl)
	cl[1:10]
	cl[1]
	rgb(2,3,3)
	rgb(.5,.5,0)
}
myGrep <- function() {
	grep("^([a-z]+) +\1 +[a-z]+ [0-9]", "night night at 8")
	grep("^([a-z]+) +\1 +[a-z]+ [0-9]", "bye bye from up high")
	grep("^([a-z]+) +\1 +[a-z]+ [0-9]","bye bye from up high")
	grep("^([a-z]+) +\1 +[a-z]+ [0-9]", "heading, heading by 9")
	grep("^([a-z]+) +\1 +[a-z]+ [0-9]", "night night at 8")
	grep("^([a-z]+) +\1 +[a-z]+ [0-9]", "bye bye from up high")
	grep("^([a-z]+) +\1 +[a-z]+ [0-9]", "heading, heading by 9")
	grep("^([a-z]+) +\1 +[a-z]+ [0-9]", "going up and up and up")
	grep("power", "I have the power")
	grep("power", "I have the power power")
	regexpr("^s(.*?)r", "she likes rum raisin after running hard")
	regexpr("^s(.*)r", "she likes rum raisin after running hard")
	grep("power", c("I have the power power", "this is powder"))
	headline <- c("I have the power", "I have powder")
	grep("power", headline)
}

myColorTerm <- function() {
 download.file("http://www.lepem.ufc.br/jaa/colorout_1.0-2.tar.gz", 
  destfile = "colorout_1.0-2.tar.gz")
 install.packages("colorout_1.0-2.tar.gz", type = "source", repos = NULL)
# Load colorout automatically when we start R. Add to .R profile:
# if (Sys.getenv("TERM") == "xterm-256-color") library("colorout")
# Sys.getenv("TERM")
	library("colorout")
	xx <- rnorm(1000)
	yy <- rnorm(1000)
	tf <- xx > 0
	fc <- factor(as.numeric(tf), levels = 0:1, labels = c("no", "yes"))
	dd <- data.frame(xx, yy, tf, fc)
	cat("Different colors for normal text, \"strings\", numbers (12, 1.3), \n NULL, NA, NaN, Inf, TRUE and FALSE\n")
	args(setOutputColors256)
	head(dd)
	library(KernSmooth)
	show256Colors()
	example.of.error
}

myReshape <- function(){
	library(ggplot2)
	library(reshape2)
	data.science.tools <- as.data.frame(c('All Respondents', 'SQL', 'R', 'Python', 'Excel', 'Hadoop', 'Java', 'Network/Graph', 'JavaScript', 'Tableau', 'D3', 'Mahout', 'Ruby', 'SAS/SPSS'), c(57,42,33,26,25,23,17,16,7,15,8,7,5,9), c(43,29,10,15,11,12,17,4,13,4,5,6,6,2))
	data.science.tools <- as.data.frame(rbind(c('All Respondents', 'SQL', 'R', 'Python', 'Excel', 'Hadoop', 'Java', 'Network/Graph', 'JavaScript', 'Tableau', 'D3', 'Mahout', 'Ruby', 'SAS/SPSS'), c(57,42,33,26,25,23,17,16,7,15,8,7,5,9), c(43,29,10,15,11,12,17,4,13,4,5,6,6,2)))
	data.science.tools
	names(data.science.tools)=c('DataTool', 'Data', 'NonData')
	data.science.tools <- as.data.frame(cbind(c('All Respondents', 'SQL', 'R', 'Python', 'Excel', 'Hadoop', 'Java', 'Network/Graph', 'JavaScript', 'Tableau', 'D3', 'Mahout', 'Ruby', 'SAS/SPSS'), c(57,42,33,26,25,23,17,16,7,15,8,7,5,9), c(43,29,10,15,11,12,17,4,13,4,5,6,6,2)))
	names(data.science.tools)=c('DataTool', 'Data', 'NonData')
	data.science.tools
	data.science.tools.df <- melt(data.science.tools, c('DataTool'), variable.name='Role', value.name='Respondents')
}

myDataframe <- function() {
	survey <- matrix(c(54, 235, 63, 9, 11, 9, 9, 26, 61), 3, 3, 
            byrow = TRUE, dimnames = list(c("more strict", "less strict", 
                                     "kept as they are"), 
                                     c("repub", "dem", "ind")))
  survey <- cbind(survey, rowSums(survey))
  survey <- rbind(survey, colSums(survey))
  colnames(survey)[4] <- "total"
  rownames(survey)[4] <- "total"
  return(survey)
}

myGenome <- function() {
  # http://www.r-bloggers.com/useful-functions-in-r-for-manipulating-text-data/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+RBloggers+%28R+bloggers%29
  first = 'The'
  second = 'Chemical'
  third = 'Statistician'
  my.name = paste(first, second, third, sep = ' ')
  x = 'ATCG'
  y = 'GGACTCTAAATCCGTACTATCGTCATCGTTTTTCCT'
  z = 'CTATCGGGTAGCT'
  # Find out if a nucleotide n is present in a longer length p
  grepl(x, c(y, z))
  # To get position:
  gregexpr(x, c(y, z))
  # To extract position, slice into 2 objects, use [[]]
  pos = gregexpr(x, c(y, z))
  # To extract only a portion of the string
  substr(y, 4, nchar(y))
}
