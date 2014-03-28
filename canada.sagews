︠6e00bb56-d477-47ae-a126-bd3851e7deaba︠
%auto
%default_mode r

####################################
# Map of Canadian Cities
# Colored inside the web app
# Questions? Email support@plot.ly
# For more docs, see plot.ly/api/R
####################################

#start by loading plotly
library(plotly)

#create your plotly function
p <- plotly(username="your_username", key="your_key")

#Load maps
library(maps)
data(canada.cities)

#Create the hexagone map
trace1 <- list(x=map(regions="canada")$x,
               y=map(regions="canada")$y)

#Create the plotable city data
trace2 <- list(x= canada.cities$long,
               y=canada.cities$lat,
               text=canada.cities$name,
               type="scatter",
               mode="markers",
               marker=list("size"=sqrt(canada.cities$pop/max(canada.cities$pop))*100,
                           "opacity"=0.5))

#Plot the two traces
response = p$plotly(trace1,trace2)

#Access your plot.ly plot
browseURL(response$url)
︡e22d6511-0911-4343-9dc6-a0b91c3383b9︡{"auto":true}︡{"stderr":"Error in lines 9-9\nTraceback (most recent call last):\n  File \"/projects/436382c0-37ff-499a-82f6-70e7a65838da/.sagemathcloud/sage_server.py\", line 680, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nNameError: name 'library' is not defined\n"}︡
︠32332c1e-27c0-4f60-b709-51f9fb1df02e︠









