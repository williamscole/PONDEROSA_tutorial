bash setup.sh
python PONDEROSA.py par_file.txt >> discard.txt
python make_fam.py par_file.txt >> discard.txt

echo "Run_type" > par_file_test.txt
echo "po_only False" >> par_file_test.txt
echo "ped_only False" >> par_file_test.txt
echo "run_all True" >> par_file_test.txt
tail -20 par_file.txt | head -4 >> par_file_test.txt
echo "fam_file Himba_PONDEROSA.fam" >> par_file_test.txt
tail -15 par_file.txt >> par_file_test.txt
python PONDEROSA.py par_file_test.txt >> discard.txt
sh remove_relatives.sh >> discard.txt

rm par_file_test.txt
rm discard.txt
rm Himba*
echo "All tests passed :-)"
