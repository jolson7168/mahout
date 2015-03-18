wget http://qwone.com/~jason/20Newsgroups/20news-bydate.tar.gz -P /tmp
mkdir /tmp/20newsdata
tar xvfz /tmp/20news-bydate.tar.gz -C /tmp/20newsdata
mkdir /tmp/20newsdataall
cp -R /tmp/20newsdata/*/* /tmp/20newsdataall
