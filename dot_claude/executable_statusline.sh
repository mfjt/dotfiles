#!/usr/bin/env bash
set -euo pipefail
input="$(cat)"

jq -jr '.model.display_name' <<< "${input}"

if command git rev-parse --git-dir > /dev/null 2>&1; then
  printf ' · %s' "$(command git branch --show-current 2>/dev/null)"
fi

jq -jr '" · \(.context_window.used_percentage // 0)% used"' <<< "${input}"

FIVE_H_USED=$(jq -r '.rate_limits.five_hour.used_percentage // empty' <<< "${input}")
FIVE_H_RESET=$(jq -r '.rate_limits.five_hour.resets_at // empty' <<< "${input}")
[[ -n "${FIVE_H_USED}" ]] && printf ' · 5h %s%%' "$((100 - FIVE_H_USED))" && \
  [[ -n "${FIVE_H_RESET}" ]] && printf ' %s' "$(date -d "@${FIVE_H_RESET}" +"%H:%M")"

WEEK_USED=$(jq -r '.rate_limits.seven_day.used_percentage // empty' <<< "${input}")
WEEK_RESET=$(jq -r '.rate_limits.seven_day.resets_at // empty' <<< "${input}")
[[ -n "${WEEK_USED}" ]] && printf ' · weekly %s%%' "$((100 - WEEK_USED))" && \
  [[ -n "${WEEK_RESET}" ]] && printf ' %s' "$(date -d "@${WEEK_RESET}" +"%m/%d")"

CWD=$(jq -r '.workspace.current_dir' <<< "${input}")
printf ' · %s' "${CWD/#"$HOME"/\~}"
