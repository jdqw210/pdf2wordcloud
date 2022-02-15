#!/bin/bash

#-- pdf2wordcloud.sh
#-- https://github.com/jdqw210/pdf2wordcloud

#Desc: Generate a 1600x1600 pixel wordcloud .png image from a .pdf, based on word frequency.

#--if user calls script incorrectly, let them know how to call it:
if [ $# -ne 1 ];
then
	echo "Usage: $0 file.pdf";
	exit -1
fi

#--ask user for maximum number of words and assign to variable $wordnum:
echo "enter desired maximum number of words to use:"
read -p "" wordnum

#--ask user for width in pixels and assign to variable $width:
echo "enter desired image width:"
read -p "" width

#--ask user for height in pixels and assign to variable $height:
echo "enter desired image height:"
read -p "" height

echo ""
echo "entered values:"
echo ""
echo "	# of words:		$wordnum"
echo "	width:			$width px"
echo "	height:			$height px"
echo ""
echo "...is this correct? (y/n)"

read -p "" resp

if [ "$resp" = "y" ]; then
 
#--assign variable $f to the input filename during script call:
for f in $1;

	#--begin loop for each file called:
	do

		#--let user know what file will be processed next:
		echo ""
		echo "converting $f to text and creating .png image..."

		#--use the program pdftotext to convert file $f to text, output it to stdout, then pipe to wordcloud_cli to generate a .png image:
		pdftotext $f - | wordcloud_cli --max_words $wordnum --width $width --height $height --imagefile $f.png

		#--let user know that current file is processed:
		echo "$f processed, output is: $f.wordcloud.png"
		echo ""

	#--loop complete:
	done

	#--let user know the script has finished:
	echo "pdf2wordcloud task complete."
	echo ""

else

	exit -1
	
fi
