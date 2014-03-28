︠e4049955-139f-4102-b592-cbbf3b59a3c9i︠
%md
### Type I error reates in test of normality by simulation
#### R-bloggers: 2/27/2014
︡f42d6d3c-c99d-4567-8585-030f37029d44︡{"html":"<h3>Type I error reates in test of normality by simulation</h3>\n\n<h4>R-bloggers: 2/27/2014</h4>\n"}︡
︠90e10437-295b-4b94-8a33-d03c3168b874i︠
%md
> This simulation tests the type I error rates of the Shapiro-Wilk test of normality in R and SAS.

> First, we run a simulation in R. Notice the simulation is vectorized: there are no "for" loops that clutter the code and slow the simulation.
︡abd93d12-b809-45e1-8c45-6a608b5a101f︡{"html":"<blockquote>\n  <p>This simulation tests the type I error rates of the Shapiro-Wilk test of normality in R and SAS.</p>\n  \n  <p>First, we run a simulation in R. Notice the simulation is vectorized: there are no &#8220;for&#8221; loops that clutter the code and slow the simulation.</p>\n</blockquote>\n"}︡
︠a5e48608-42ec-4032-833f-7cefdb1a05a2a︠
%auto
%default_mode r
︡b492051e-412b-4fde-abb4-14901ea9bb65︡{"auto":true}︡
︠a7d909b3-7ce7-4518-8e7e-127759df97af︠
# type I error
alpha <- 0.05

# number of simulations
n.simulations <- 10000

# number of observations in each simulation
n.obs <- 100

# a vector of test results
type.one.error <- replicate(n.simulations,
    shapiro.test(rnorm(n.obs))$p.value)<alpha

# type I error for the whole simulation
mean(type.one.error)

# Store cumulative results in data frame for plotting
sim <- data.frame(
    n.simulations = 1:n.simulations,
    type.one.error.rate = cumsum(type.one.error) /
        seq_along(type.one.error))

# plot type I error as function of the number of simulations
plot(sim, xlab="number of simulations",
    ylab="cumulative type I error rate")

# a line for the true error rate
abline(h=alpha, col="red")

# alternative plot using ggplot2
require(ggplot2)
ggplot(sim, aes(x=n.simulations, y=type.one.error.rate)) +
    geom_line() +
    xlab('number of simulations') +
    ylab('cumulative type I error rate') +
    ggtitle('Simulation of type I error in Shapiro-Wilk test') +
    geom_abline(intercept = 0.05, slope=0, col='red') +
    theme_bw()
︡d0a6dc19-47f2-4b9a-8d3f-09f52743e2de︡
︠9763f4e5-53e8-4c72-84de-290e60f58b6ei︠
%md
> As the number of simulations increases, the type I error rate approaches alpha. Try it in R with any value of alpha and any number of observations per simulation.

> It's elegant the whole simulation can be condensed to 60 characters:
︡aaffaed2-074a-477f-ad8e-a7f44c053c13︡{"html":"<blockquote>\n  <p>As the number of simulations increases, the type I error rate approaches alpha. Try it in R with any value of alpha and any number of observations per simulation.</p>\n  \n  <p>It&#8217;s elegant the whole simulation can be condensed to 60 characters:</p>\n</blockquote>\n"}︡
︠dc2baba6-5ea6-48a4-a4d3-25ee679cd5ab︠
mean(replicate(10000,shapiro.test(rnorm(100))$p.value)<0.05)
︡1ff5f28c-ee68-4e4e-9ca8-a55d5960816c︡{"stdout":"[1] 0.0524"}︡
︠7e9a03b4-fedd-4671-883e-f3df24e807f3︠










