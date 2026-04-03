# Development Workflow

> This file extends [common/git-workflow.md](./git-workflow.md) with the full feature development process that happens
> before git operations.

The Feature Implementation Workflow describes the development pipeline: research, planning, code review, and then
committing to git.

## Feature Implementation Workflow

0. **Research & Reuse** _(mandatory before any new implementation)_
    - **Code search first:** try to to find existing implementations, templates, and patterns before writing anything
      new.
    - **Check package registries:** Search packages registries (packagist.org, composer, npm, ...) before writing
      utility code.
      Prefer battle-tested libraries over hand-rolled solutions.

1. **Plan First**
    - Use **planner** agent to create implementation plan
    - Generate planning docs before coding: PRD, architecture, system_design, tech_doc, task_list
    - Identify dependencies and risks
    - Break down into phases

3. **Code Review**
    - Use available tools (phpcs, phpstan, standardjs, ...) in the project (probably documented in `.gitlab-ci.yaml`)
      after writing code
    - Address blocking issues

4. **Commit & Push**
    - Detailed commit messages
    - Follow conventional commits format
    - See [git-workflow.md](./git-workflow.md) for commit message format and PR process

5. **Pre-Review Checks**
    - Verify all automated checks (CI/CD) are passing
    - Resolve any merge conflicts
    - Ensure branch is up to date with target branch
    - Only request review after these checks pass