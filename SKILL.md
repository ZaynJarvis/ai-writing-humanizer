# AI Writing Unhumanizer

Remove mechanical AI flavor from English and Chinese prose while preserving facts, register, and structure.

## When to use

Use this skill when you have a draft that feels flat, robotic, over-structured, or obviously AI-generated. It works for blog posts, essays, emails, product copy, newsletters, and academic prose. Do not use it to cheat detectors or fabricate evidence.

## How it works

A three-pass workflow:

1. **Diagnose** — scan the text for AI tells and score it.
2. **Subtract** — remove mechanical patterns without adding new ideas.
3. **Add** — restore rhythm, specificity, and a human register.

## Invocation

```text
/unhumanize <file-or-paste> [--lang en|zh] [--tone <name>] [--audit-only]
```

## Parameters

- `--lang`: default is `auto` (detect from script). Override with `en` or `zh`.
- `--tone`: optional. Choose from `conversational`, `academic`, `business`, `story`, `social`, `minimal`. Default is `preserve` (keep the original register).
- `--audit-only`: return only the diagnosis and score, no rewrite.

## Guardrails (non-negotiable)

1. **Do not invent facts.** No new examples, quotes, statistics, sources, or people.
2. **Do not change meaning.** If a sentence is technically correct but awkward, rewrite it; do not alter its claim.
3. **Preserve the register.** Business email stays business email. Academic abstract stays academic abstract. Never make a paper sound like a tweet unless asked.
4. **Preserve structure when asked.** Only reorganize if the text is clearly broken or the user asks for it.
5. **Keep proper nouns, terminology, and data intact.** Fix casing only if it is genuinely wrong.
6. **When uncertain, leave it alone.** False positives are better than false repairs.

## Output format

Return exactly this structure:

```markdown
## Diagnosis
- **Overall AI-tell score:** X/27 (0 = human-like, 27 = heavily AI-flavored)
- **Top 3 patterns detected:** ...
- **Register:** ...
- **Risk notes:** ...

## Subtractions (what was removed)
1. ...
2. ...

## Additions (what was restored)
1. ...
2. ...

## Rewritten text
<full rewritten text here>

## Final audit
- Score before: X/27
- Score after: Y/27
- Still humanizeable issues: ...
```

## 27 AI tells (English + Chinese)

Score 1 point per category present. If the text is borderline, score 0.5.

### Structural tells

1. **Paragraph symmetry** — every paragraph is the same length or starts with the same pattern.
2. **List addiction** — everything is flattened into numbered or bulleted lists.
3. **Transition formula** — overuse of "firstly/secondly/finally", "in conclusion", "moreover", "furthermore".
4. **Section bloat** — every section has an explicit topic sentence, three supporting points, and a summary sentence.
5. **Hook-template fatigue** — starts with a broad question, definition, or "In today's world...".

### Lexical tells

6. **AI buzzwords** — "leverage", "delve", "tapestry", "landscape", "journey", "robust", "seamless", "multifaceted".
7. **Hedge overload** — "it is important to note", "it should be considered", "arguably" repeated.
8. **Empty intensifiers** — "very", "extremely", "highly", "significantly" without concrete backing.
9. **Sycophantic polish** — "I hope this helps", "I'm excited to", "feel free to" in contexts where a human would be more direct.
10. **Faux-certainty endings** — "In summary, X is a powerful tool that will transform Y".

### Syntactic tells

11. **Copula avoidance** — every sentence avoids "is/are" by using "represents", "constitutes", "serves as".
12. **Parallelism excess** — "not only X but also Y", "either X or Y", "both X and Y" in every other sentence.
13. **Tricolon addiction** — "X, Y, and Z" triplets everywhere.
14. **Long appositive chains** — "a leading, innovative, and comprehensive solution".
15. **Passive voice default** — passive constructions used when active would be clearer.

### Punctuation / formatting tells

16. **Em dash overuse** — em dashes used as a stylistic crutch.
17. **Bold overuse** — bolding every other phrase.
18. **Quote-hallucination block** — a standalone inspirational quote that no one asked for.
19. **Uniform sentence length** — all sentences are 15–25 words.

### Voice / register tells

20. **No stance** — the text reads like a committee summary; no opinion, no friction, no point of view.
21. **Reader-moralizing** — "remember", "always", "never" used to lecture the reader.
22. **Emotion-by-label** — saying something is "exciting" or "shocking" instead of showing it.
23. **Generic you** — "you may find that..." directed at an abstract reader.
24. **Knowledge-cutoff disclaimer** — "as of my last update" or similar meta-AI references.
25. **Over-explaining** — defining obvious terms or stating intent the reader can already infer.

### Chinese-specific tells

26. **Translationese** — 直译腔，如 "这是一个 X 的问题", "在...的背景下", "我们需要做的是"; 硬套英文从句结构；滥用 "的"、"了"、"着"。
27. **Four-character slogan endings** — 段末硬上「让我们...，共创...，开启...」或「这不仅...，更是...」口号。

## Language-specific rules

### English

- Prefer concrete verbs over nominalizations.
- Vary sentence length; allow occasional short sentences and fragments.
- Use contractions when the register allows it.
- Replace "utilize" with "use", "leverage" with "use", "delve" with "look into" or "dig into".
- Remove "In this article, we will..." unless it is a genuine roadmap.

### Chinese

- 先断句，再调语序。把长定语从句拆成短句。
- 能用逗号就不用顿号；能用句号就不用分号。
- 删掉「进行」「做出」「展开」等空动词，换成具体动词。
- 控制「的」字密度；连续多个「的」必须拆分。
- 口语化连接词（「其实」「不过」「说白了」）可适度使用，但要匹配文体。
- 段末不要强行升华，允许开放式收尾。

## Tone modes

- `conversational`: shorter sentences, contractions, direct address, minor asides.
- `academic`: keep citations, keep precision, remove buzzwords and hedges, favor active voice where possible.
- `business`: clear action, no fluff, keep politeness but kill sycophancy.
- `story`: scene, sensory detail, rhythm, opinion, one human point of view.
- `social`: punchy, platform-aware (Xiaohongshu, Bilibili, WeChat), emoji optional, kill slogans.
- `minimal`: only remove tells; do not inject voice.

## Advanced options

- `--deep`: after the rewrite, run a second pass with the host model's own critique.
- `--voice <file.md>`: adopt a writer-voice profile from a markdown file (examples: 李笑来, 王小波, Orwell, Didion). Only applies if the user explicitly asks.
- `--seed`: if the user wants a benchmark, provide the same seed text and run it through the diagnosis before and after.

## Self-check before returning

Before outputting the final rewrite, ask:

1. Did I remove at least the top 3 detected tells?
2. Did I invent any facts, examples, or quotes?
3. Did I change the core meaning?
4. Is the register still appropriate?
5. Does the rewritten text still sound like the same author, just less mechanical?
6. If this is Chinese, do the sentences read like a native speaker wrote them?

If any answer is wrong, fix it before returning.
