#!/bin/bash
mkdir chcastvideos;

for i in *.[mM][kK][vV][pP][4];
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i "$i" -vcodec copy -acodec mp3 -n "${name}.chcast.mp4";
done

sleep 1;

mv *.chcast.mp4 *.[sS][rR][tT] chcastvideos/

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Conversion completed"
echo "Created by Felipe Facundes"
echo "Telegram: @FeFacundes"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

