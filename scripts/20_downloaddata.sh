# Download the data set - 20 Newsgroups
wget http://qwone.com/~jason/20Newsgroups/20news-bydate.tar.gz -P /tmp

# uncompress
mkdir /tmp/20newsdata
tar xvfz /tmp/20news-bydate.tar.gz -C /tmp/20newsdata

# merge it all into a single data set
mkdir /tmp/20newsdataall
cp -R /tmp/20newsdata/*/* /tmp/20newsdataall
