#!/bin/sh

mahout split -i /user/user01/20newsdatavec/tfidf-vectors --trainingOutput /user/user01/20newsdatatrain --testOutput /user/user01/20newsdatatest --randomSelectionPct 40 --overwrite --sequenceFiles -xm sequential
mahout trainnb -i /user/user01/20newsdatatrain -el -o /user/user01/model -li /user/user01/labelindex -ow -c
