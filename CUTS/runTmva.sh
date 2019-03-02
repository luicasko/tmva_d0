#!/bin/bash
#set the number of pt bin and pass number here
ptBin=1
pass=0

folderPt=pt_$ptBin
mkdir -p $folderPt
cd $folderPt
mkdir -p pass$pass
cd pass$pass

cp -i ../../tmvaD0.C ./
cp -i ../../TMVAClassificationApplication.C ./

cp -i ../../tmvaCuts.h ./
#cp -i ../../tmvaCuts_pt$ptBin.h ./tmvaCuts.h

root -l tmvaD0.C++\(\"\",$ptBin,$pass\)
root -l TMVAClassificationApplication.C++