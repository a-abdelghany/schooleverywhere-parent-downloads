# SchoolEverywhere Parent downloads

This repository contains public installers for **SchoolEverywhere Parent**, a private, read-only desktop helper for SchoolEverywhere families.

The downloads contain no usernames, passwords, student information, reports, or family files. Each family enters its own details locally during first-time setup.

## Easiest installation

### macOS

1. Download `Install-SchoolEverywhere-Mac.sh` from the latest release.
2. Open **Terminal**.
3. Type `bash `, including the space, drag the downloaded `.sh` file into Terminal, and press **Return**.
4. The helper downloads the pinned app, verifies its SHA-256 checksum, installs it in the current user's `Applications` folder, and opens it.

### Windows

1. Download `Install-SchoolEverywhere-Windows.bat` from the latest release.
2. Double-click it.
3. The helper downloads the pinned installer, verifies its SHA-256 checksum, and opens it.

## Direct downloads

The release also contains the macOS DMG, the recommended Windows installer, and the Windows portable ZIP.

## Security note

The helper scripts use HTTPS and refuse to open a download unless it matches the pinned SHA-256 checksum. They do not ask for or store GitHub credentials.

The current applications are not yet signed with an Apple Developer ID or a Windows Authenticode certificate. These verified helper downloads improve installation consistency but are not a replacement for platform signing and notarization. macOS or Windows may still apply additional security checks.

SchoolEverywhere Parent only reads the LMS. It does not submit assignments, send messages, change attendance, or delete LMS content.
