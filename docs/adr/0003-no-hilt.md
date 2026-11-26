<!--
SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# ADR: No Hilt

- Status: **Accepted**
- Date: 2026-11-27

## Context

The template uses Hilt. Contacts has no PVOT ViewModels or Compose screens; upstream wires objects
with its own factories (`ObjectFactory`, `AccountTypeManager.getInstance`, `InjectedServices`).

## Decision

Don't add Hilt. Revisit when PVOT code adds screens that need injected dependencies.

## Outcomes

### Positive Outcomes

- No annotation processing, no `@HiltAndroidApp` around upstream's `ContactsApplication`.

### Negative Outcomes

- New code that wants injection has to introduce Hilt first.
