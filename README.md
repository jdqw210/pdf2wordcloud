# pdf2wordcloud
A bash script that reads .pdfs and outputs .png wordclouds based on word frequency


Requirements:

	pdftotext (poppler) - http://poppler.freedesktop.org
		- available via most linux package managers
		
	wordcloud_cli (wordcloud) - https://github.com/amueller/word_cloud	
		- available via python pip
	
	
Usage:
	
	call script for single .pdf file:
		./pdf2wordcloud.sh file.pdf
	
	call script for all .pdfs in current working directory:
		./pdf2wordcloud.sh '*.pdf'
		

The script will ask you for the following user input:
		
	number of words to integrate into the wordcloud image file(s):
		enter the maximum number of words you would like to show, ie. 500
		
	.png file width:
		enter the width (in pixels) for your .png file(s), ie. 1920
		
	.png file height:
		enter the width (in pixels) for your .png file(s), ie. 1080
		
		
Confirm that values entered are OK, and the script will generate wordcloud images with the properties given.

Images are output to the location of the original .pdf(s)
