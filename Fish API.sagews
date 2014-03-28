︠2b4c7fd1-54a0-4f22-8060-f9a5b3881a5fa︠
%auto
%default_mode r
︡035d0c63-4e8f-4e3b-8eb9-496688736630︡{"auto":true}︡
︠b8bb62a0-debc-44ee-8da0-40f4cbf3d06f︠
####################################
# Line and Scatter Plot Demo
# Questions? Email feedback@plot.ly
# For more docs, see plot.ly/api
####################################
library(plotly)

py <- plotly(username='optixlab', key='g3xlq0bs0n')


x <- seq(1500)
y1 <- sin(2*pi*x/1500.) + runif(1500)-0.5
y2 <- sin(2*pi*x/1500.)

fish <- list(
				x = x,
				y = y1,
				type = 'scatter',
				mode = 'markers',
				marker = list(
								color = 'rgb(0, 0, 255)',
								opacity = 0.5
							  )
			)

fit <- list(
				x = x,
				y = y2,
				type = 'scatter',
				mode = 'markers',
				opacity = 0.8,
				marker = list(
								color = 'rgb(255, 0, 0)'
							  )
		   )

layout <- list(
					autosize = FALSE,
					width = 650,
					height = 550,
					title = 'Fish School',
					xaxis = list(
					 				ticks = "",
					 				gridcolor = "white",
					 				zerolinecolor = "white",
									linecolor = "white",
									autorange = FALSE,
									range = c(0,1500)
								),
					yaxis = list(
						 			ticks = "",
						 			gridcolor = "white",
						 			zerolinecolor = "white",
									linecolor = "white",
									autorange = FALSE,
									range = c(-2.2,2.2)
								),
					plot_bgcolor = 'rgb(245,245,247)',
					showlegend = FALSE,
					hovermode = 'closest'
				)


response<-py$plotly(list(fish,fit), kwargs = list(layout=layout))

# url and filename
url <- response$url
filename <- response$filename
︡8f13b5d1-bb3c-413e-b773-60ba1be7a72d︡{"stdout":"\n"}︡
︠d2b5b9e1-4bef-4b32-978f-c00397c181ce︠
library(plotly)
︡052ea83c-14bc-4e6f-9b78-65c566c485b7︡{"stdout":"Error in library(plotly) : there is no package called ‘plotly’\n"}︡
︠a353fdbd-2f35-4b2e-a9fe-577e7a0b0d3er︠
install.packages("plotly")
︡52b08cee-1eb6-41ae-ae6e-3f6d0e893eb1︡
︠e8c7c5cd-8fc5-40ed-938e-aff007d4ad84︠









