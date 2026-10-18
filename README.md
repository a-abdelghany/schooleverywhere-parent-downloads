# SchoolEverywhere Parent downloads

This repository contains public installers for **SchoolEverywhere Parent**, a private, read-only desktop helper for SchoolEverywhere families.

The downloads contain no usernames, passwords, student information, reports, or family files. Each family enters its own details locally during first-time setup.

## Installation guides

- [Detailed Arabic installation guide — دليل التثبيت بالعربية](INSTALLATION-GUIDE-AR.md)
- The shorter English instructions remain below.

## Easiest installation

### macOS

1. Open the latest **Release**, expand **Assets**, and download `SchoolEverywhere-Parent-Mac-Helper.zip`. Do not save the script from the repository's source-code page; that can save a GitHub webpage instead of the script.
2. Open the ZIP to extract `Install-SchoolEverywhere-Mac.sh`.
3. Open **Terminal**.
4. Type `bash `, including the space, drag the extracted `.sh` file into Terminal, and press **Return**.
5. The helper downloads the pinned app, verifies its SHA-256 checksum, installs it in the current user's `Applications` folder, and opens it.

### Windows

1. Open the latest **Release**, expand **Assets**, and download `SchoolEverywhere-Parent-Windows-Helper.zip`.
2. Open the ZIP and extract `Install-SchoolEverywhere-Windows.bat`.
3. Double-click it.
4. The helper downloads the pinned installer, verifies its SHA-256 checksum, and opens it.

## Direct downloads

Version **1.2.16** refreshes open dashboards immediately when scheduled updates or updates started in another tab finish. No manual page refresh or extra LMS sync is needed. Local notifications reconnect automatically after interruptions, with saved-data recovery on returning to the tab and a local fallback check. Failed syncs retain saved information and show a warning.

Version **1.2.15** uses equal-height, collapsed-by-default cards across **Assignments**, **Teacher updates**, **Mail box**, and **Overview**. Choose **View details** for full text, attachments, links, and assignment completion/undo controls. Automatic refresh now has a configurable **30-minute default cooldown** under Settings → Schedule; manual updates and normal schedules bypass it. Incremental sync still checks new posts every run, but reuses attendance between due checks, rescans existing shared Drive folders daily, checks healthy links weekly, and retries failed links/downloads daily. Daily boundaries use Cairo time; marks remain weekly and timetable refresh remains on demand. Saved data and settings are preserved.

Version **1.2.14** adds **Student** login (automatically using `tae`), while Parent login continues to use `pae`. The sync screen now shows real completed/current/waiting sections for each student and closes when collection finishes, without waiting for the dashboard reload. Local request timeouts and finished-process recovery help prevent a stuck loading screen. Messages preserve paragraph breaks and Arabic direction, long overview messages can be expanded, and collapsed cards stay compact. The next school update refreshes older cached message details once to recover formatting. Student authentication mapping and sync completion were tested with simulated accounts; a real student account must still complete its first login validation. School collection remains read-only.

Version **1.2.13** adds optional live school refresh on dashboard load with a five-minute cooldown across reloads and browser tabs. Enable **Refresh automatically when opening the dashboard** in Settings → Schedule and select **Save live refresh**. Missed scheduled updates are caught up automatically, even with live refresh off. A fetching screen lets you select **View saved data** while the update continues; **Update now** remains available manually. The cooldown starts again when a collection finishes, including a failed attempt. Existing weekly reconciliation and marks-refresh rules are unchanged.

Version **1.2.12** highlights the ongoing lesson when you open the weekly timetable, using the school's Cairo timezone. It adds no background timer or extra LMS requests.

Version **1.2.11** automatically quits the Mac helper after successfully opening a verified update DMG and leaves installation instructions visible in the browser. If opening fails, the app stays running. Install the replacement in the same Applications folder before opening it; running directly inside the DMG does not install the update. This automatic quit behavior applies to future updates after 1.2.11 has been installed.

Version **1.2.10** fixes the Settings update button stopping after confirmation. When upgrading from 1.2.8 or 1.2.9, use the Dashboard's **Review and update** banner or the helpers: the old Settings button remains affected until this version is installed. Version 1.2.8 remains available for manual rollback.

Version **1.2.9** connects LMS File/Voice attachments to their activity cards, preserving original filenames and opening saved copies directly. It also prevents duplicate file-open actions after refreshing cards. Version 1.2.8 remains available from its existing release if a manual rollback is needed.

Version **1.2.8** displays structured school times in the parent's timezone, with automatic device detection and a manual override in Settings. It adds missed-schedule alerts, simplifies resources to one Open action, and fixes collection when teacher/sender fields are empty. After-school checks follow the Cairo timetable plus ten minutes; fixed checks follow parent time. School dates remain anchored to Cairo.

Version **1.2.7** adds collapsible weekly panels with item counts throughout the dashboard, classifies resources as Recordings / Material / H.W. / Other, exposes individual shared Drive file links, and fixes HTTPS certificate verification for application updates. The first school update after upgrading refreshes resource metadata once before returning to normal incremental collection.

The release also contains the macOS DMG, the recommended Windows installer, and the Windows portable ZIP.

Version 1.2.6 adds consent-based application updates. After installing this release, the app checks for newer versions at startup and no more than once every 24 hours. It shows the release notes and always asks the parent before downloading or opening an installer. Existing settings, credentials, student history, saved resources, schedules, and local assignment status remain on the computer during an update.

Windows opens the verified per-user installer after confirmation. macOS opens a verified DMG; because the current app is not yet Apple-notarized, the parent must quit the old copy and drag the replacement to Applications. Version 1.2.5 and older do not contain the updater, so they must be upgraded to 1.2.6 using the helper or direct installer once.

## Security note

The helper scripts use HTTPS and refuse to open a download unless it matches the pinned SHA-256 checksum. They do not ask for or store GitHub credentials.

In-app updates apply the same file-size and SHA-256 verification before opening an installer. The public `update-manifest.json` contains only release versions, notes, download URLs, sizes, and checksums; it never contains family or LMS data.

The current applications are not yet signed with an Apple Developer ID or a Windows Authenticode certificate. These verified helper downloads improve installation consistency but are not a replacement for platform signing and notarization. macOS or Windows may still apply additional security checks.

SchoolEverywhere Parent only reads the LMS. It does not submit assignments, send messages, change attendance, or delete LMS content.
