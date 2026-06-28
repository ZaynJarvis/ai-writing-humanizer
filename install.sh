#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="ai-writing-humanizer"
SKILL_SRC="$(cd "$(dirname "$0")" && pwd)"

# Supported agent directories
CLAUDE_SKILLS="${HOME}/.claude/skills"
CODEX_SKILLS="${HOME}/.codex/skills"
OPENCLAW_SKILLS="${HOME}/.openclaw/skills"
CURSOR_RULES="${HOME}/.cursor"

echo "Installing ${REPO_NAME}..."

install_to() {
  local target="$1"
  mkdir -p "${target}"
  rm -rf "${target}/${REPO_NAME}"
  cp -R "${SKILL_SRC}" "${target}/${REPO_NAME}"
  echo "  -> ${target}/${REPO_NAME}"
}

if [ -d "${CLAUDE_SKILLS}" ] || [ -d "${HOME}/.claude" ]; then
  install_to "${CLAUDE_SKILLS}"
fi

if [ -d "${CODEX_SKILLS}" ] || [ -d "${HOME}/.codex" ]; then
  install_to "${CODEX_SKILLS}"
fi

if [ -d "${OPENCLAW_SKILLS}" ] || [ -d "${HOME}/.openclaw" ]; then
  install_to "${OPENCLAW_SKILLS}"
fi

# Optional: install as Cursor rules file
if [ -d "${CURSOR_RULES}" ]; then
  cp "${SKILL_SRC}/SKILL.md" "${CURSOR_RULES}/rules.md"
  echo "  -> ${CURSOR_RULES}/rules.md"
fi

echo "Done. Use /humanize in your agent, or copy SKILL.md into any LLM system prompt."
