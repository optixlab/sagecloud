# Rblogger: http://www.r-bloggers.com/r-text-mining-on-twitter-prayformh370-malaysia-airlines/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+RBloggers+%28R+bloggers%29
# http://thinktostart.wordpress.com/2013/05/22/twitter-authentification-with-r/

library(RCurl)
# Set SSL certs globally
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
 
require(twitteR)
reqURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"
apiKey <- "yourAPIkey"
apiSecret <- "yourAPIsecret"
 
twitCred <- OAuthFactory$new(consumerKey=apiKey,consumerSecret=apiSecret,requestURL=reqURL,accessURL=accessURL,authURL=authURL)
 
twitCred$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))
 
registerTwitterOAuth(twitCred)
