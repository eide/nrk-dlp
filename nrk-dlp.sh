#!/bin/bash

yt-dlp \
    --embed-subs --write-thumbnail \
    -o '%(series)/Season %(season_number)02d/%(series)s S%(season_number)02dE%(episode_number)02d - %(episode)s.%(ext)s' \
    -o 'thumbnail:%(series)/Season %(season_number)02d/%(series)s S%(season_number)02dE%(episode_number)02d - %(episode)s-thumb.%(ext)s'  \
    --parse-metadata ":(?P<meta0_language>)" \
    --parse-metadata " no: %(meta1_language)s" \
    --parse-metadata "episode:%(episode_number)s. %(episode)s" \
    --parse-metadata ":(?P<meta_comment>)" \
    --parse-metadata ":(?P<meta_purl>)" \
    --parse-metadata ":(?P<meta_date>)" \
    --embed-metadata \
    --merge-output-format mkv \
    $@
