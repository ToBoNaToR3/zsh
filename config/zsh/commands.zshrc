# docker shell
dcshell() {
  docker compose exec $1 sh
}
dcbash() {
  docker compose exec $1 bash
}

ytdl() {
  yt-dlp \
    --download-archive archive.txt \
    --extract-audio \
    --audio-format mp3 \
    --embed-thumbnail \
    --add-metadata -o "%(artist)s - %(title)s.%(ext)s"
}

update() {
  zsh $ZSH_FOLDER/scripts/update.sh
}
