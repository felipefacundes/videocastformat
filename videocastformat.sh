#!/bin/bash

for i in *.[mM][pP][4];
  do name=`echo "$i"`;
  echo "$name";
  ffmpeg -i "$i" -vcodec copy -acodec mp3 -n "${name}-chcast.mp4";
  rm "${name}";
done;

for i in *.[mM][kK][vV];
  do name=`echo "$i"`;
  echo "$name";
  ffmpeg -i "$i" -vcodec copy -acodec mp3 -n "${name}-chcast.mp4";
  rm "${name}";
done;

for i in *.[sS][rR][tT];
  do name=`echo "$i"`;
  echo "$name";
  mv "${name}" "${name}-chcast.srt";
done;

ls *-chcast*;

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Conversion completed"
echo "Created by Felipe Facundes"
echo "Telegram: @FeFacundes"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

