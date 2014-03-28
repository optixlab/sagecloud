︠987e3d02-10bd-4fee-9d65-5d6541d7da0ea︠
%auto
%default_mode r
︡0bac876d-6630-4de3-b851-57034ee49804︡{"auto":true}︡
︠5f31c661-e879-4b97-a8fb-bfc1926dab77︠
setwd('~/kaggle')
dir()
︡4b63f4fd-b001-4854-b426-8b3754ae0471︡{"stdout":"[1] \"notes.md\"  \"test.csv\"  \"train.csv\""}︡
︠eec79af8-d48d-4e4d-9d8f-db88b1c47f09︠
trainData <- read.csv('train.csv', header = TRUE, stringsAsFactors = FALSE)
testData <- read.csv('test.csv', header = TRUE, stringsAsFactors = FALSE)
︡4355d62b-011e-48bd-8757-a0da90dea017︡
︠d29193a0-8443-401d-8603-3e9caa63d7c3︠
str(trainData)
names(trainData)
head(trainData)
︡76e9b5e2-2318-4821-bb72-000dd89c578d︡{"stdout":"'data.frame':\t891 obs. of  12 variables:\n $ PassengerId: int  1 2 3 4 5 6 7 8 9 10 ...\n $ Survived   : int  0 1 1 1 0 0 0 0 1 1 ...\n $ Pclass     : int  3 1 3 1 3 3 1 3 3 2 ...\n $ Name       : chr  \"Braund, Mr. Owen Harris\" \"Cumings, Mrs. John Bradley (Florence Briggs Thayer)\" \"Heikkinen, Miss. Laina\" \"Futrelle, Mrs. Jacques Heath (Lily May Peel)\" ...\n $ Sex        : chr  \"male\" \"female\" \"female\" \"female\" ...\n $ Age        : num  22 38 26 35 35 NA 54 2 27 14 ...\n $ SibSp      : int  1 1 0 1 0 0 0 3 0 1 ...\n $ Parch      : int  0 0 0 0 0 0 0 1 2 0 ...\n $ Ticket     : chr  \"A/5 21171\" \"PC 17599\" \"STON/O2. 3101282\" \"113803\" ...\n $ Fare       : num  7.25 71.28 7.92 53.1 8.05 ...\n $ Cabin      : chr  \"\" \"C85\" \"\" \"C123\" ...\n $ Embarked   : chr  \"S\" \"C\" \"S\" \"S\" ...\n [1] \"PassengerId\" \"Survived\"    \"Pclass\"      \"Name\"        \"Sex\"         \"Age\"        \n [7] \"SibSp\"       \"Parch\"       \"Ticket\"      \"Fare\"        \"Cabin\"       \"Embarked\"   \n  PassengerId Survived Pclass                                                Name    Sex Age SibSp\n1           1        0      3                             Braund, Mr. Owen Harris   male  22     1\n2           2        1      1 Cumings, Mrs. John Bradley (Florence Briggs Thayer) female  38     1\n3           3        1      3                              Heikkinen, Miss. Laina female  26     0\n4           4        1      1        Futrelle, Mrs. Jacques Heath (Lily May Peel) female  35     1\n5           5        0      3                            Allen, Mr. William Henry   male  35     0\n6           6        0      3                                    Moran, Mr. James   male  NA     0\n  Parch           Ticket    Fare Cabin Embarked\n1     0        A/5 21171  7.2500              S\n2     0         PC 17599 71.2833   C85        C\n3     0 STON/O2. 3101282  7.9250              S\n4     0           113803 53.1000  C123        S\n5     0           373450  8.0500              S\n6     0           330877  8.4583              Q"}︡
︠c84d5a30-ad7f-42fc-9fca-b3fdf97d80be︠
plot(density(trainData$Fare, na.rm = TRUE))
︡f84544ed-f503-4322-ba6c-f729be91e773︡{"stdout":"\n"}︡{"once":false,"file":{"show":true,"uuid":"0c4aaf3d-7db5-4c67-81a1-f9ebfb6e8b0b","filename":"/tmp/7e0e3582-a5d4-4756-aac7-684bc39ee3fe.png"}}︡{"stdout":"\n"}︡
︠22b88fc9-ec4f-4e70-ab4d-99a44ebc4cb9︠
counts <- table(trainData$Survived, trainData$Sex)
barplot(counts, xlab = "Gender", ylab = "Number of People", main = "Survived and deceased between mail & female")
counts
counts[2] / (counts[1] + counts[2])
counts[4] / (counts[3] + counts[4])
︡818ebbcf-d4ab-4712-a3c0-bd13248b8596︡{"stdout":"\n"}︡{"once":false,"file":{"show":true,"uuid":"abe59bef-3d32-49b3-a65b-d676ea292d6f","filename":"/tmp/f72df7f3-4864-4bde-8762-1b5a51fd14b5.png"}}︡{"stdout":"\n"}︡{"stdout":"female male\n  0     81  468\n  1    233  109\n[1] 0.7420382\n[1] 0.1889081"}︡
︠a92ca415-6bad-4cd1-9b8e-644c06ee277d︠
Pclass_survival <- table(trainData$Survived, trainData$Pclass)
barplot(Pclass_survival, xlab = "Class", ylab = "Number of People", main = "Survived and deceased across Passenger class")
Pclass_survival
Pclass_survival[2] / (Pclass_survival[1] + Pclass_survival[2])
Pclass_survival[4] / (Pclass_survival[3] + Pclass_survival[4])
Pclass_survival[6] / (Pclass_survival[5] + Pclass_survival[6])

︡7f71c990-87c7-4942-814a-d77d807fe77f︡{"stdout":"\n"}︡{"once":false,"file":{"show":true,"uuid":"cd351eb6-831c-4448-b3f7-70d301aea153","filename":"/tmp/a823e972-bd59-4530-9769-3e3348b3de31.png"}}︡{"stdout":"\n"}︡{"stdout":"1   2   3\n  0  80  97 372\n  1 136  87 119\n[1] 0.6296296\n[1] 0.4728261\n[1] 0.2423625"}︡
︠cae70f40-d983-4332-b075-5250aac7f74a︠
as.data.frame(names(trainData))
︡df02d8ff-966e-42a7-84fe-70cd44981715︡{"stdout":"names(trainData)\n1       PassengerId\n2          Survived\n3            Pclass\n4              Name\n5               Sex\n6               Age\n7             SibSp\n8             Parch\n9            Ticket\n10             Fare\n11            Cabin\n12         Embarked"}︡
︠6b319976-d071-4209-8bda-f5a75f8b88d2︠
trainData <- trainData[-c(1,9:12)]
︡d884f026-a75a-4526-9590-adf53e561bb1︡
︠00c12144-84d6-40e0-af58-406058939675︠
trainData$Sex <- gsub("female", 1, trainData$Sex)
trainData$Sex <- gsub("male", 0, trainData$Sex)
︡fa7ce991-ca6a-452e-a4a8-d2a20b82a7b4︡
︠70f01ba0-6a49-4e7c-ab7a-bee72ebe1d22︠
as.data.frame(names(trainData))
︡4a3e1132-c3f4-4143-a453-40fcad169e1a︡{"stdout":"names(trainData)\n1         Survived\n2           Pclass\n3             Name\n4              Sex\n5              Age\n6            SibSp\n7            Parch"}︡
︠edcb022f-df66-4abd-a254-cdfe0cf617f9︠
head(trainData)
︡47d1f78e-6928-466f-8c17-8a25dd093a3c︡{"stdout":"Survived Pclass                                                Name Sex Age SibSp Parch\n1        0      3                             Braund, Mr. Owen Harris   0  22     1     0\n2        1      1 Cumings, Mrs. John Bradley (Florence Briggs Thayer)   1  38     1     0\n3        1      3                              Heikkinen, Miss. Laina   1  26     0     0\n4        1      1        Futrelle, Mrs. Jacques Heath (Lily May Peel)   1  35     1     0\n5        0      3                            Allen, Mr. William Henry   0  35     0     0\n6        0      3                                    Moran, Mr. James   0  NA     0     0"}︡
︠ada20f2f-fce6-4545-b29f-a0b477aae872︠
dim(trainData)
︡58b799e4-f267-4ec0-b079-3f017a99b199︡{"stdout":"[1] 891   7"}︡
︠e7e5cf21-3e7e-4823-b3b6-0c4264eb9483︠
str(trainData)
︡7258f481-ba25-46b3-9a22-ac4d8c13d5a4︡{"stdout":"'data.frame':\t891 obs. of  7 variables:\n $ Survived: int  0 1 1 1 0 0 0 0 1 1 ...\n $ Pclass  : int  3 1 3 1 3 3 1 3 3 2 ...\n $ Name    : chr  \"Braund, Mr. Owen Harris\" \"Cumings, Mrs. John Bradley (Florence Briggs Thayer)\" \"Heikkinen, Miss. Laina\" \"Futrelle, Mrs. Jacques Heath (Lily May Peel)\" ...\n $ Sex     : chr  \"0\" \"1\" \"1\" \"1\" ...\n $ Age     : num  22 38 26 35 35 NA 54 2 27 14 ...\n $ SibSp   : int  1 1 0 1 0 0 0 3 0 1 ...\n $ Parch   : int  0 0 0 0 0 0 0 1 2 0 ..."}︡
︠0ae2ece5-e2a4-4e26-81ae-0540d632ed17︠
sum(is.na(trainData$Age))
︡00d3663b-241a-4f4c-8fb1-1b688828acb7︡{"stdout":"[1] 177"}︡
︠0bf26851-5bf3-428c-bf87-4ea20462ab28︠
names.na <- trainData$Name[is.na(trainData$Age)]
︡fee04f1c-0228-473a-a0c9-c20c903826f0︡
︠e723b217-9179-4163-a236-89ba9c8632a2︠
length(names.na)
︡ee66839d-5952-45c1-adac-cf830ecc851d︡{"stdout":"[1] 177"}︡
︠b9a91cd7-d1bc-495d-8606-a9a18125627a︠
head(names.na)
︡5225aa24-1ffe-4070-8b07-b01b3e961326︡{"stdout":"[1] \"Moran, Mr. James\"                \"Williams, Mr. Charles Eugene\"   \n[3] \"Masselmani, Mrs. Fatima\"         \"Emir, Mr. Farred Chehab\"        \n[5] \"O'Dwyer, Miss. Ellen \\\"Nellie\\\"\" \"Todoroff, Mr. Lalio\""}︡
︠12c6bbd0-0f6e-427c-9f6c-4323b0f92cb1︠
mr <- grep(", Mr\\.", names.na)
miss <- grep(", Miss\\.", names.na)
mrs <- grep(", Mrs\\.", names.na)
master <- grep(", Master\\.", names.na)
doctor <- grep(", Dr\\.", names.na)
︡47fea281-ac69-4d51-aa24-d60653405936︡
︠54e1fafd-7d70-4728-bfe5-6ff02b2652fe︠
head(mr)
︡937be735-e1bd-4b0b-b226-088cdfbf376f︡{"stdout":"[1]  1  2  4  6  9 10"}︡
︠9461d964-df70-44cf-a5d4-423d751d2f06︠
names.na[miss]
︡7ef6ff1a-6d47-401c-82f3-8b5feaa99556︡{"stdout":"[1] \"O'Dwyer, Miss. Ellen \\\"Nellie\\\"\"            \"Glynn, Miss. Mary Agatha\"                  \n [3] \"O'Driscoll, Miss. Bridget\"                  \"McDermott, Miss. Brigdet Delia\"            \n [5] \"Moran, Miss. Bertha\"                        \"Peter, Miss. Anna\"                         \n [7] \"Sage, Miss. Constance Gladys\"               \"Madigan, Miss. Margaret \\\"Maggie\\\"\"        \n [9] \"Lefebre, Miss. Mathilde\"                    \"Harknett, Miss. Alice Phoebe\"              \n[11] \"Zabour, Miss. Thamine\"                      \"Murphy, Miss. Katherine \\\"Kate\\\"\"          \n[13] \"Henry, Miss. Delia\"                         \"Healy, Miss. Hanora \\\"Nora\\\"\"              \n[15] \"Kelly, Miss. Anna Katherine \\\"Annie Kate\\\"\" \"Keane, Miss. Nora A\"                       \n[17] \"Fleming, Miss. Margaret\"                    \"McCoy, Miss. Agnes\"                        \n[19] \"McGovern, Miss. Mary\"                       \"Mockler, Miss. Helen Mary \\\"Ellie\\\"\"       \n[21] \"Jermyn, Miss. Annie\"                        \"Lefebre, Miss. Ida\"                        \n[23] \"Lefebre, Miss. Jeannie\"                     \"O'Sullivan, Miss. Bridget Mary\"            \n[25] \"Meanwell, Miss. (Marion Ogden)\"             \"Kelly, Miss. Mary\"                         \n[27] \"Bourke, Miss. Mary\"                         \"Leitch, Miss. Jessie Wills\"                \n[29] \"Murphy, Miss. Margaret Jane\"                \"O'Leary, Miss. Hanora \\\"Norah\\\"\"           \n[31] \"Peters, Miss. Katie\"                        \"Mullens, Miss. Katherine \\\"Katie\\\"\"        \n[33] \"Mannion, Miss. Margareth\"                   \"Sage, Miss. Stella Anna\"                   \n[35] \"Sage, Miss. Dorothy Edith \\\"Dolly\\\"\"        \"Johnston, Miss. Catherine Helen \\\"Carrie\\\"\""}︡
︠8018b0e1-5c9e-47c9-a88d-ef8a3a0d17f6︠
length(c(master, miss, mr, mrs, doctor))
︡5494888e-1ca8-4920-b8c2-2d00ec707425︡{"stdout":"[1] 177"}︡
︠b800c0ec-8a48-4171-a3d1-22021947ce26︠
names.na[-c(master, miss, mr, mrs, doctor)]
︡538b2b03-a7af-4fe3-96ad-ff0845dc0b14︡{"stdout":"character(0)"}︡
︠edc0eaf3-6ad7-41ca-8cb3-3fe4382b3893︠
names.na <- trainData$Names
mr <- grep(", Mr\\.", names.na)
miss <- grep(", Miss\\.", names.na)
mrs <- grep(", Mrs\\.", names.na)
master <- grep(", Master\\.", names.na)
doctor <- grep(", Dr\\.", names.na)
︡30edfe5e-c27e-4c3c-b880-a7e24bb69c04︡
︠5329eaa9-820d-4642-961a-fd3d275df5fdi︠
%md
### R-bloggers:
︡f2b3bb96-ad1a-4e08-8035-86e89f2fc7a5︡{"html":"<h3>R-bloggers:</h3>\n"}︡
︠653d133b-ce9a-46a3-bdca-086825d23f32︠
install.packages("forecast")
library(forecast)
x <- WWWusage
h <- 20
f <- frequency(x)
# Reverse time
revx <- ts(rev(x), frequency=f)
# Forecast
fc <- forecast(auto.arima(revx), h)
plot(fc)
# Reverse time again
fc$mean <- ts(rev(fc$mean),end=tsp(x)[1] - 1/f, frequency=f)
fc$upper <- fc$upper[h:1,]
fc$lower <- fc$lower[h:1,]
fc$x <- x
# Plot result
plot(fc, xlim=c(tsp(x)[1]-h/f, tsp(x)[2]))
︡ac8a6180-aa2b-4dc4-8a3e-ef4e7e6548a0︡{"stdout":"Installing package(s) into ‘/projects/436382c0-37ff-499a-82f6-70e7a65838da/R/x86_64-unknown-linux-gnu-library/2.15’\n(as ‘lib’ is unspecified)\nWarning message:\npackage ‘forecast’ is not available (for R version 2.15.2) \nError in library(forecast) : there is no package called ‘forecast’\n\n\n\n\n\n\nError: could not find function \"forecast\"\nError in plot(fc) : object 'fc' not found\n\nError in rev(fc$mean) : object 'fc' not found\nError: object 'fc' not found\nError: object 'fc' not found\nError in fc$x <- x : object 'fc' not found\n\nError in plot(fc, xlim = c(tsp(x)[1] - h/f, tsp(x)[2])) : \n  object 'fc' not found"}︡
︠30a42152-a649-40e8-a0b3-665ad852c5d7︠
library(forecast)
︡02dc7d6c-5aec-4ec6-b5c8-96eaaf44991a︡{"stdout":"Error in library(forecast) : there is no package called ‘forecast’"}︡
︠cc0af873-3dbd-4913-90c7-341ab6b48c5a︠
install.packages("forecast")
︡51348f37-5e26-4065-970b-70287fc997aa︡{"stdout":"Installing package(s) into ‘/projects/436382c0-37ff-499a-82f6-70e7a65838da/R/x86_64-unknown-linux-gnu-library/2.15’\n(as ‘lib’ is unspecified)\nWarning message:\npackage ‘forecast’ is not available (for R version 2.15.2)"}︡
︠b62a136e-6008-4b2d-ac24-1a2a2e9bebcd︠
version
︡af215403-5d3c-4ed5-a58e-e807958a72eb︡{"stdout":"_                            \nplatform       x86_64-unknown-linux-gnu     \narch           x86_64                       \nos             linux-gnu                    \nsystem         x86_64, linux-gnu            \nstatus                                      \nmajor          2                            \nminor          15.2                         \nyear           2012                         \nmonth          10                           \nday            26                           \nsvn rev        61015                        \nlanguage       R                            \nversion.string R version 2.15.2 (2012-10-26)\nnickname       Trick or Treat"}︡
︠31a0d092-209c-45e2-8d57-afc62f8e84f2︠









