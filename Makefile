paper:
	rm -f index.html
	markdown dentograph-paper.markdown > dentograph-paper.html
	cat header.html dentograph-paper.html footer.html >> index.html

publish: 
	scp index.html pair:public_html/miskatonic/c4lj/

publishall:
	scp -r index.html images pair:public_html/miskatonic/c4lj/
