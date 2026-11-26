<!--
SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# ADR: A User App Without System APIs

- Status: **Accepted**
- Date: 2026-11-27

## Context

The Soong build compiled against `system_current` as a privileged system app. A Gradle build uses
the public SDK and installs as a normal app, so privileged permissions are never granted. The only
system API in use was `DefaultAccount.setDefaultAccountForNewContacts`, behind
`SET_DEFAULT_ACCOUNT_FOR_CONTACTS`, and only test hooks called it.

## Decision

Build against the public SDK only. Remove the default-account write and its permission; people pick
the default account in Android's own settings screen, which the app already opens. Leave the other
upstream permissions declared until a permission audit removes or justifies them.

## Outcomes

### Positive Outcomes

- The app can ship from any store and be updated without a ROM build.

### Negative Outcomes

- Features that rely on privileged permissions may work less well than in the system app.
