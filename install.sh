#!/usr/bin/env sh

set -E

if [ -z "${PREFIX}" ]; then
	PREFIX="/usr/local"
fi

BIN_PATH="${PREFIX}/bin"
SHARE_PATH="${PREFIX}/share/mono-build"
SHARE_MAN_PATH="${PREFIX}/share/man/man1"

mkdir -p "${BIN_PATH}"
mkdir -p "${SHARE_PATH}"
mkdir -p "${SHARE_MAN_PATH}"

for file in bin/*; do
	cp "${file}" "${BIN_PATH}"
done

for file in share/mono-build/*; do
	cp "${file}" "${SHARE_PATH}"
done

cp share/man/mono-build.1 "${SHARE_MAN_PATH}"

echo "Installed mono-build at ${PREFIX}"