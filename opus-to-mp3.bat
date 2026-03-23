for %%f in (*.opus) do ffmpeg -i "%%f" -q:a 2 "%%~nf.mp3" && del "%%f"
