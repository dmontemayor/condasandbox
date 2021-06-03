venv.nosync: venv.nosync/bin/activate

venv.nosync/bin/activate: requirements.txt
	python3 -m venv venv.nosync
	. venv.nosync/bin/activate; pip3 install --upgrade pip; pip3 install -r requirements.txt

	#set up R kernel for jupyterlab
	R -e "if(!require(devtools)) install.packages('devtools', repos = 'http://cran.us.r-project.org'); devtools::install_github('IRkernel/IRkernel'); IRkernel::installspec()"

	#set up BiocManager and install ChIPpeakAnno library
	#R-e "if (!requireNamespace('BiocManager', quietly = TRUE)) install.packages('BiocManager'); BiocManager::install('ChIPpeakAnno')"
  #R -e "if (!requireNamespace('BiocManager', quietly = TRUE)) install.packages('BiocManager', repos = 'http://cran.us.r-project.org'); BiocManager::install('ChIPpeakAnno')"

	touch venv.nosync/bin/activate

clean:
	rm -rf venv.nosync
	find . -depth -name "*.pyc" -type f -delete
