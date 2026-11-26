<!--
SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# ADR: Skip Upstream Kotlin in Spotless and Detekt

- Status: **Accepted**
- Date: 2026-11-27

## Context

The convention plugins format and check every Kotlin file under `src/`. The only Kotlin in the app,
`org.prauga.contacts.sdn`, comes from upstream in its own style.

## Decision

Exclude `org/prauga/contacts/sdn/` from Spotless and detekt in `app/build.gradle.kts`. Kotlin that
PVOT adds is formatted and checked like in every other app.

## Outcomes

### Positive Outcomes

- Upstream Kotlin stays byte-identical, so merges stay clean.

### Negative Outcomes

- The exclusion has to grow if upstream adds Kotlin elsewhere.
