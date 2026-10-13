# SchoolEverywhere Parent downloads

This repository contains public installers for **SchoolEverywhere Parent**, a private, read-only desktop helper for SchoolEverywhere families.

The downloads contain no usernames, passwords, student information, reports, or family files. Each family enters its own details locally during first-time setup.

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

The release also contains the macOS DMG, the recommended Windows installer, and the Windows portable ZIP.

## Security note

The helper scripts use HTTPS and refuse to open a download unless it matches the pinned SHA-256 checksum. They do not ask for or store GitHub credentials.

The current applications are not yet signed with an Apple Developer ID or a Windows Authenticode certificate. These verified helper downloads improve installation consistency but are not a replacement for platform signing and notarization. macOS or Windows may still apply additional security checks.

SchoolEverywhere Parent only reads the LMS. It does not submit assignments, send messages, change attendance, or delete LMS content.
