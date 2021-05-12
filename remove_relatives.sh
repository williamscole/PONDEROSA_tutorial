### Required files. .fam file does not need to have parents
king_file=/share/hennlab/projects/himba_pedigree/PONDEROSA_tutorial/Himba.seg
fam_file=/share/hennlab/projects/himba_pedigree/PONDEROSA_tutorial/Himba_noPO.fam

### Maximum degree of relatedness allowed in the unrelated set
deg=2nd

### There are three different run types; comment out which one you'd like to try out. Note LDA mode takes a while to run in the Himba

###LDA mode: uses [prefix]_pairs.txt file to train LDA classifier, which is used to classify related vs. unrelated
mode=Himba_pairs.txt

### KING mode: uses KING's inferred degrees of relatedness to determine related vs. unrelated
#mode=None

### float mode: only pairs whose pi hat is lower than the float will be included
#mode=0.15

python remove_relatives.py $mode $king_file $fam_file $deg
