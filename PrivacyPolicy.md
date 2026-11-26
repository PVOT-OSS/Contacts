<!--
SPDX-FileCopyrightText: 2026 Saalim Quadri <danascape@gmail.com>
SPDX-License-Identifier: Apache-2.0
-->

# Privacy Policy — Contacts

_Effective 27 November 2026_

Contacts (package `org.prauga.contacts`) is an app published by Saalim Quadri for PVOT-OSS, based on
the LineageOS Contacts app. This policy explains what the app does with your data.

**In short: the app has no accounts of its own, no ads, no analytics and no tracking. It sends
nothing about you to PVOT-OSS or anyone else.**

## What the app reads and stores

- **Your contacts.** The app shows and edits the contacts in Android's contacts storage, which
  belongs to the system. Contacts you save go to the account you choose (for example a Google
  account or the device); that account's own app decides whether and where they sync. This app does
  not copy them anywhere else.
- **Settings** such as sort order and name format, kept in the app's private storage.
- **Files you choose.** When you import or export a vCard file, or share a contact, the app reads or
  writes only the file or the app you pick.

## Network

The app downloads a contact's photo when the account that holds the contact gives the photo as a web
address. It checks whether the device is online before asking the system to refresh your accounts.
It makes no other network requests.

## Permissions

| permission | why |
|---|---|
| Contacts (`READ_CONTACTS`, `WRITE_CONTACTS`, `GET_ACCOUNTS`, profile) | show, add, edit and delete contacts and your own card, and list the accounts they belong to |
| Phone (`CALL_PHONE`, `READ_PHONE_STATE`, `READ_PHONE_NUMBERS`, `READ_CALL_LOG`) | call a contact, read SIM contacts and recent interactions on a contact's card |
| Internet and network state | contact photos given as web addresses; checking connectivity before a refresh |
| Sync settings and statistics | show whether your accounts are syncing and start a refresh |
| Notifications, foreground service | progress of vCard import and export |
| NFC | import a contact received from another phone over NFC |
| Start at boot | set up the app's notification channel after a restart or update |
| Wake lock | keep the phone awake while a vCard file is being imported |
| Hide overlay windows | stop other apps drawing over the contact picker and the vCard account chooser |
| Vibrate | declared by the upstream app; no feature uses it |
| `GET_ACCOUNTS_PRIVILEGED`, `MANAGE_ACCOUNTS`, `USE_CREDENTIALS`, `WRITE_SETTINGS` | declared by the upstream app; this app doesn't use them (the first is granted only to system apps, the next two have had no effect since Android 6, and the app never asks for the special access the last needs) |

## Backups

Android may include the app's settings in your device backup and in a transfer to a new device.
Your contacts are backed up by the accounts that hold them, not by this app.

## Changes

Changes to this policy are published with the app's source and take effect with the release that
ships them.

## Contact

Open an issue at <https://github.com/PVOT-OSS/Contacts/issues>.
