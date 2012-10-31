#!/bin/sh

wd=$HOME/geronto/data/TRANSFAC/TRANSCompel_2012.3/catch
for f in `ls ~/geronto/data/hdf/qpcr_seq/*embl`; do
    #input_fname=${f/fa/embl}
    fname=${f/fa/catch}
    echo "Running" $f #" to " $fname
    #seqret $f -outseq $fname -osformat embl
    $wd/bin/catch $f $wd/data/catch.dat $fname $wd/data/allCE_1_1.prf
done
