#!/bin/bash

set -e

if [ $# -ne 1 ]; then
	echo "Uasge: $0 [fs|naoff|naon]"
	exit 1
fi

SRC_PATH=$(dirname "$0")
MODE=$1
SRC=""

case "$MODE" in
	fs)
		SRC="${SRC_PATH}/grub.fs"
		;;
	naoff)
		SRC="${SRC_PATH}/grub.native"
		;;
	naon)
		SRC="${SRC_PATH}/grub.native-iommu"
		;;
	*)
		echo "Invalid: $MODE"
		exit 1
		;;
esac

echo $SRC
cp $SRC /etc/default/grub
update-grub
