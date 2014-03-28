︠49713481-ca7c-4e6b-9109-4ed678dd0875a︠
%auto
%default_mode r
︡6afcf8ec-b209-4c98-9e58-4b4f63405773︡{"auto":true}︡
︠1ecb1621-f70d-417b-8d65-009a4e719051︠
packs <- c("knitr", "ggplot2", "XML", "reshape2", "rCharts")

lapply(packs, require, character.only = T)
︡b8bc23c8-b629-4875-8fb3-20ac1544649b︡{"stdout":"Loading required package: knitr\nLoading required package: ggplot2\nNeed help? Try the ggplot2 mailing list: http://groups.google.com/group/ggplot2.\nLoading required package: XML\nLoading required package: reshape2\nLoading required package: rCharts\n[[1]]\n[1] TRUE\n\n[[2]]\n[1] TRUE\n\n[[3]]\n[1] TRUE\n\n[[4]]\n[1] TRUE\n\n[[5]]\n[1] FALSE\n\nWarning message:\nIn library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :\n  there is no package called ‘rCharts’"}︡
︠f39ac46c-9e6d-4395-9532-857673fb7813︠
packs
︡1cc650ea-46cb-4a3f-a98c-aa0f67e8f825︡{"stdout":"[1] \"knitr\"    \"ggplot2\"  \"XML\"      \"reshape2\" \"rCharts\""}︡
︠1f4ef7d1-51f6-48de-b677-88cc442ea02c︠
olympics <-
function(theurl = "http://www.sochi2014.com/en/medal-standings", include.zero = FALSE) {

    invisible(lapply(c('ggplot2', 'XML', 'reshape2') , require, character.only=TRUE))

    ## Grab Data, Clean and Reshape
    raw <- readHTMLTable(theurl, header=FALSE,
        colClasses = c(rep("factor", 2), rep("numeric", 4)))
    raw <- as.data.frame(raw)[, -1]
    colnames(raw) <- c("Country", "Bronze", "Silver", "Gold", "Total")
    raw <- raw[order(raw[, "Total"]), ]
    if (!include.zero) {
        raw <- raw[raw[, "Total"] != 0, ]
    }
    raw[, "Country"] <- factor(raw[, "Country"], levels = raw[, "Country"])
    rownames(raw) <- NULL
    mdat <- melt(raw, value.name = "Count", variable.name = "Place", id.var = "Country")
    print(mdat)
    ## Plot the Data
    plot1 <- ggplot(mdat, aes(x = Count, y = Country, colour = Place)) +
      geom_point() +
      facet_grid(.~Place) + theme_bw()+
      scale_colour_manual(values=c("#CC6600", "#999999", "#FFCC33", "#000000"))
    print(plot1)

    return(invisible(raw))
}
︡f5e04f8d-e15d-4a33-9084-b619efe8c894︡
︠e72703d4-eb5c-48dd-8c78-7df81611dd03︠
x <- olympics()
︡4b1be7e0-19f0-48e7-8782-7f4325a21332︡{"stdout":"Error: could not find function \"olympics\""}︡
︠921a418e-721b-47f2-bc0a-5a58306a6c90︠
dTable(x)$show('inline', include_assets = TRUE, cdn = TRUE)
︡04d2583d-9196-4b42-b41a-02706dde14ab︡{"stdout":"Error: could not find function \"dTable\""}︡
︠6487ab8f-4e2a-4f55-8622-0fef431f5349︠

include.zero
︡36a59136-5bf3-44de-b7ab-f92a893abe63︡{"stdout":"Error: object 'include.zero' not found"}︡
︠d233cf1d-c82e-4415-989b-369cc8341058︠









