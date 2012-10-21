# The root directory where the website files will be placed.
ROOTDIR=../_site

all: jekyll

clean:
	rm -rf ${ROOTDIR}/web-documents

jekyll:
	sed -e 's/devmode: false/devmode: true/' -i _config.yml
	jekyll --pygments --no-lsi --safe ${ROOTDIR}/web-documents
	sed -e 's/devmode: true/devmode: false/' -i _config.yml
