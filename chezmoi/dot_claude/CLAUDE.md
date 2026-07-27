# Claude.md

## Core Philosophy

You are Claude Code. I use specialized agents and skills for complex tasks.

**Key Principles:**

1. **Agent-First**: Delegate to specialized agents for complex work
2. **Parallel Execution**: Use Task tool with multiple agents when possible
3. **Plan Before Execute**: Use Plan Mode for complex operations

---

## Modular Rules

Detailed guidelines are in `~/.claude/rules/**/*.md`. Each file covers a specific area:

Before running shell commands, read `~/.claude/RTK.md` for the RTK (Rust Token Killer) CLI reference, a token-optimized proxy that saves 60-90% on dev operations.

| Rule File                      | Contents                              |
|--------------------------------|---------------------------------------|
| common/coding-style.md         | Defaults for code style               |
| common/development-workflow.md | Default way of working                |
| common/git-workflow.md         | Commit format, PR workflow            |
| common/performance.md          | Model selection, context management   |
| common/security.md             | Defaults for security                 |
| common/writing-style.md        | Defaults for writing                  |
| php/coding-style.md            | Code style for all PHP related filed  |
| php/patterns.md                | PHP related patterns                  |
| php/security.md                | PHP related security guidelines       |
| php/symfony.md                 | Symfony related guidelines            |
| php/symfony-migrations.md      | Symfony Migrations related guidelines |
| php/testing.md                 | Testing related guidelines            |

## Personal Preferences

### Core Principles

- **Think before coding**: Don't assume. Don't hide confusion. Surface tradeoffs.
    - State assumptions explicitly. If uncertain, ask.
    - If multiple interpretations exist, present them — don't pick silently.
    - If something is unclear, stop. Name what's confusing. Ask.

- **Simplicity First**: Make every change as simple as possible. Impact minimal code.
    - No features beyond what was asked.
    - No abstractions for single-use code.
    - No error handling for impossible scenarios.
    - If you write 200 lines and it could be 50, rewrite it.

- **Surgical Changes**: Only touch what you must. Clean up only your own mess.
    - Don't improve adjacent code, comments, or formatting.
    - Don't refactor things that aren't broken. Match existing style.
    - If you notice unrelated dead code, mention it — don't delete it.
    - Remove imports/variables/functions that YOUR changes made unused; leave pre-existing dead code alone.

- **No Laziness**: Find root causes. No temporary fixes. Senior developer standards.

### Code Style

- No emojis in code, comments, or documentation
- Always use English for code, comments, and documentation
- No em dashes (use commas or short sentences), active voice only, no passive constructions, no therapy speak, no
  comforting
- Use PHP Attributes whenever possible
- Use invokable controllers, commands, ... whenever possible
- Use Symfony Messenger whenever possible
- Use #[Autowire] when possible

### Git

- Conventional commits: `feat:`, `fix:`, `refactor:`, `docs:`, `chore:`
- Always test locally before committing
- Small, focused commits

### Knowledge Capture

- Personal debugging notes, preferences, and temporary context → auto memory
- Write rules for yourself that prevent the same mistake
- Team/project knowledge (architecture decisions, API changes, implementation runbooks) → follow the project's existing
  docs structure

### Verification Before Done

- Ask yourself: "Would a staff engineer approve this?"
- Transform tasks into verifiable goals before starting:
    - "Add validation" → write tests for invalid inputs, then make them pass
    - "Fix the bug" → write a test that reproduces it, then make it pass
- For multi-step tasks, state a brief plan with a verify check per step.
- Run tools to verify codestandard, codequality, ... like `phpcs`, `phpstan`
- Run tests, check logs, demonstrate correctness

### Conversations

- No engagement bait or false suspense hooks. Just say it as it is. Apply in all languages.
