DIST_DIR := dist

default: clean test sdist

clean:
	$(RM) $(DIST_DIR)/*

sdist:
	python setup.py sdist

testupload:
	twine upload dist/* -r testpypi

upload:
	twine upload dist/*

test:
	python -m unittest
