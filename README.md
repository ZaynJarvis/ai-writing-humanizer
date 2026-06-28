# AI Writing Humanizer

A curated, research-aware toolkit that helps you improve AI-assisted writing and remove the tell-tale "AI flavor" from prose.

It is not a detector-bypass tool. It is a quality tool: it surfaces the mechanical patterns that make text sound generated, then gives you a safe, repeatable workflow to rewrite it into natural, reader-respecting language.

## What you get

- **`SKILL.md`** — a unified agent skill for Claude Code, Codex, OpenClaw, Cursor, and any LLM that reads system prompts. One prompt, multiple agents.
- **`docs/evaluation.md`** — a horizontal deep-dive comparison of the most valuable GitHub repositories in this space (English, Chinese, academic, open-source tools).
- **`patterns/ai-tells-en.md` & `patterns/ai-tells-zh.md`** — cross-lingual catalogs of AI-writing tells and the specific fixes for each.
- **`install.sh`** — one-command install for supported agents.
- **A synthesis-first design** — every recommendation merges the strongest ideas from the evaluated repos, with citations and honest limitations.

## Quick start

### As a Claude Code / Codex / OpenClaw skill

```bash
npx skills add <your-github-username>/ai-writing-humanizer
# or clone it manually
git clone https://github.com/<your-github-username>/ai-writing-humanizer.git ~/.claude/skills/ai-writing-humanizer
```

Then in your agent:

```text
/humanize ./draft.md --tone conversational --audit
```

### As a standalone prompt

Copy `SKILL.md` into your model's custom instructions or system prompt. It is self-contained and requires no external API keys.

### As a reference library

Read `docs/evaluation.md` to choose the best existing tool for your exact use case, then use this repo's pattern catalogs to strengthen its output.

## Philosophy

1. **Quality over evasion.** Detector-bypass claims are usually marketing. The real goal is writing that humans enjoy reading.
2. **Subtract first, add second.** Remove mechanical patterns before injecting voice or style.
3. **Preserve facts.** No rewrite should invent examples, quotes, numbers, or sources.
4. **Be language-specific.** AI flavor looks different in English, Chinese, Japanese, German, and Russian. This repo focuses on English and Chinese, with clear extension points for other languages.
5. **Measure honestly.** If you claim success, show the before/after, the rubric, and the detectors you did (or did not) beat.

## Repo map

```
.
├── README.md                  # this file
├── SKILL.md                   # unified agent skill
├── install.sh                 # one-command installer
├── docs/
│   └── evaluation.md          # horizontal deep-dive evaluation of GitHub repos
├── patterns/
│   ├── ai-tells-en.md         # English AI-writing tells and fixes
│   └── ai-tells-zh.md         # Chinese AI-writing tells and fixes
└── references/
    └── README.md              # sources and how to extend this toolkit
```

## Honest scope

- This skill uses static prompts and rules, not a trained model. It cannot defeat a well-trained commercial classifier by itself.
- It can dramatically reduce mechanical AI flavor when the host model follows the instructions faithfully.
- It works best when paired with a human final pass. Treat it as a first-class editor, not a publish button.

## License

MIT
