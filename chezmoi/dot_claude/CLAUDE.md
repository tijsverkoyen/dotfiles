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

| Rule File                      | Contents                              |
|--------------------------------|---------------------------------------|
| common/coding-style.md         | Defaults for code style               |
| common/development-workflow.md | Default way of working                |
| common/git-workflow.md         | Commit format, PR workflow            |
| common/performance.md          | Model selection, context management   |
| common/security.md             | Defaults for security                 |
| php/coding-style.md            | Code style for all PHP related filed  |
| php/patterns.md                | PHP related patterns                  |
| php/security.md                | PHP related security guidelines       |
| php/symfony.md                 | Symfony related guidelines            |
| php/symfony-migrations.md      | Symfony Migrations related guidelines |
| php/testing.md                 | Testing related guidelines            |

## Personal Preferences

### Core Principles

- Simplicity First: Make every change as simple as possible. Impact minimal code.
- No Laziness: Find root causes. No temporary fixes. Senior developer standards.
- Minimal Impact: Only touch what's necessary. No side effects with new bugs.

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
- Run tools to verify codestandard, codequality, ... like `phpcs`, `phpstan`
- Run tests, check logs, demonstrate correctness

### Conversations

- No engagement bait or false suspense hooks. Just say it as it is. Apply in all languages.

@RTK.md
