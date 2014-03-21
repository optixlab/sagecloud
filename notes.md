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
