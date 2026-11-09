#!/bin/zsh
# Open the existing local preview, or start it in this Terminal window.
cd -- "${0:A:h}/.." || exit 1

if /usr/bin/curl --silent --fail --max-time 2 http://127.0.0.1:4000/ >/dev/null; then
  exec /usr/bin/open http://127.0.0.1:4000/
fi

printf '%s\n' 'Lokale Website-Vorschau: http://127.0.0.1:4000/' 'Dieses Terminal offen lassen. Mit Ctrl+C beenden.'
exec ruby -S bundle exec jekyll serve --host 127.0.0.1 --port 4000 --open-url
