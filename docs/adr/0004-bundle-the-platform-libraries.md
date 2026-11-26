<!--
SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# ADR: Bundle the Platform Libraries

- Status: **Accepted**
- Date: 2026-11-27

## Context

The Soong build linked three platform libraries that have no Maven artifact:
`com.android.vcard`, `com.android.phone.common-lib` and `android-common`. Contacts uses the whole
vCard library but only four classes of the other two.

## Decision

Copy their sources from AOSP `android-17.0.0_r1` into `app/src/main/java/com/android/`, keeping
their packages and headers: the full vCard library, `PhoneConstants`, `AnimUtils`,
`PathInterpolatorCompat` and `CompositeCursorAdapter`. Hidden annotations become AndroidX ones;
nothing else changes. No PhoneCommon resources are needed.

## Outcomes

### Positive Outcomes

- A plain Gradle build with no prebuilt jars.

### Negative Outcomes

- AOSP fixes to these libraries have to be copied in by hand.
