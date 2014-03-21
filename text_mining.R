# Ref: https://www.youtube.com/watch?v=j1V2McKbkLo
# Text mining, machine learning in R

# init

## Load the libraries you intend to use the function from
libs <- c("tm", "plyr", "class")
lapply(libs, require, character.only = TRUE)

# set options
options(stringsAsFactors = FALSE)

# set parameters
candicates <0 c("romney", "obama")
pathname <- "speeches"

# clean text
cleanCorpus <- function(corpus) {
  corpus.tmp <- tmp_map(corpus, removePunctuation)
  corpus.tmp <- tmp_map(corpus.tmp, stripwhitespace)
  corpus.tmp <- tmp_map(corpus)

}


# build TDM (Trm Document Matrix)

generateTDM <- function(cand, path) {
  s.dir <- sprintf("%s/%s", path, cand)
  s.cor <- corpus(DirSource(directory = s.dir, encoding = "ANSI")
  s.cor.cl <- cleanCorpus(s.cor)
  s.tdm <- TermDocumentMatrix(s.cor.c)

  s.tdm <- removeSparseTerms(s.tdm, 0.7)
  result <- list(name = cand, tdm = s.tdm)
}

tdm <- lapply(candidates, generateTDM, path = pathname)

# attach name

# stack

# hold-out

# model
