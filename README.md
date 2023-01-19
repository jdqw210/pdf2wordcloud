# pdf2wordcloud
A bash script that reads .pdfs and outputs .png wordclouds based on word frequency


Requirements:

	pdftotext (poppler) - http://poppler.freedesktop.org
		- available via most linux package managers
		
	wordcloud_cli (wordcloud) - https://github.com/amueller/word_cloud	
		- available via python pip
	
	
Usage:

	cd into pdf2wordcloud directory
		cd pdf2wordcloud

	make script executable:
		chmod +x pdf2wordcloud.sh
	
	call script for single .pdf file:
		./pdf2wordcloud.sh file.pdf
