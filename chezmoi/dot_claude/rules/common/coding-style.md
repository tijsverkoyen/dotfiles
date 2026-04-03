# Coding Style

## Core Principles
- Write self-documenting code with clear, intention-revealing names
- Apply SOLID principles, particularly Single Responsibility and Dependency Inversion

## Input Validation

ALWAYS validate at system boundaries:
- Validate all user input before processing
- Fail fast with clear error messages
- Never trust external data (API responses, user input, file content)

## Code Quality Checklist

Before marking work complete:
- [ ] Code is readable and well-named
- [ ] Functions are small (<50 lines)
- [ ] Files are focused (<800 lines)
- [ ] No deep nesting (>4 levels)
- [ ] Proper error handling
- [ ] No hardcoded values (use constants or config)