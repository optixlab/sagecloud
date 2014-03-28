︠d5f16698-2d3f-4ff5-b65d-4d7f3dd82d09︠
%md
# Computing for Data Analytics
︡05f82a22-78e5-4daf-9caa-f14e7f8a1b75︡{"html":"<h1>Computing for Data Analytics</h1>\n"}︡
︠eab19c7c-d80f-4099-8f45-0dfe44141347a︠
%auto
%default_mode r
︡6e14b6a0-9bee-4a55-ba63-acebf43d8acb︡{"auto":true}︡
︠f95b6d7e-4a70-4228-956e-971a271ccc66︠
f <- gl(3,10)
f
︡e70dc5e4-f1dd-4520-b1ed-15b5074ed306︡{"stdout":"\n [1] 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3\nLevels: 1 2 3"}︡{"stdout":"\n"}︡
︠df906be8-239e-4088-a030-bc75726cfd7e︠
x <- c(rnorm(10), runif(10), rnorm(10,1))
x
f
tapply(x, f, mean, simplify=F)
︡7db35a12-06b9-4e99-a4ca-1ce6aaaab8e9︡{"stdout":"\n [1] -0.05462931  2.49122056 -1.39265208 -0.45528014  0.19557737 -0.09924892 -0.23697084  0.18485274\n [9]  0.05954897  0.55631536  0.46567550  0.06347312  0.45209066  0.43348540  0.76722550  0.08178472\n[17]  0.93727375  0.92109839  0.30570349  0.27928817  0.94903880  0.24406193  0.27427421  0.29110632\n[25]  1.18022541 -0.55291240  1.38106817  3.92766808  1.65642316 -0.07506467\n [1] 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3\nLevels: 1 2 3\n$`1`\n[1] 0.1248734\n\n$`2`\n[1] 0.4707099\n\n$`3`\n[1] 0.9275889\n\n"}︡
︠fce7536f-ead1-4a79-8951-556ac144d9b7︠
boys = rnorm(45, 68, 3)
girls = rnorm(55, 64, 2)
rep('B', 45)
︡706455f9-e3de-4cdd-a28b-97d2b8d0612e︡{"stdout":"\n\n [1] \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\"\n[25] \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\" \"B\"\n"}︡
︠2cf12eaf-5326-4e85-b3e0-bf37fc3d2676︠
x <- data.frame(height=c(boys, girls), sex=c(rep("Male", 45), rep("Female", 55)))
x$sex[60:100] <- "Female"
︡a28f2145-d042-4e4d-837a-66ddfd8d0c4f︡{"stdout":"\n\n"}︡
︠48a4beed-c34d-4757-ba5b-0e9692ba0a12︠
#str(x)
xmean <- tapply(x$height, x$sex, mean)
xsd <- tapply(x$height, x$sex, sd)
︡657d4286-fa14-4139-a34b-0db13d11e7c2︡{"stdout":"\n\n\n"}︡
︠95681fd5-9522-40e6-89a9-df29aa7c22c5︠
merge(xmean, xsd)
︡34ced208-9f86-44b0-aaea-b4f865dcf5be︡{"stdout":"         x        y\n1 63.95904 1.864619\n2 67.69522 1.864619\n3 63.95904 3.007144\n4 67.69522 3.007144\n"}︡
︠1e9a3e89-c7ac-483f-9e5f-20400e7c0d7f︠
xmean
︡d10e03ec-e597-48b3-a63f-2b74e36034e4︡{"stdout":"  Female     Male \n63.95904 67.69522 \n"}︡
︠b6e292cc-9b9e-42ee-8e87-e9bf44e7c276︠
xsd
︡fe8a2f4a-9a2c-4bf9-b395-72f822eb8bfe︡{"stdout":"  Female     Male \n1.864619 3.007144 \n"}︡
︠2f2fc013-26a4-4fe1-9fa2-bc8badfd791f︠
authors <- data.frame(
         surname = I(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
         nationality = c("US", "Australia", "US", "UK", "Australia"),
         deceased = c("yes", rep("no", 4)))
     books <- data.frame(
         name = I(c("Tukey", "Venables", "Tierney",
                  "Ripley", "Ripley", "McNeil", "R Core")),
         title = c("Exploratory Data Analysis",
                   "Modern Applied Statistics ...",
                   "LISP-STAT",
                   "Spatial Statistics", "Stochastic Simulation",
                   "Interactive Data Analysis",
                   "An Introduction to R"),
         other.author = c(NA, "Ripley", NA, NA, NA, NA,
                          "Venables & Smith"))

     (m1 <- merge(authors, books, by.x = "surname", by.y = "name"))
     (m2 <- merge(books, authors, by.x = "name", by.y = "surname"))
     stopifnot(as.character(m1[, 1]) == as.character(m2[, 1]),
               all.equal(m1[, -1], m2[, -1][ names(m1)[-1] ]),
               dim(merge(m1, m2, by = integer(0))) == c(36, 10))

     ## "R core" is missing from authors and appears only here :
     merge(authors, books, by.x = "surname", by.y = "name", all = TRUE)

     ## example of using 'incomparables'
     x <- data.frame(k1 = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5), data = 1:5)
     y <- data.frame(k1 = c(NA,2,NA,4,5), k2 = c(NA,NA,3,4,5), data = 1:5)
     merge(x, y, by = c("k1","k2")) # NA's match
     merge(x, y, by = c("k1","k2"), incomparables = NA)
     merge(x, y, by = "k1") # NA's match, so 6 rows
     merge(x, y, by = "k2", incomparables = NA) # 2 rows
︡5645b325-37f2-4396-8b6a-64086d1e358e︡{"stdout":"\n"}︡
︠538d0419-1770-4a02-b588-5aabfb92108d︠
authors
︡4dcc940f-2d88-40a3-acd9-342a1018586a︡{"stdout":"   surname nationality deceased\n1    Tukey          US      yes\n2 Venables   Australia       no\n3  Tierney          US       no\n4   Ripley          UK       no\n5   McNeil   Australia       no\n"}︡
︠8bfa50f6-0a79-4d68-8f87-8ad23fe9639f︠
books
︡6a7b3610-3951-458c-b002-37023a747ef7︡{"stdout":"      name                         title     other.author\n1    Tukey     Exploratory Data Analysis             <NA>\n2 Venables Modern Applied Statistics ...           Ripley\n3  Tierney                     LISP-STAT             <NA>\n4   Ripley            Spatial Statistics             <NA>\n5   Ripley         Stochastic Simulation             <NA>\n6   McNeil     Interactive Data Analysis             <NA>\n7   R Core          An Introduction to R Venables & Smith\n"}︡
︠cfc143c2-cdff-4837-bcaa-df322e5290d3︠
m1
︡07723ad1-a731-4bd6-929b-3ecf6bb57722︡{"stdout":"   surname nationality deceased                         title other.author\n1   McNeil   Australia       no     Interactive Data Analysis         <NA>\n2   Ripley          UK       no            Spatial Statistics         <NA>\n3   Ripley          UK       no         Stochastic Simulation         <NA>\n4  Tierney          US       no                     LISP-STAT         <NA>\n5    Tukey          US      yes     Exploratory Data Analysis         <NA>\n6 Venables   Australia       no Modern Applied Statistics ...       Ripley\n"}︡
︠720dac43-cda1-40b2-a46e-06127e5b2690︠
merge(xmean, xsd, by.x = 'Female', by.y = 'Female')
︡d97eaf21-1118-43fd-9934-23a63c3fca25︡{"stdout":"Error in fix.by(by.x, x) : 'by' must specify uniquely valid column(s)\n"}︡
︠6db3f128-3117-4aa8-b08b-08eaa696b6c3︠
xmean
︡0625803b-f332-4ea5-9ac0-c4e826a5311f︡{"stdout":"  Female     Male \n63.95904 67.69522 \n"}︡
︠31f67efd-6529-4238-887d-88a3b8120405︠
xsd
︡8a1437d2-423a-4c1b-8086-b5f4779ccb86︡{"stdout":"  Female     Male \n1.864619 3.007144 \n"}︡
︠61053ebe-e9be-412a-bb5f-7dbbbe8b62e2︠

x
︡6d860674-5dd7-40e2-b1a1-7b9a848210f4︡{"stdout":"  k1 k2 data\n1 NA  1    1\n2 NA NA    2\n3  3 NA    3\n4  4  4    4\n5  5  5    5\n"}︡
︠790c76ac-b76d-4520-b394-dbfe9b8b3fa4︠
y
︡b05a3e1b-be45-43f4-8bd7-f1aca0080702︡{"stdout":"  k1 k2 data\n1 NA NA    1\n2  2 NA    2\n3 NA  3    3\n4  4  4    4\n5  5  5    5\n"}︡
︠03c75509-58d6-43dc-9d59-8166d2ab7f78︠
merge(x, y, by = c("k1","k2")) # NA's match
merge(x, y, by = c("k1","k2"), incomparables = NA)
merge(x, y, by = "k1") # NA's match, so 6 rows
#merge(x, y, by = "k2", incomparables = NA) # 2 rows
︡6d0c255e-9d35-41c8-98e8-84339fef4c41︡{"stdout":"  k1 k2 data.x data.y\n1  4  4      4      4\n2  5  5      5      5\n3 NA NA      2      1\n  k1 k2 data.x data.y\n1  4  4      4      4\n2  5  5      5      5\n3 NA NA      2      1\n  k1 k2.x data.x k2.y data.y\n1  4    4      4    4      4\n2  5    5      5    5      5\n3 NA    1      1   NA      1\n4 NA    1      1    3      3\n5 NA   NA      2   NA      1\n6 NA   NA      2    3      3\n\n"}︡
︠27289118-b3ae-43b6-82f5-7641283ef502i︠
%md
# Plotting Strata survey
︡52956633-a62d-4910-9e0a-a1119038c4a8︡{"html":"<h1>Plotting Strata survey</h1>\n"}︡
︠5f187cfe-4625-452e-936a-776658987d8b︠
library(ggplot2)
library(reshape2)
data.science.tools <- as.data.frame(cbind(c('All Respondents', 'SQL', 'R', 'Python', 'Excel', 'Hadoop', 'Java', 'Netw
ork/Graph', 'JavaScript', 'Tableau', 'D3', 'Mahout', 'Ruby', 'SAS/SPSS'), c(57,42,33,26,25,23,17,16,7,15,8,7,5,9), c(
43,29,10,15,11,12,17,4,13,4,5,6,6,2)))
names(data.science.tools)=c('DataTool', 'Data', 'NonData')
data.science.tools
data.science.tools.df <- melt(data.science.tools, c('DataTool'), variable.name='Role', value.name='Respondents')
data.science.tools.df
︡e4f0f175-1ea8-4d62-aee4-a80fdd98351c︡{"stdout":"DataTool Data NonData\n1  All Respondents   57      43\n2              SQL   42      29\n3                R   33      10\n4           Python   26      15\n5            Excel   25      11\n6           Hadoop   23      12\n7             Java   17      17\n8  Netw\\nork/Graph   16       4\n9       JavaScript    7      13\n10         Tableau   15       4\n11              D3    8       5\n12          Mahout    7       6\n13            Ruby    5       6\n14        SAS/SPSS    9       2\n\n          DataTool    Role Respondents\n1  All Respondents    Data          57\n2              SQL    Data          42\n3                R    Data          33\n4           Python    Data          26\n5            Excel    Data          25\n6           Hadoop    Data          23\n7             Java    Data          17\n8  Netw\\nork/Graph    Data          16\n9       JavaScript    Data           7\n10         Tableau    Data          15\n11              D3    Data           8\n12          Mahout    Data           7\n13            Ruby    Data           5\n14        SAS/SPSS    Data           9\n15 All Respondents NonData          43\n16             SQL NonData          29\n17               R NonData          10\n18          Python NonData          15\n19           Excel NonData          11\n20          Hadoop NonData          12\n21            Java NonData          17\n22 Netw\\nork/Graph NonData           4\n23      JavaScript NonData          13\n24         Tableau NonData           4\n25              D3 NonData           5\n26          Mahout NonData           6\n27            Ruby NonData           6\n28        SAS/SPSS NonData           2"}︡
︠7d704ed5-e441-4910-8db2-2198ce6e2836︠
ggplot(data = data.science.tools.df[data.science.tools.df$Role=='NonData',], aes(x = reorder(DataTool, Respondents, function(x) max(x)), y = Respondents)) + geom_bar(stat='identity') + coord_flip() + theme(axis.title.y = element_blank())
︡ff89e1ca-6d9f-4b4a-bf74-af96417fb1b2︡{"stdout":"\n"}︡{"once":false,"file":{"show":true,"uuid":"0ea520cb-5ef4-4a8e-9ae6-51bc4775901d","filename":"/tmp/8aaae71c-6ab2-4deb-96f7-da88e397a624.png"}}︡{"stdout":"\n"}︡
︠e2ff3028-2335-4de2-ac7d-24d33da58a10︠









