for f in *.opus; do
  ffmpeg -i "$f" -q:a 2 "${f%.opus}.mp3" && rm "$f"
done
