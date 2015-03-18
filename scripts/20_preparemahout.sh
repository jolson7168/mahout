#!/bin/bash

# build a binary sequence file that hadoop can read. This is for the 'map' stage
# We will have key-value pairs after this step.
# This step uses hadoop's map reduce....

mahout seqdirectory -i /user/user01/20newsdata/20newsdataall -o /user/user01/20newsdataseq-out

# now vectorize the sequence file
# lnorm : log normalize the output vectors
# nv: make output vectors named vectors
# wt: can use tf or tfidf for the weighting  
mahout seq2sparse -i /user/user01/20newsdataseq-out/part-m-00000 -o /user/user01/20newsdatavec -lnorm -nv -wt tfidf
