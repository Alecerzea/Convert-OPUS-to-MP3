Get-ChildItem -Filter *.opus | ForEach-Object {
  ffmpeg -i "$($_.FullName)" -q:a 2 "$($_.DirectoryName)\$($_.BaseName).mp3"
  if ($LASTEXITCODE -eq 0) { Remove-Item "$($_.FullName)" }
}
