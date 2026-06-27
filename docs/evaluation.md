# Horizontal Deep-Dive Evaluation: GitHub Repos for AI Writing Quality

Last updated: 2026-06-27

## Evaluation criteria

We scored repositories across six dimensions:

1. **Effectiveness** — does it actually reduce AI flavor? Is there evidence?
2. **Depth** — is the approach research-grounded, pattern-based, or just a single prompt?
3. **Usability** — how easy is it to install and use?
4. **Language support** — is it English-centric, Chinese-native, or multilingual?
5. **Maintenance** — recent commits, releases, community health.
6. **Honesty** — does it admit limitations, or is it pure marketing?

## The shortlist

| Repository | Stars | Lang | Type | Best for |
|------------|-------|------|------|----------|
| [Leey21/awesome-ai-research-writing](https://github.com/Leey21/awesome-ai-research-writing) | 29.7k | zh/en | Prompt library | Academic paper writing |
| [blader/humanizer](https://github.com/blader/humanizer) | 26.4k | en | Claude Code skill | Foundational English prose humanization |
| [Imbad0202/academic-research-skills](https://github.com/Imbad0202/academic-research-skills) | 34.8k | en | Claude Code skills | Full academic research pipeline |
| [anthropics/skills](https://github.com/anthropics/skills) | 156k | en | Official skills | Document creation workflows |
| [Orchestra-Research/AI-Research-SKILLs](https://github.com/Orchestra-Research/AI-Research-SKILLs) | 10.2k | en | Skill library | ML/AI conference papers |
| [op7418/Humanizer-zh](https://github.com/op7418/Humanizer-zh) | 11.7k | zh | Claude Code skill | Most popular Chinese humanizer |
| [lynote-ai/humanize-text](https://github.com/lynote-ai/humanize-text) | 1.4k | en | Python pipeline | Production-grade open-source pipeline |
| [LifelongLazyLearner/qu-ai-wei](https://github.com/LifelongLazyLearner/qu-ai-wei) | 144 | zh | Agent skill | Best Chinese-native de-AI skill |
| [ai-zixun/humanizer-zh](https://github.com/ai-zixun/humanizer-zh) | 21 | zh | Agent skill | Chinese long-form nonfiction |
| [devswha/patina](https://github.com/devswha/patina) | 199 | ko/en/zh/ja | Node.js CLI | CJK measurement-first detector + rewriter |
| [harshaneel/humanize](https://github.com/harshaneel/humanize) | 55 | en | Static skill | Research-grounded English humanizer + detector |
| [marmbiz/humanizer-de](https://github.com/marmbiz/humanizer-de) | 48 | de | Agent skill | German-specific humanization |
| [ilyautov/humanizer-ru](https://github.com/ilyautov/humanizer-ru) | 104 | ru | Agent skill | Russian-specific humanization |
| [gabelul/slopbuster](https://github.com/gabelul/slopbuster) | 21 | en | Markdown skill | Prose + code + academic coverage |
| [B1lli/remove-ai-flavor-writing-skill](https://github.com/B1lli/remove-ai-flavor-writing-skill) | 125 | zh | Codex/Claude skill | Chinese short-form / social copy |
| [DadaNanjesha/AI-Text-Humanizer-App](https://github.com/DadaNanjesha/AI-Text-Humanizer-App) | 394 | en | Streamlit app | Self-contained English academic rewriter |
| [OrbitWebTools/Humanize-AI](https://github.com/OrbitWebTools/Humanize-AI) | 11 | en | PWA | Privacy-first client-side demo |
| [hylarucoder/ai-flavor-remover](https://github.com/hylarucoder/ai-flavor-remover) | 1.1k | zh | Single prompt | Quick copy-paste Chinese rewrite |
| [MrGeDiao/shuorenhua](https://github.com/MrGeDiao/shuorenhua) | 543 | zh | Skill | Chinese social/long-form |
| [Anbeeld/WRITING.md](https://github.com/Anbeeld/WRITING.md) | 311 | en | Rules | Technical/content writing improvement |
| [conorbronsdon/avoid-ai-writing](https://github.com/conorbronsdon/avoid-ai-writing) | 2k | en | Skill | Multi-agent pattern removal |
| [Aboudjem/humanizer-skill](https://github.com/Aboudjem/humanizer-skill) | 98 | en | Skill | Pattern catalog with 43 patterns |

## Tier 1: best all-around resources

### 1. Leey21/awesome-ai-research-writing

- **What it is:** A bilingual prompt-and-skill library for researchers who want to polish AI-generated academic text, manage LaTeX/Word workflows, and remove AI flavor from papers.
- **Why it ranks first:** It covers the full paper-writing pipeline: Chinese-to-English translation, expansion, compression, logic checking, figure/table caption generation, and submission checklists. It focuses on *genuinely better* writing rather than detector evasion.
- **Strengths:** 29.7k stars, very practical, updated regularly, covers both Chinese and English academic workflows.
- **Weaknesses:** Not a runnable tool; assumes Cursor/Claude Code users; some prompts are optimized for Chinese academic contexts.
- **Verdict:** The best starting point for academic writing improvement.

### 2. blader/humanizer

- **What it is:** The foundational Claude Code skill that removes signs of AI-generated writing from English prose.
- **Why it ranks second:** It is the ancestor of almost every humanizer skill, with 33 patterns, voice calibration, and a final "obviously AI" audit pass. It is clean, no-dependency, and quality-focused.
- **Strengths:** 26.4k stars, influential, simple, no API calls, well-organized pattern taxonomy.
- **Weaknesses:** English-centric; fewer patterns than newer forks; less maintenance than some descendants.
- **Verdict:** The canonical English humanizer skill.

### 3. Imbad0202/academic-research-skills

- **What it is:** A comprehensive Claude Code skill set for the full academic pipeline: research → write → review → revise → finalize.
- **Why it ranks third:** 34.8k stars and actively maintained. It covers literature review, peer review, revision, and finalization, with a Codex-native variant.
- **Strengths:** Huge community, broad scope, actively maintained.
- **Weaknesses:** Less focused on prose quality than dedicated humanizer skills; broad scope can be overwhelming.
- **Verdict:** Best for researchers who want an end-to-end academic workflow, not just a humanizer.

### 4. anthropics/skills

- **What it is:** Official Anthropic repository of agent skills, including document skills that power Claude's file creation.
- **Why it ranks fourth:** `doc-coauthoring` and `canvas-design` are excellent structured writing workflows with reader testing.
- **Strengths:** Official, 156k stars, well-maintained, production-grade document workflows.
- **Weaknesses:** Not specifically about de-AI flavor; more about document creation tooling.
- **Verdict:** Best for users who want official, general-purpose writing workflows from Anthropic.

## Tier 2: best language-specific humanizers

### Best for Chinese: LifelongLazyLearner/qu-ai-wei

- **What it is:** A mature, Chinese-native agent skill for removing Simplified Chinese AI-writing traces while preserving facts and register.
- **Why it wins:** 51 AI-flavor patterns, 6-level conflict-arbitration hierarchy, 9 register types, optional voice calibration, anti-hallucination guardrails, and regression tests/CI.
- **Strengths:** Deepest Chinese-specific reasoning, register protection, multi-agent packaging, very active maintenance (last commit 2026-06-26).
- **Weaknesses:** Simplified Chinese only; 0.x API still evolving; can over-clean narrative pacing.
- **Verdict:** The best Chinese-native de-AI skill for serious use.

### Runner-up Chinese: ai-zixun/humanizer-zh

- **What it is:** A Chinese-native skill for Codex, Claude Code, and OpenClaw focused on long-form Chinese nonfiction.
- **Why it is strong:** 8 core rules, article-level structural analysis, 8 Chinese author voice profiles, optional deep reference corpus, and good release hygiene.
- **Strengths:** Clean native-Chinese design, useful corpus/voice references, versioned releases.
- **Weaknesses:** Very small community (21 stars); voice profiles can be misused for imitative writing.
- **Verdict:** Best for Chinese long-form nonfiction and newsletters.

### Most popular Chinese: op7418/Humanizer-zh

- **What it is:** A Chinese localization of `blader/humanizer` packaged as a Claude Code skill.
- **Why it is notable:** 11.7k stars make it the most visible Chinese option.
- **Strengths:** Simple, 24 concrete patterns, easy install, good before/after examples.
- **Weaknesses:** Largely a translated pattern checklist; no benchmark or detector; slower maintenance.
- **Verdict:** A good starting point, but not the deepest Chinese solution.

### Best for English: harshaneel/humanize

- **What it is:** Two LLM-agnostic static skills (`humanize` + `ai-check`) that rewrite AI text and score it for AI-generation signals.
- **Why it wins:** 50+ peer-reviewed citations, 9 levers, 25-register benchmark cross-validated against Binoculars, and explicit honesty about limitations.
- **Strengths:** Most research-grounded English humanizer; includes its own forensic scorer; honest about what it cannot do.
- **Weaknesses:** English-centric; static rules cannot defeat commercial classifiers; small community (55 stars).
- **Verdict:** Best for English users who want a defensible, benchmarked approach.

### Best CJK-aware: devswha/patina

- **What it is:** Node.js CLI/skill for detecting and rewriting AI patterns in Korean, English, Chinese, and Japanese.
- **Why it stands out:** Measurement-first culture, deterministic stylometry/lexicon scanning, optional LLM rewrite, self-audit, MPS/fidelity checks, CI action, and benchmark harness.
- **Strengths:** Rigorous, localized CJK support, false-positive guardrails, very active.
- **Weaknesses:** Node.js only; rewrite quality depends on backend LLM.
- **Verdict:** Best for multilingual users who want measurement-driven humanization.

### Best for German: marmbiz/humanizer-de

- **What it is:** German-language humanizer with 66 patterns in 10 categories, deterministic linter, 5-pass workflow, and QGIR iterative revision.
- **Strengths:** Excellent German-specific rules, evidence-ledger to protect claims, CI/test suite, active maintenance.
- **Verdict:** Best for German prose.

### Best for Russian: ilyautov/humanizer-ru

- **What it is:** Russian-language skill removing 52 AI tells with 20 hard bans, quad-pass audit, and voice calibration.
- **Strengths:** Very active, rigorous, handles Russian bureaucratese and calques.
- **Verdict:** Best for Russian prose.

## Tier 3: real open-source tools (not just skills)

### lynote-ai/humanize-text

- **What it is:** Production-ready Python pipeline for AI text humanization using a 4-step LLM + multi-engine translation chain.
- **Why it wins:** MIT license, real package, CLI, FastAPI, Docker, n8n workflow, smoke tests, changelog.
- **Core technique:** EN → Chinese → Japanese → Finnish → EN, with documented methodologies.
- **Strengths:** Best-documented open pipeline, multiple entry points, active maintenance (last commit ~5 days ago).
- **Weaknesses:** Requires paid API keys; translation can distort meaning; README promotes commercial Lynote.ai service.
- **Verdict:** Best production-grade open-source humanization pipeline.

### DadaNanjesha/AI-Text-Humanizer-App

- **What it is:** Streamlit web app that applies rule-based academic-style transformations to text.
- **Strengths:** MIT license, real Python/Streamlit app, no external API keys, CI/CD, highlighted diff.
- **Weaknesses:** Rule-based transformations can distort meaning; tends to make text more formal rather than more human; English-only; somewhat stale.
- **Verdict:** A self-contained English academic rewriter, but limited in sophistication.

### OrbitWebTools/Humanize-AI

- **What it is:** Single-file client-side PWA that rewrites text with a small synonym dictionary.
- **Strengths:** Truly client-side, no API keys, privacy-preserving, works offline.
- **Weaknesses:** Extremely limited transformation dictionary; bold unverified marketing claims; no tests or evaluation.
- **Verdict:** A privacy-first demo, not a serious tool.

## Tier 4: marketing pages and low-value aggregators

These repositories are not recommended for serious work. They contain no executable code and exist primarily for affiliate marketing or SEO.

- **xszcs546/ai-text-humanizer** — collection of 14+ commercial service descriptions, no code.
- **nifzaa0/ai-humanizer-tools** — "Top 25 AI Humanizer Tools Ranked in 2025", no code.
- **hylarucoder/ai-flavor-remover** — single prompt, stale, only tested on Gemini 2.5 Pro, no guardrails.

## Honest limitations of the entire field

1. **No static skill beats a trained commercial classifier.** Projects that claim 100% undetectability are usually marketing.
2. **Translation-based humanization can distort meaning.** Multi-hop translation is a known trick but risky for precise text.
3. **Rule-based rewriting can make text more formal, not more human.** The goal should be reader quality, not detector score.
4. **Language-specific tells matter.** An English skill applied to Chinese text will miss translationese and slogan endings.
5. **Voice injection can be misused.** Imitating a specific author without disclosure is ethically questionable.

## How this repo synthesizes them

This repository (`ai-writing-unhumanizer`) merges the best ideas from the tier-1 and tier-2 resources:

- The **workflow** from `blader/humanizer` and `harshaneel/humanize` (diagnose → subtract → add → audit).
- The **Chinese-specific rules** from `qu-ai-wei` and `ai-zixun/humanizer-zh` (translationese, slogan endings, punctuation, typography).
- The **research honesty** from `harshaneel/humanize` (explicit scoring, limitations, no detector-evasion hype).
- The **academic coverage** from `Leey21/awesome-ai-research-writing` and `Imbad0202/academic-research-skills`.
- The **measurement culture** from `devswha/patina` (score before and after, guardrails against false positives).
- The **multi-agent packaging** from modern skill repos (install via `npx skills add`, works in Claude Code, Codex, OpenClaw, Cursor).

The result is a single, unified skill that is language-aware, register-aware, fact-safe, and honest about what it can and cannot do.

## Selection guide

| Your need | Use this repo | Or go deeper with |
|-----------|---------------|-------------------|
| General English prose | `SKILL.md` here | `blader/humanizer`, `harshaneel/humanize` |
| Chinese social/business copy | `SKILL.md` here | `LifelongLazyLearner/qu-ai-wei` |
| Chinese long-form nonfiction | `SKILL.md` here | `ai-zixun/humanizer-zh` |
| Academic paper writing | `docs/evaluation.md` + academic prompts | `Leey21/awesome-ai-research-writing`, `Imbad0202/academic-research-skills` |
| Production pipeline | Not here; use a dedicated tool | `lynote-ai/humanize-text` |
| German / Russian / Korean | Not here; language-specific skills | `marmbiz/humanizer-de`, `ilyautov/humanizer-ru`, `devswha/patina` |
| Detector bypass / cheating | **Not supported by any honest repo** | — |
