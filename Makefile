# The root directory where the website files will be placed.
ROOTDIR=../_site

all:
	jekyll ${ROOTDIR}/web-documents

clean:
	rm -rf ${ROOTDIR}/web-documents
