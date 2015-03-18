#!/bin/bash

mahout seqdirectory -i /user/user01/20newsdata/20newsdataall -o /user/user01/20newsdataseq-out
mahout seq2sparse -i /user/user01/20newsdataseq-out/part-m-00000 -o /user/user01/20newsdatavec -lnorm -nv -wt tfidf
