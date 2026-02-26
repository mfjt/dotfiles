#!/usr/bin/env bash
input="$(cat)"

printf '%s' "${input}" | jq -jr '.model.display_name'

if git rev-parse --git-dir > /dev/null 2>&1; then
  printf ' · %s' "$(git branch --show-current 2>/dev/null)"
fi

printf '%s' "${input}" | jq -jr '" · \((.context_window.used_percentage // 0))% used"'

cwd=$(printf '%s' "${input}" | jq -r '.workspace.current_dir')
printf ' · %s' "${cwd/#$HOME/\~}"
