#!/bin/bash

function update_lesson 
{
    LESSON_SECTION=$1
    LESSON_TITLE=$2
    cd $LESSON_TITLE
    pwd
    #sed -i "" "s/Main Title/${LESSON_TITLE}/g" tex/$LESSON_TITLE.tex
    make clean
    make slides
    cp $LESSON_TITLE.pdf ../../../pdf/$LESSON_SECTION
    make clean
    #ls -l
    cd ..
}

cd src

cd 1.Foundations_Of_Data_Systems
update_lesson 1.Foundations_Of_Data_Systems 1.Reliable_Scalable_Maintainable_Apps
update_lesson 1.Foundations_Of_Data_Systems 2.Data_Models_And_Query_Languages
update_lesson 1.Foundations_Of_Data_Systems 3.Storage_And_Retrieval
update_lesson 1.Foundations_Of_Data_Systems 4.Encoding_And_Evolution
cd ..

cd 2.Distributed_Data
update_lesson 2.Distributed_Data 5.Replication
update_lesson 2.Distributed_Data 6.Partitioning
update_lesson 2.Distributed_Data 7.Transactions
update_lesson 2.Distributed_Data 8.Trouble_With_Distributed_Systems
update_lesson 2.Distributed_Data 9.Consistency_And_Consensus
cd ..

cd 3.Derived_Data
update_lesson 3.Derived_Data 10.Batch_Processing
update_lesson 3.Derived_Data 11.Stream_Processing
update_lesson 3.Derived_Data 12.The_Future_Of_Data_Systems
cd ..

