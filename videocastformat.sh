#!/bin/bash

for i in *.[mM][pP][4];
  do s=`echo "$i"`;
  name=$(basename ${s%.[mM][pP][4]});
  echo "$name";
  ffmpeg -i "$i" -vcodec copy -acodec mp3 -n "${name}-chcast.mp4";
  rm "$i";
done;

for i in *.[mM][kK][vV];
  do s=`echo "$i"`;
  name=$(basename ${s%.[mM][kK][vV]});
  echo "$name";
  ffmpeg -i "$i" -vcodec copy -acodec mp3 -n "${name}-chcast.mp4";
  rm "$i";
done;

for i in *.[sS][rR][tT];
  do s=`echo "$i"`;
  name=$(basename ${s%.[sS][rR][tT]});
  echo "$name";
  mv "$i" "${name}-chcast.srt";
done;

ls *-chcast*;

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Conversion completed"
echo "Created by Felipe Facundes"
echo "Telegram: @FeFacundes"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
