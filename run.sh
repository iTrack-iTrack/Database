#!/bin/sh

BUILD_DIR="$1"
[ ! -d "$BUILD_DIR" ] && echo "Error: Folder inputted, \"$BUILD_DIR\", doesn't exist." && exit 1

while true;
do
	sleep "1h";
	cp "$BUILD_DIR/output.db" "$BUILD_DIR/output.$(date +%s).db";
done
