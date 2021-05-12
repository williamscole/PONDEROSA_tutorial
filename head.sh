
if [[ ${1} == "king" ]]
then
head /share/hennlab/projects/himba_pedigree/PONDEROSA_tutorial/Himba.seg
fi

if [[ ${1} == "ibd" ]]
then
head /share/hennlab/projects/himba_pedigree/Germline/Himba_germline_chr1.output.match
fi

if [[ ${1} == "map" ]]
then
head /share/hennlab/projects/himba_pedigree/plink_data/newHimba_shapeit.chr1.map
fi

if [[ ${1} == "age" ]]
then
head /share/hennlab/projects/himba_pedigree/ALGORITHM/Himba_Age.txt
fi

if [[ ${1} == "fam" ]]
then
head /share/hennlab/projects/himba_pedigree/PONDEROSA_tutorial/Himba.fam
fi
