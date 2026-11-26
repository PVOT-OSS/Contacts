<!--
SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# Contacts

The PVOT-OSS contacts app, based on [LineageOS Contacts](https://github.com/LineageOS/android_packages_apps_Contacts):
browse, search, edit and label your contacts, open a contact's card, and import or export vCard
files. No ads, no analytics, no tracking.

## Build

Open the project in Android Studio, or:

```sh
./gradlew assembleDebug            # org.prauga.contacts.dev
./gradlew assembleRelease          # org.prauga.contacts
./gradlew spotlessCheck detekt lintDebug testDebugUnitTest
./gradlew connectedDebugAndroidTest  # instrumented tests; they add and remove test contacts
```

Requires JDK 21 and the Android SDK (compile SDK 37.1). Min and target SDK are 36.

## Layout

| path | what |
|---|---|
| `app/` | the app: upstream Java in `org.prauga.contacts`, instrumented tests in `src/androidTest` |
| `app/src/main/java/com/android/` | AOSP vCard, PhoneCommon and android-common code the app bundles |
| `build-logic/convention/` | the shared PVOT Gradle convention plugins |
| `config/detekt/`, `lint.xml` | quality checks |
| `docs/adr/` | architecture decision records |
| `fastlane/`, `PrivacyPolicy.md` | store listing and privacy policy |
| `REUSE.toml`, `LICENSES/` | REUSE 3.3 licensing |

## License

Apache License 2.0; see `LICENSES/` and `REUSE.toml`. One test recording is CC-BY-3.0 (`NOTICE`).
