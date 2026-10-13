#!/bin/bash

set -euo pipefail

VERSION="v1.2.6"
REPOSITORY="a-abdelghany/schooleverywhere-parent-downloads"
FILE_NAME="SchoolEverywhere-Parent-macOS.dmg"
EXPECTED_SHA256="f114c75ab43309c4b35d9cc4f95b2ef8a4e7b1611fa42f09c959cc76d2df4cf1"
DOWNLOAD_URL="https://github.com/${REPOSITORY}/releases/download/${VERSION}/${FILE_NAME}"

TEMP_DIR="$(mktemp -d "${TMPDIR:-/tmp}/schooleverywhere-parent.XXXXXX")"
DMG_PATH="${TEMP_DIR}/${FILE_NAME}"
MOUNT_POINT="${TEMP_DIR}/mounted"
MOUNTED=0

cleanup() {
  if [[ "${MOUNTED}" -eq 1 ]]; then
    hdiutil detach "${MOUNT_POINT}" -quiet || true
  fi
  rm -rf "${TEMP_DIR}"
}
trap cleanup EXIT

echo "SchoolEverywhere Parent ${VERSION} installer"
echo "Downloading the verified macOS application..."

/usr/bin/curl \
  --fail \
  --location \
  --proto '=https' \
  --tlsv1.2 \
  --retry 3 \
  --output "${DMG_PATH}" \
  "${DOWNLOAD_URL}"

ACTUAL_SHA256="$(/usr/bin/shasum -a 256 "${DMG_PATH}" | /usr/bin/awk '{print $1}')"
if [[ "${ACTUAL_SHA256}" != "${EXPECTED_SHA256}" ]]; then
  echo "Safety check failed: the downloaded file does not match the published release."
  echo "Nothing was installed."
  exit 1
fi

echo "Download verified."
/bin/mkdir -p "${MOUNT_POINT}"
/usr/bin/hdiutil attach -nobrowse -readonly -mountpoint "${MOUNT_POINT}" "${DMG_PATH}" >/dev/null
MOUNTED=1

SOURCE_APP="${MOUNT_POINT}/SchoolEverywhere Parent.app"
INSTALL_DIR="${HOME}/Applications"
INSTALLED_APP="${INSTALL_DIR}/SchoolEverywhere Parent.app"

if [[ ! -d "${SOURCE_APP}" ]]; then
  echo "The application was not found in the verified disk image."
  exit 1
fi

/bin/mkdir -p "${INSTALL_DIR}"
if [[ -e "${INSTALLED_APP}" ]]; then
  BACKUP_APP="${INSTALL_DIR}/SchoolEverywhere Parent.backup-$(date +%Y%m%d-%H%M%S).app"
  echo "Preserving the existing application as:"
  echo "${BACKUP_APP}"
  /bin/mv "${INSTALLED_APP}" "${BACKUP_APP}"
fi

/usr/bin/ditto "${SOURCE_APP}" "${INSTALLED_APP}"

echo "Installed successfully in ${INSTALL_DIR}."
echo "Opening SchoolEverywhere Parent..."
/usr/bin/open "${INSTALLED_APP}"
