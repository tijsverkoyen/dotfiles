---
paths:
  - "**/*.php"
  - "**/composer.lock"
  - "**/composer.json"
---
# PHP Security

> This file extends [common/security.md](../common/security.md) with PHP specific content.

## Input and Output

- Validate request input at the framework boundary (`FormRequest`, Symfony Validator, or explicit DTO validation).
- Escape output in templates by default; treat raw HTML rendering as an exception that must be justified.
- Never trust query params, cookies, headers, or uploaded file metadata without validation.

## Database Safety

- Use prepared statements (`PDO`, Doctrine query builder) for all dynamic queries.
- No string-building SQL in controllers/views.

## Secrets and Dependencies

- Load secrets from environment variables or a secret manager, never from committed config files.
- Run `composer audit` in CI and review new package maintainer trust before adding dependencies.
- Pin major versions deliberately and remove abandoned packages quickly.

## Auth and Session Safety

- Enforce CSRF protection on state-changing web requests.
