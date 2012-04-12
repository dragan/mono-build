#!/usr/bin/env sh

set -E

if [ -z "${PREFIX}" ]; then
	PREFIX="/usr/local"
fi

SHARE_PATH="${PREFIX}/share/mono-build"
SHARE_MAN_PATH="${PREFIX}/share/man/man1"

for file in bin/*; do
	rm "${PREFIX}"/"${file}"
done

rm -rf "${SHARE_PATH}"

rm "${SHARE_MAN_PATH}/mono-build.1"

echo "Uninstalled mono-build at ${PREFIX}"