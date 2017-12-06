# Generate summary table.
results.txt : dats/isles.dat dats/abyss.dat dats/last.dat
	python zipf_test.py dats/abyss.dat dats/isles.dat dats/last.dat > results.txt

# Count words.
.PHONY : dats
dats : dats/isles.dat dats/abyss.dat dats/last.dat

dats/isles.dat : books/isles.txt
	python wordcount.py books/isles.txt dats/isles.dat

dats/abyss.dat : books/abyss.txt
	python wordcount.py books/abyss.txt dats/abyss.dat

dats/last.dat : books/last.txt
	python wordcount.py books/last.txt dats/last.dat

# Create pngs.
.PHONY : pngs
pngs : pngs/isles.png pngs/abyss.png pngs/last.png

pngs/isles.png : dats/isles.dat
	python plotcount.py dats/isles.dat pngs/isles.png

pngs/abyss.png : dats/abyss.dat
	python plotcount.py dats/abyss.dat pngs/abyss.png

pngs/last.png : dats/last.dat
	python plotcount.py dats/last.dat pngs/last.png

.PHONY : clean
clean :
	rm -f dats/*.dat
	rm -f results.txt
