# USAGE: bash run_pipeline.sh
# to produce plots for isles and abyss
# and the summary table for the Zipf's law tests

python wordcount.py books/isles.txt dats/isles.dat
python wordcount.py books/abyss.txt dats/abyss.dat

python plotcount.py dats/isles.dat pngs/isles.png
python plotcount.py dats/abyss.dat pngs/abyss.png

# Generate summary table
python zipf_test.py dats/abyss.dat dats/isles.dat > results.txt

