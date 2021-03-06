#!/bin/bash
set -e # halt script on error

HTMLPROOFER_OPTIONS="./_site --internal-domains=pips.ethereum.org --check-html --check-opengraph --report-missing-names --log-level=:debug --assume-extension --empty-alt-ignore --timeframe=6w --url-ignore=/PIPS/pip-1,PIPS/pip-1,/PIPS/pip-107,/PIPS/pip-858"

if [[ $TASK = 'htmlproofer' ]]; then
  bundle exec jekyll doctor
  bundle exec jekyll build
  bundle exec htmlproofer $HTMLPROOFER_OPTIONS --disable-external

  # Validate GH Pages DNS setup
  bundle exec github-pages health-check
elif [[ $TASK = 'htmlproofer-external' ]]; then
  bundle exec jekyll doctor
  bundle exec jekyll build
  bundle exec htmlproofer $HTMLPROOFER_OPTIONS --external_only
elif [[ $TASK = 'pip-validator' ]]; then
  BAD_FILES="$(ls PIPS | egrep -v "pip-[0-9]+.md|pip-20-token-standard.md")" || true
  if [[ ! -z $BAD_FILES ]]; then
    echo "Files found with invalid names:"
    echo $BAD_FILES
    exit 1
  fi

  FILES="$(ls PIPS/*.md | egrep "pip-[0-9]+.md")"
  bundle exec pip_validator $FILES
elif [[ $TASK = 'codespell' ]]; then
  codespell -q4 -I .codespell-whitelist pip-X.md PIPS/
fi
