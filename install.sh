#!/bin/sh

set -E

if [ -z "${PREFIX}" ]; then
	PREFIX="/usr/local"
fi

BIN_PATH="${PREFIX}/bin"
SHARE_PATH="${PREFIX}/share/mono-build"

mkdir -p "${BIN_PATH}"
mkdir -p "${SHARE_PATH}"

for file in bin/*; do
	cp "${file}" "${BIN_PATH}"
done

for file in share/mono-build/*; do
	cp "${file}" "${SHARE_PATH}"
done

echo "Installed mono-build at ${PREFIX}"