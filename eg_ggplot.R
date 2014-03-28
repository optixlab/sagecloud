# Rblogger stuff

## 3/28/2014
## [Ref](http://tomhopper.me/2014/03/28/a-simple-introduction-to-the-graphing-philosophy-of-ggplot2/)

library(ggplot2)
# Create some data for our example
some.data <- data.frame(timer = 1:12, 
                        countdown = 12:1, 
                        category = factor(letters[1:3]))

# Open a device
jpeg("test.jpg")

# Generate the plot
some.plot <- ggplot(data = some.data, aes(x = timer, y = countdown)) +
  geom_point(aes(colour = category)) +
  scale_x_continuous(limits = c(0, 15)) +
  scale_colour_brewer(palette = "Dark2") +
  coord_fixed(ratio=1)
# Display the plot
some.plot

# device off
dev.off()

