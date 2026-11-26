<!--
SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# ADR: Stay a Single-Module Fork

- Status: **Accepted**
- Date: 2026-11-27

## Context

Contacts is a fork of LineageOS Contacts: about 460 Java files and two Kotlin files, View-based, in
one app whose classes call each other directly. The app template splits apps into `:app`,
`:core:model` and `:core:data`, and expects Kotlin, Compose and PvotLib.

## Decision

Keep one `:app` module, upstream's packages (renamed to `org.prauga.contacts`) and its Java. Align
the build logic, quality checks, CI, REUSE and any code PVOT adds with the template. Upstream files
keep their style and are not reformatted.

## Outcomes

### Positive Outcomes

- Upstream merges stay mechanical apart from the package rename.
- The build, checks and CI match every other PVOT app.

### Negative Outcomes

- No module boundaries enforce layering; it relies on packages and review.
