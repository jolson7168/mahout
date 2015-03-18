#!/bin/sh

#Split the data set into a training set (60%) and a test set (40%)
mahout split -i /user/user01/20newsdatavec/tfidf-vectors --trainingOutput /user/user01/20newsdatatrain --testOutput /user/user01/20newsdatatest --randomSelectionPct 40 --overwrite --sequenceFiles -xm sequential

#Build the model using the training set 
# -li : label index (classification buckets)
# -ow : overwrite output if it already exists
# -c  : train complementary
# -el : extract labels
mahout trainnb -i /user/user01/20newsdatatrain -el -o /user/user01/model -li /user/user01/labelindex -ow -c
