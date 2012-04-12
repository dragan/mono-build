#!/bin/sh

set -E

if [ -z "${PREFIX}" ]; then
	PREFIX="/usr/local"
fi

SHARE_PATH="${PREFIX}/share/mono-build"

for file in bin/*; do
	rm "${PREFIX}"/"${file}"
done

rm -rf "${SHARE_PATH}"

echo "Uninstalled mono-build at ${PREFIX}"