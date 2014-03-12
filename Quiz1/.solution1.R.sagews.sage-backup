︠d5b005d4-7df9-43df-abdd-350066e3e91a︠
%default_mode r
︡08c83c38-69fb-4552-afb9-85ab1ee15883︡
︠3807c5d0-1e24-4019-8a36-3087d3dcf3d4︠
x <- c(1,2,3)
y <- c(TRUE, 2.1, "two")
z <- rbind(x,y)
︠dcf576f4-a946-4056-ad79-dfae269fa0ae︠
typeof(z)
class(z)
myunique <- function(somevector) {
  (somevector)
}
somevec <- c('3', 'a', 1, 2, 3)
︡82daae65-cae9-47cf-bf6d-9a3354f2dbbf︡{"stdout":"[1] \"character\"\n[1] \"matrix\"\n\n\n\n\n"}︡
︠ade50b35-522c-4d47-a42f-7efbe471fc34︠
x1 = rnorm(100)
x2 = rnorm(100)
x3 = rnorm(100)
x4 = rnorm(100)
m <- matrix(c(1,2,3,3,4,5,6,6),ncol = 2,byrow = TRUE)
layout(m,widths = c(0.5,0.5),heights = c(0.45,0.05,0.45,0.05))
︠ca346550-d657-410c-847e-f3e6c33ddaac︠
par(mar = c(2, 4, 4, 2) + 0.1)
︡26d79ca3-c14c-42a4-b574-66fcfeef5612︡{"stdout":"\n"}︡
︠d23d7240-ab97-41d9-8251-a8bacdf98c36︠
hist(x1, xlab="", main="Group A")
hist(x2, xlab="", main="Group B")

par(mar = c(0,0,0,0))
plot(1,1,type = "n", frame.plot = FALSE, axes = FALSE)
u <- par("usr")
text(1, u[4], labels = "Here is Group A/B label", col = "red", pos = 1)

par(mar = c(2,4,2,2) + 0.1)
hist(x3, xlab="", main="")
hist(x4, xlab="", main="")

par(mar = c(0,0,0,0))
plot(1,1,type = "n",frame.plot = FALSE,axes = FALSE)
u <- par("usr")
text(1,u[4],labels = "Here",col = "red",pos = 1)

m <- matrix(c(1,2,3,3,4,5,6,6),ncol = 2,byrow = TRUE)
layout(m,widths = c(0.5,0.5),heights = c(0.45,0.05,0.45,0.05))

par(mar = c(2,4,4,2) + 0.1)
hist(x1, xlab="", main="Group A")
hist(x2, xlab="", main="Group B")

par(mar = c(0,0,0,0))
plot(1,1,type = "n",frame.plot = FALSE,axes = FALSE)
u <- par("usr")
text(1,u[4],labels = "top side label",col = "red",pos = 1)

par(mar = c(2,4,2,2) + 0.1)
hist(x3, xlab="", main="")
hist(x4, xlab="", main="")

par(mar = c(0,0,0,0))
plot(1,1,type = "n",frame.plot = FALSE,axes = FALSE)
u <- par("usr")
text(1,u[4],labels = "bottom side latel",col = "green",pos = 1)
︡1f546b81-8e95-4f0a-9d3e-c7c494a6193c︡{"once":false,"file":{"show":true,"uuid":"443e0d1d-5c95-4e94-8b31-27bfaf347be9","filename":"/tmp/f27bfaff-0c96-4037-99f3-f0e1a9003659.png"}}︡{"stdout":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}︡{"stdout":"\n"}︡
︠b0dc3eba-9df6-4251-9477-6a72454f899di︠

?par
library(lattice)
︡a21f7369-a680-4157-82dc-c9b9ccc50b6e︡{"stdout":"\n"}︡
︠df14581f-6bd2-4e1f-a5a2-1c3b358e5862︠
attach(mtcars)
︠4bf3cdc6-6db7-4b5b-85a1-ff3597c18a8e︠
# create factors with value labels
gear.f <- factor(gear, levels=c(3,4,5), labels=c("3gears", "4gears", "5gears"))
cyl.f <- factor(cyl, levels=c(4,6,8), labels=c("4cyl", "6cyl", "8cyl"))
︠b3df1e0c-4f1c-4483-a4bc-72bb87a3b6b8︠
# kernel density plot
densityplot(~mpg, main="Density Plot", xlab="Miles per gallon")
︠2678c112-c26f-42ad-90a7-33b8e4fc8544︠
# Kernel density plots by factorlevel (alternate layout)
densityplot(~mpg|cyl.f, main="Density plot by Number of cylinders", xlab="Miles per Gallon", layout=c(1,3))
︠ab4ea739-9309-49c1-a7a7-0753c1beccc1︠
#boxplot for each combination of two factors
hbw<-bwplot(cyl.f~mpg|gear.f,
       ylab="cylinders", xlab="Miles per gallon",
       main="Mileage by Cylinders and Gears")
︠af712ba2-28f0-47d1-a1fa-913577f4e5c5︠

library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)
︠ac23eda2-be76-4dc6-883b-719236e14248︠
plot(0, 0, main = substitute(theta))
︠925fe3a1-6745-463e-901f-873e27d954a7︠
plot(0, 0, main = expression(theta))
set.seed(1)
rpois(5, 2)
︡d00504cd-6de5-4cdc-a85a-96e2b90d04e9︡{"stdout":"\n[1] 1 1 2 4 1\n"}︡
︠ced2967c-dd19-4acd-a2c1-cd5c2accbb01︠
apple<-read.csv('apple.csv', sep=",", header=T, check.names=F,stringsAsFactors=F)
︡e7067d76-8aab-46ee-ae4e-311298501571︡{"stdout":"\n"}︡
︠fafc8a56-3d61-4ee1-8bea-25ea5c400be3︠
summary(apple)
print(apple)
str(apple)
︡d08a2237-1358-4427-828d-4ec1996e49ad︡{"stdout":"     Type               2009               2010               2011               2012          \n Length:5           Length:5           Length:5           Length:5           Length:5          \n Class :character   Class :character   Class :character   Class :character   Class :character  \n Mode  :character   Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n     2013          \n Length:5          \n Class :character  \n Mode  :character  \n                                Type   2009   2010    2011    2012    2013\n1                      Apple Revenue $42.9B $65.2B $108.2B $156.5B $170.9B\n2                     iPhone Revenue $13.0B $25.2B  $46.0B  $78.7B  $91.3B\n3                  iPhone Unit Sales  20.7M  40.0M   72.3M  125.0M  150.3M\n4       iPhone Revenue Per Unit Sold   $628   $630 $636.24  $629.6 $607.45\n5 iPhone Percentage of Apple Revenue  30.3%  38.7%   42.5%   50.3%   53.4%\n'data.frame':\t5 obs. of  6 variables:\n $ Type: chr  \"Apple Revenue\" \"iPhone Revenue\" \"iPhone Unit Sales\" \"iPhone Revenue Per Unit Sold\" ...\n $ 2009: chr  \"$42.9B\" \"$13.0B\" \"20.7M\" \"$628\" ...\n $ 2010: chr  \"$65.2B\" \"$25.2B\" \"40.0M\" \"$630\" ...\n $ 2011: chr  \"$108.2B\" \"$46.0B\" \"72.3M\" \"$636.24\" ...\n $ 2012: chr  \"$156.5B\" \"$78.7B\" \"125.0M\" \"$629.6\" ...\n $ 2013: chr  \"$170.9B\" \"$91.3B\" \"150.3M\" \"$607.45\" ...\n"}︡
︠fb651dc9-bfa9-42c5-97df-ed70d9bb1144︠

︠e95880f6-f3e8-43aa-a9f5-632c73235b37︠
convertCurrency <- function(currency) {
  currency1 <- sub('$','',as.character(currency),fixed=TRUE)
  currency2 <- sub('B','*1e9',as.character(currency1),fixed=TRUE)
  currency3 <- sub('M','*1e6',as.character(currency2),fixed=TRUE)
  currency4 <- eval(parse(text=currency3))
  #currency4 <- as.numeric(gsub('\\,','',as.character(currency3)))
  currency4
}

convertCurrency(apple[2,2:6])
︡63266f57-1480-454a-8d16-88c6b6b580fe︡{"stdout":"\n\n\n\n\n\n\n\n[1] 9.13e+10\n"}︡
︠8c15eb1e-0f11-439c-ad09-ad5aef0c61a3︠
as.numeric("2*1e9")
︡714e988b-c93f-4063-9758-e61bfa0dd2dc︡{"stdout":"[1] NA\nWarning message:\nNAs introduced by coercion \n"}︡
︠82721eb1-70bd-4a8d-b6a2-1bfd0be0f248︠
eval(parse(text="2*1E9"))*4
︡7717fdc5-72e2-4dda-8b22-c14340e667b1︡{"stdout":"[1] 8e+09\n"}︡
︠d0d6a458-16e7-4bf8-87f5-a1755beaca40︠
# scatterplots for each combination of two factors
xyplot(mpg~wt|cyl.f*gear.f,
  	 main="Scatterplots by Cylinders and Gears",
   ylab="Miles per Gallon", xlab="Car Weight")
︡4830e1c2-4a16-4913-97c8-b97408f1880c︡{"once":false,"file":{"show":true,"uuid":"8fe13a81-3ffb-4666-877c-3a2e85a033af","filename":"/tmp/2e7dce26-8f10-41e5-a2f8-241756841742.png"}}︡{"stdout":"\n\n\n"}︡{"stdout":"\n"}︡
︠4c934dbc-1ec5-46b4-82b8-c21cc21bf426︠
options(digits = 3)
library(reshape)

# define and name the stsatistic of interest
stats <- function(x) (c(N = length(x), Mean = mean(x), SD = sd(x)))

# label the levels of classification variables
mtcars$am <- factor(mtcars$am, levels = c(0, 1), labels = c("Automatic", "Manual"))
︡7714a692-678c-4480-9a5c-e155f6070d21︡{"stdout":"\nError in library(reshape) : there is no package called ‘reshape’\n\n\n\n"}︡{"stdout":"\n"}︡
︠9a7f0b07-f3f1-4cff-a151-0fd18a8f40c9︠
attach(mtcars)
︡44fe0b8a-b787-4c8b-a442-d08e81c37202︡{"stdout":"The following object(s) are masked from 'mtcars (position 4)':\n\n    am, carb, cyl, disp, drat, gear, hp, mpg, qsec, vs, wt"}︡{"stdout":"\n"}︡
︠6312d8fe-bf86-482f-8543-6768e29f2d25︠
mtcars
︡555788d0-7906-4f77-bba8-7e2c20d0b45c︡{"stdout":"                     mpg cyl  disp  hp drat   wt qsec vs        am gear carb\nMazda RX4           21.0   6 160.0 110 3.90 2.62 16.5  0    Manual    4    4\nMazda RX4 Wag       21.0   6 160.0 110 3.90 2.88 17.0  0    Manual    4    4\nDatsun 710          22.8   4 108.0  93 3.85 2.32 18.6  1    Manual    4    1\nHornet 4 Drive      21.4   6 258.0 110 3.08 3.21 19.4  1 Automatic    3    1\nHornet Sportabout   18.7   8 360.0 175 3.15 3.44 17.0  0 Automatic    3    2\nValiant             18.1   6 225.0 105 2.76 3.46 20.2  1 Automatic    3    1\nDuster 360          14.3   8 360.0 245 3.21 3.57 15.8  0 Automatic    3    4\nMerc 240D           24.4   4 146.7  62 3.69 3.19 20.0  1 Automatic    4    2\nMerc 230            22.8   4 140.8  95 3.92 3.15 22.9  1 Automatic    4    2\nMerc 280            19.2   6 167.6 123 3.92 3.44 18.3  1 Automatic    4    4\nMerc 280C           17.8   6 167.6 123 3.92 3.44 18.9  1 Automatic    4    4\nMerc 450SE          16.4   8 275.8 180 3.07 4.07 17.4  0 Automatic    3    3\nMerc 450SL          17.3   8 275.8 180 3.07 3.73 17.6  0 Automatic    3    3\nMerc 450SLC         15.2   8 275.8 180 3.07 3.78 18.0  0 Automatic    3    3\nCadillac Fleetwood  10.4   8 472.0 205 2.93 5.25 18.0  0 Automatic    3    4\nLincoln Continental 10.4   8 460.0 215 3.00 5.42 17.8  0 Automatic    3    4\nChrysler Imperial   14.7   8 440.0 230 3.23 5.34 17.4  0 Automatic    3    4\nFiat 128            32.4   4  78.7  66 4.08 2.20 19.5  1    Manual    4    1\nHonda Civic         30.4   4  75.7  52 4.93 1.61 18.5  1    Manual    4    2\nToyota Corolla      33.9   4  71.1  65 4.22 1.83 19.9  1    Manual    4    1\nToyota Corona       21.5   4 120.1  97 3.70 2.46 20.0  1 Automatic    3    1\nDodge Challenger    15.5   8 318.0 150 2.76 3.52 16.9  0 Automatic    3    2\nAMC Javelin         15.2   8 304.0 150 3.15 3.44 17.3  0 Automatic    3    2\nCamaro Z28          13.3   8 350.0 245 3.73 3.84 15.4  0 Automatic    3    4\nPontiac Firebird    19.2   8 400.0 175 3.08 3.85 17.1  0 Automatic    3    2\nFiat X1-9           27.3   4  79.0  66 4.08 1.94 18.9  1    Manual    4    1\nPorsche 914-2       26.0   4 120.3  91 4.43 2.14 16.7  0    Manual    5    2\nLotus Europa        30.4   4  95.1 113 3.77 1.51 16.9  1    Manual    5    2\nFord Pantera L      15.8   8 351.0 264 4.22 3.17 14.5  0    Manual    5    4\nFerrari Dino        19.7   6 145.0 175 3.62 2.77 15.5  0    Manual    5    6\nMaserati Bora       15.0   8 301.0 335 3.54 3.57 14.6  0    Manual    5    8\nVolvo 142E          21.4   4 121.0 109 4.11 2.78 18.6  1    Manual    4    2"}︡{"stdout":"\n"}︡
︠7b713621-5b66-4ab9-a42a-483430180289︠


#--------------------------------------------------------#
# R in Action: Chapter 2                                 #
#--------------------------------------------------------#

#  Creating vectors

a <- c(1, 2, 5, 3, 6, -2, 4)
b <- c("one", "two", "three")
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

# Using vector subscripts

a <- c(1, 2, 5, 3, 6, -2, 4)
a[3]
a[c(1, 3, 5)]
a[2:6]

# Listing 2.1 - Creating Matrices

y <- matrix(1:20, nrow = 5, ncol = 4)
y
cells <- c(1, 26, 24, 68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow = 2, ncol = 2, byrow = TRUE,
    dimnames = list(rnames, cnames))
mymatrix
mymatrix <- matrix(cells, nrow = 2, ncol = 2, byrow = FALSE,
    dimnames = list(rnames, cnames))
mymatrix

# Listing 2.2 - Using matrix subscripts

x <- matrix(1:10, nrow = 2)
x
x[2, ]
x[, 2]
x[1, 4]
x[1, c(4, 5)]

# Listing 2.3 - Creating an array

dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24, c(2, 3, 4), dimnames = list(dim1,
    dim2, dim3))
z

# Listing 2.4 - Creating a dataframe

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes,
    status)
patientdata

# Listing 2.5 - Specifying elements of a dataframe

patientdata[1:2]
patientdata[c("diabetes", "status")]
patientdata$age

# Listing 2.6 - Using factors

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
diabetes <- factor(diabetes)
status <- factor(status, order = TRUE)
patientdata <- data.frame(patientID, age, diabetes,
    status)
str(patientdata)
summary(patientdata)

#  Listing 2.7 - Creating a list

g <- "My First List"
h <- c(25, 26, 18, 39)
j <- matrix(1:10, nrow = 5)
k <- c("one", "two", "three")
mylist <- list(title = g, ages = h, j, k)
mylist
︡f3ddc653-26f5-4cb3-a994-2c69c1aabb13︡{"stdout":"\n"}︡
︠be94c267-8b4a-4df5-b49e-d92d626cd142︠
mylist
︡6a02177a-3d6f-411a-a511-575c45b92f40︡{"stdout":"$title\n[1] \"My First List\"\n\n$ages\n[1] 25 26 18 39\n\n[[3]]\n     [,1] [,2]\n[1,]    1    6\n[2,]    2    7\n[3,]    3    8\n[4,]    4    9\n[5,]    5   10\n\n[[4]]\n[1] \"one\"   \"two\"   \"three\"\n"}︡{"stdout":"\n"}︡
︠7a015d05-27a4-492c-b4cf-aa5e54ea0683︠
mylist$ages
︡18f62735-3c10-4e4a-992a-ac321c67bb0b︡{"stdout":"[1] 25 26 18 39"}︡{"stdout":"\n"}︡
︠60a88140-1cc0-42a8-854d-6c2fa074e7bc︠
patientdata
︡54800715-a65f-431c-959c-57b5287b4d1e︡{"stdout":"  patientID age diabetes    status\n1         1  25    Type1      Poor\n2         2  34    Type2  Improved\n3         3  28    Type1 Excellent\n4         4  52    Type1      Poor"}︡{"stdout":"\n"}︡
︠c920a5c9-433e-4fa7-9508-f8f18d418872︠
str(patientdata)
︡29a418a2-a5af-4462-914a-e8bfa9346990︡{"stdout":"'data.frame':\t4 obs. of  4 variables:\n $ patientID: num  1 2 3 4\n $ age      : num  25 34 28 52\n $ diabetes : Factor w/ 2 levels \"Type1\",\"Type2\": 1 2 1 1\n $ status   : Ord.factor w/ 3 levels \"Excellent\"<\"Improved\"<..: 3 2 1 3"}︡{"stdout":"\n"}︡
︠c709dfff-dde4-4324-817f-ef63975433be︠
summary(patientdata)
︡6f6bce7d-4ee4-44ac-863d-5d6f6b15d0cd︡{"stdout":"   patientID         age        diabetes       status \n Min.   :1.00   Min.   :25.0   Type1:3   Excellent:1  \n 1st Qu.:1.75   1st Qu.:27.2   Type2:1   Improved :1  \n Median :2.50   Median :31.0             Poor     :2  \n Mean   :2.50   Mean   :34.8                          \n 3rd Qu.:3.25   3rd Qu.:38.5                          \n Max.   :4.00   Max.   :52.0                          "}︡{"stdout":"\n"}︡
︠24bf957c-b128-4da8-b0f8-238420356aab︠









