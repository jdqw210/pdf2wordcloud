#!/bin/bash
if [ $# -ne 1 ];
then
  echo "[!!]  Usage: $0 [file.pdf]"
  exit -1
fi

for pdf in $1;
do
  pdfn=$(basename $pdf .pdf)
  echo "[+]  converting $pdf to text and creating .png image..."
  pdftotext $pdf - | wordcloud_cli --min_word_length 4 --relative_scaling 0.2 --margin 15 --random_state 13371337 --max_words 1500 --width 3840 --height 2160 --imagefile $PWD/$pdfn.wc.png
  echo "[+]  $pdf processed, output is: $PWD/$pdfn.wc.png"
done
echo "[C]  complete"
