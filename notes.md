* For help with installing packages not found on the server:
- https://github.com/sagemath/cloud/issues/114
- See the following code block
```{sh}
aptitude download libcurl4-openssl-dev
mkdir libcurl4-openssl-dev
dpkg-deb -x libcurl4-openssl-dev_7.22.0-3ubuntu4.7_amd64.deb libcurl4-openssl-dev
cd libcurl4-openssl-dev/usr/lib/x86_64-linux-gnu/
ln -sf /usr/lib/x86_64-linux-gnu/libcurl.so.4.2.0 libcurl.so
cd ../../
cp -r include/curl  ~/.sagemathcloud/data/local/include/
cp -r lib/x86_64-linux-gnu ~/.sagemathcloud/data/local/lib/curl
cp -r bin/* ~/.sagemathcloud/data/local/bin/
cp -r bin ~/
cp -r include ~/
cp -r lib ~/
 
# Download RCurl
wget http://cran.r-project.org/src/contrib/RCurl_1.95-4.1.tar.gz
tar xvzf RCurl_1.95-4.1.tar.gz 
vim RCurl/src/Makevars.in

#Change lines with proper projects/proj_ homedir:
PKG_CPPFLAGS=$(CURL_CFLAGS) $(DEFINES) $(shell xml2-config --cflags) -I/projects/e4_proj_homedir/.sagemathcloud/data/local/include
PKG_LIBS=$(CURL_LIBS) $(shell xml2-config --libs) -L/projects/e4_proj_homedir/.sagemathcloud/data/local/lib/curl

# Finally, install RCurl in Sage R

sage -R CMD INSTALL RCurl

```

* Does not work: 
I've been trying to install RCurl to take advantage of curl. There are also many R packages that depend on RCurl (twitteR, for instance). 

Going by directives by user macieck in another thread (https://github.com/sagemath/cloud/issues/114), with "locally installing libcurl4-openssl-dev, and modyfing RCurl/src/Makevars.in"

All the steps except the last one: `sage -R CMD INSTALL RCurl` work:
```bash
~/libcurl4-openssl-dev/usr$ sage -R CMD INSTALL RCurl
* installing to library ‘/usr/local/sage/sage-6.2/local/lib/R/library’
Error: ERROR: no permission to install to directory ‘/usr/local/sage/sage-6.2/local/lib/R/library’
```

My Makevars.in file  has the following lines:

`
PKG_CPPFLAGS=$(CURL_CFLAGS) $(DEFINES) $(shell xml2-config --cflags) -I/projects/<proj dir>/.sagemathcloud/data/local/include
PKG_LIBS=$(CURL_LIBS) $(shell xml2-config --libs) -L/projects/<proj dir>/.sagemathcloud/data/local/lib/curl
`

So I manually added the library path: `sage -R CMD INSTALL RCurl --library=/projects/<my proj path>/.sagemathcloud/data/local/lib/curl` which resulted in a bitops dependency error:

I have bitops installed in a local directory. Not sure how to tell R CMD to look there so I removed the dependency in the RCurl/DESCRIPTION file. 

At this point, the R CMD command works but I get a lot of NO CURLOPT errors, such as the following: 

`
No libidn field in version structure.
No CURLOPT_URL enumeration value.
No CURLINFO_EFFECTIVE_URL enumeration value.
No CURLINFO_RESPONSE_CODE enumeration value.
`

In R, I cannot just load the RCurl library. I have to give it a path. No problem. Here we go:

`library(RCurl, lib="/projects/436382c0-37ff-499a-82f6-70e7a65838da/.sagemathcloud/data/local/lib/curl")`

But the proof of pudding is in the eating. This whole exercise started off because I wanted to instal the twitteR package, which has an RCurl dependency. When I try that: 

install.packages("twitteR")

```
* installing *source* package ‘RCurl’ ...
** package ‘RCurl’ successfully unpacked and MD5 sums checked
checking for curl-config... /projects/436382c0-37ff-499a-82f6-70e7a65838da/.sagemathcloud/data/local/bin/curl-config
checking for gcc... gcc
No libidn field in version structure.
No CURLOPT_URL enumeration value.
No CURLINFO_EFFECTIVE_URL enumeration value.

...
** libs
gcc -std=gnu99 -I/usr/share/R/include -DNDEBUG   -I/usr/include/libxml2     -fpic  -O3 -pipe  -g  -c base64.c -o base64.o
In file included from base64.c:1:0:
Rcurl.h:4:23: fatal error: curl/curl.h: No such file or directory
compilation terminated.
make: *** [base64.o] Error 1
ERROR: compilation failed for package ‘RCurl’
* removing ‘/projects/436382c0-37ff-499a-82f6-70e7a65838da/R/x86_64-pc-linux-gnu-library/3.0/RCurl’
ERROR: dependency ‘RCurl’ is not available for package ‘ROAuth’
* removing ‘/projects/436382c0-37ff-499a-82f6-70e7a65838da/R/x86_64-pc-linux-gnu-library/3.0/ROAuth’
ERROR: dependencies ‘ROAuth’, ‘RCurl’ are not available for package ‘twitteR’
* removing ‘/projects/436382c0-37ff-499a-82f6-70e7a65838da/R/x86_64-pc-linux-gnu-library/3.0/twitteR’

```

It's tremendously difficult to get RCurl installed on sage cloud and by the looks of it, I'm not alone. But so far there are no cogent solutions online. I have been at it for a few days. Would someone with better R chops be able to help? 

Thanks,
optix




