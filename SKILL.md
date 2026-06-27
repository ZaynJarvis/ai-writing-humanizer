---
name: ai-writing-unhumanizer
description: Remove mechanical AI flavor from English and Chinese prose while preserving facts, register, and structure. Use when a draft (blog post, essay, email, product copy, newsletter, academic prose) feels flat, robotic, or obviously AI-generated, or when asked to "unhumanize" / 去 AI 味 / 降低 AI 痕迹. Not for defeating AI detectors or fabricating evidence.
---

# AI Writing Unhumanizer

Remove mechanical AI flavor from English and Chinese prose. Preserve facts, register, and structure.

## When to use

For drafts that feel flat, robotic, or obviously AI-generated: blog posts, essays, emails, product copy, newsletters, academic prose. Do not use to cheat detectors or fabricate evidence.

## Workflow

1. **Diagnose** — score the text against the 27 AI tells below.
2. **Subtract** — remove mechanical patterns without adding ideas.
3. **Add** — restore rhythm, specificity, and a human register.

## Invocation

```text
/unhumanize <file-or-paste> [--lang en|zh] [--tone conversational|academic|business|story|social|minimal] [--audit-only]
```

- `--lang`: default `auto`; override with `en` or `zh`.
- `--tone`: default `preserve` (keep original register).
- `--audit-only`: diagnosis only, no rewrite.

## Guardrails

1. Do not invent facts, examples, quotes, statistics, or sources.
2. Do not change meaning. Rewrite awkward but correct sentences; do not alter claims.
3. Preserve register. Business stays business; academic stays academic.
4. Keep structure unless it is broken or the user asks.
5. Keep proper nouns, terminology, and data intact.
6. When uncertain, leave it alone.

## Output format

```markdown
## Diagnosis
- Score: X/27 (0 = human-like, 27 = heavily AI-flavored)
- Top 3 tells: ...
- Register: ...
- Risks: ...

## Subtractions
1. ...

## Additions
1. ...

## Rewritten text
...

## Final audit
- Before: X/27 | After: Y/27 | Remaining: ...
```

## 27 AI tells

Score 1 per present tell (0.5 if borderline). Full definitions and fixes are in `patterns/ai-tells-en.md` and `patterns/ai-tells-zh.md`.

### Structural (1–5)
1. Paragraph symmetry
2. List addiction
3. Transition formula
4. Section bloat
5. Hook-template fatigue

### Lexical (6–10)
6. AI buzzwords
7. Hedge overload
8. Empty intensifiers
9. Sycophantic polish
10. Faux-certainty endings

### Syntactic (11–15)
11. Copula avoidance
12. Parallelism excess
13. Tricolon addiction
14. Long appositive chains
15. Passive voice default

### Punctuation / formatting (16–19)
16. Em dash overuse
17. Bold overuse
18. Quote-hallucination block
19. Uniform sentence length

### Voice / register (20–25)
20. No stance
21. Reader-moralizing
22. Emotion-by-label
23. Generic you
24. Knowledge-cutoff disclaimer
25. Over-explaining

### Chinese-specific (26–27)
26. Translationese / 翻译腔
27. Four-character slogan endings / 口号式结尾

## Language rules

### English
- Use concrete verbs; kill nominalizations.
- Vary sentence length; allow fragments in casual text.
- Replace "utilize", "leverage", "delve" with "use", "use", "look into".
- Drop "In this article, we will..." unless it is a real roadmap.

### Chinese
- 长句先断，再调语序；拆长定语从句。
- 能用逗号不用顿号，能用句号不用分号。
- 删掉「进行」「做出」「展开」等空动词。
- 控制「的」密度；连续多个「的」必拆分。
- 段末不强行升华，允许开放式收尾。

## Tone modes

| Mode | Direction |
|---|---|
| `conversational` | shorter sentences, contractions, direct address |
| `academic` | keep citations/precision, remove buzzwords/hedges |
| `business` | clear action, no fluff, kill sycophancy |
| `story` | scene, sensory detail, rhythm, point of view |
| `social` | punchy, platform-aware, kill slogans |
| `minimal` | only remove tells; do not inject voice |

## Advanced options

- `--deep`: second critique pass after rewrite.
- `--voice <file.md>`: adopt a writer-voice profile only if explicitly asked.
- `--seed`: benchmark the same text before and after.

## Self-check

1. Did I remove the top 3 detected tells?
2. Did I invent any facts, examples, or quotes?
3. Is the register still appropriate?
4. Does it sound like the same author, just less mechanical?

Fix any "no" before returning.
