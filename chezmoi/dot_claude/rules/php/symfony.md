---
paths:
  - "**/*.php"
  - "**/composer.json"
---

# Symfony

> This file describes Symfony specific content.

Write clean, maintainable, production-ready Symfony code and follow official Symfony coding standards and best practices
rigorously.

## Core Competencies

- **Symfony Components**: Controllers, Services, Events, Listeners, Subscribers, Middleware, Console Commands, Forms,
  Validators, Security, Routing, HttpKernel
- **Doctrine ORM**: Entities, Repositories, Migrations, Query Builder, DQL, Relationships, Lifecycle Callbacks
- **Dependency Injection**: Service container, autowiring, autoconfiguration, service tags, compiler passes
- **Configuration**: YAML, PHP, and XML configs, environment variables, secrets management
- **Testing**: PHPUnit, functional tests, unit tests, WebTestCase, KernelTestCase
- **Performance**: Caching strategies, lazy loading, query optimization

## Code Style

- Always use PHP 8.x features where appropriate (constructor promotion, named arguments, enums, readonly properties,
  match expressions, union types, nullsafe operator)
- Follow PSR-12 coding standards and Symfony's coding conventions
- Use type declarations everywhere: parameter types, return types, property types
- Prefer constructor injection over setter injection or property injection
- Use `#[Route]`, `#[IsGranted]`, `#[ORM\Entity]`, and other PHP 8 attributes instead of annotations or YAML when
  appropriate
- Write self-documenting code with clear, intention-revealing names
- Apply SOLID principles, particularly Single Responsibility and Dependency Inversion
- Namespaces should mirror directory structure, and class names should be descriptive of their purpose and role in the
  application
- Use invokeable controllers, commands, ... when possible for simplicity and clarity

## Quality Checks

Before presenting code, verify:

- [ ] All classes have correct namespaces matching their file paths
- [ ] All dependencies are injected via constructor (preferred) or appropriate method
- [ ] Return types and parameter types are declared
- [ ] Services follow the single responsibility principle
- [ ] No hardcoded values that should be configuration parameters
- [ ] Security considerations are addressed (input validation, authorization checks)
- [ ] Code is compatible with the Symfony version in use

## Common Patterns to Follow

**Controller**: Extend `AbstractController`, keep thin (delegate to services), use `#[Route]` attributes, return
`JsonResponse` or `Response`.

**Service**: Plain PHP class with constructor injection, tagged services when needed, no direct container access.

**Entity**: Use `#[ORM\Entity]` and `#[ORM\Table]` attributes, define all column mappings, implement getters/setters or
use readonly properties.

**Repository**: Extend `ServiceEntityRepository`, add custom query methods using QueryBuilder or DQL.

**Form**: Extend `AbstractType`, define `buildForm()` and `configureOptions()`, use Symfony Validator constraints.

**Event Listener/Subscriber**: Implement `EventSubscriberInterface` for subscribers, use `#[AsEventListener]` attribute
for listeners.

**Command**: Extend `Command`, use `#[AsCommand]` attribute, inject services via constructor.

## Error Handling

- Use Symfony's exception hierarchy (`HttpException`, `NotFoundHttpException`, etc.)
- Implement proper error responses for APIs using `JsonResponse` with appropriate HTTP status codes
- Leverage Symfony's event system for global exception handling via `KernelEvents::EXCEPTION`

## Commands

When there is a `.php-version` in the project use `symfony php` instead of `php` to ensure the correct PHP version is used.

## Memory

**Update memory** as you discover project-specific patterns, conventions, installed bundles, Symfony version,
database configuration, existing service structures, and architectural decisions. This builds institutional knowledge
across conversations.

Examples of what to record:

- Symfony and PHP version in use
- Custom base classes or traits used across the project
- Naming conventions for services, entities, and controllers
- Project-specific coding patterns or architectural decisions
- Installed third-party bundles and how they are configured
- Database structure and key entity relationships
