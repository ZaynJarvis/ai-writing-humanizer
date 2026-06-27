# Sources and How to Extend This Toolkit

## Directly evaluated and cited repositories

- [Leey21/awesome-ai-research-writing](https://github.com/Leey21/awesome-ai-research-writing) — academic writing prompt library.
- [blader/humanizer](https://github.com/blader/humanizer) — foundational English Claude Code skill.
- [Imbad0202/academic-research-skills](https://github.com/Imbad0202/academic-research-skills) — full academic research pipeline.
- [anthropics/skills](https://github.com/anthropics/skills) — official Anthropic agent skills.
- [Orchestra-Research/AI-Research-SKILLs](https://github.com/Orchestra-Research/AI-Research-SKILLs) — ML/AI conference paper skills.
- [op7418/Humanizer-zh](https://github.com/op7418/Humanizer-zh) — Chinese localization of blader/humanizer.
- [lynote-ai/humanize-text](https://github.com/lynote-ai/humanize-text) — production Python humanization pipeline.
- [LifelongLazyLearner/qu-ai-wei](https://github.com/LifelongLazyLearner/qu-ai-wei) — Chinese-native de-AI skill.
- [ai-zixun/humanizer-zh](https://github.com/ai-zixun/humanizer-zh) — Chinese long-form nonfiction skill.
- [devswha/patina](https://github.com/devswha/patina) — CJK measurement-first detector + rewriter.
- [harshaneel/humanize](https://github.com/harshaneel/humanize) — research-grounded English humanizer + ai-check.
- [marmbiz/humanizer-de](https://github.com/marmbiz/humanizer-de) — German humanizer.
- [ilyautov/humanizer-ru](https://github.com/ilyautov/humanizer-ru) — Russian humanizer.
- [gabelul/slopbuster](https://github.com/gabelul/slopbuster) — prose + code + academic skill.
- [B1lli/remove-ai-flavor-writing-skill](https://github.com/B1lli/remove-ai-flavor-writing-skill) — Chinese short-form skill.
- [DadaNanjesha/AI-Text-Humanizer-App](https://github.com/DadaNanjesha/AI-Text-Humanizer-App) — Streamlit academic rewriter.
- [OrbitWebTools/Humanize-AI](https://github.com/OrbitWebTools/Humanize-AI) — client-side PWA demo.
- [hylarucoder/ai-flavor-remover](https://github.com/hylarucoder/ai-flavor-remover) — single Chinese prompt.
- [MrGeDiao/shuorenhua](https://github.com/MrGeDiao/shuorenhua) — Chinese social/long-form skill.
- [Anbeeld/WRITING.md](https://github.com/Anbeeld/WRITING.md) — technical/content writing rules.
- [conorbronsdon/avoid-ai-writing](https://github.com/conorbronsdon/avoid-ai-writing) — multi-agent pattern removal.
- [Aboudjem/humanizer-skill](https://github.com/Aboudjem/humanizer-skill) — 43-pattern skill.

## Research literature referenced by the evaluated repos

The strongest research-grounded project, `harshaneel/humanize`, cites 50+ papers from 2024–2026 on:

- Perplexity-based detection (GPTZero, Binoculars, etc.)
- Burstiness and stylometry
- Learned classifiers (GPTZero, Grammarly, Turnitin)
- Adversarial robustness of AI-text detectors

For a current list, see the `harshaneel/humanize` repository directly.

## How to extend this toolkit

1. **Add a new language.** Create `patterns/ai-tells-<lang>.md` and add language-specific rules to `SKILL.md`. Follow the same "tell → why → fix" structure.
2. **Add a new register.** Add a tone mode to `SKILL.md` under "Tone modes". Define what it preserves and what it removes.
3. **Add a new tell.** Open an issue or PR with a before/after example. If the tell is language-specific, add it to the appropriate language file; otherwise add it to the core 27 in `SKILL.md`.
4. **Add a benchmark.** If you have before/after detector scores or human ratings, add them to `docs/evaluation.md` under a new "Community benchmarks" section.
5. **Add an agent integration.** Update `install.sh` to copy the skill into the new agent's directory. Add the invocation syntax to `README.md`.

## Extension principles

- Keep the skill static and self-contained. Do not add external API calls unless you provide a clear opt-in.
- Preserve the "subtract first, add second" workflow.
- Every new rule must have a before/after example.
- Every new claim must be honest about what it can and cannot do.
