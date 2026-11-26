<!--
SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# ADR: Lint Baseline for Upstream Code

- Status: **Accepted**
- Date: 2026-11-27

## Context

Upstream code has 263 lint errors under the PVOT lint defaults. Lint also crashes in
`UnusedResourceDetector` on this app's resources, and upstream translations are incomplete.

## Decision

Keep an errors-only `app/lint-baseline.xml` for the inherited errors; when files move, regenerate it
keeping error entries only. Ignore `MissingTranslation`, `UnusedResources` and
`UnusedIds` in the root `lint.xml`. New code may not add baseline entries.

## Outcomes

### Positive Outcomes

- Lint runs on every build and catches new errors.

### Negative Outcomes

- Unused resources go unreported until the lint crash is fixed.
