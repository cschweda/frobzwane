#!/bin/bash
# Build script for FROBSWANE
# Compiles Inform 6 source to Z5 binary
# This project is self-contained - all library files are included

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LIBRARY_PATH="$SCRIPT_DIR/lib/inform6lib"
SOURCE_FILE="frobzwane.inf"
OUTPUT_FILE="frobzwane.z5"
VERSION=5

# Find inform compiler
INFORM_CMD=$(which inform 2>/dev/null || echo "/home/cschweda/infocom/Inform6/inform")

# Check if library exists
if [ ! -d "$LIBRARY_PATH" ]; then
    echo "Error: Library not found at $LIBRARY_PATH"
    echo "This project should be self-contained. Please ensure lib/inform6lib exists."
    exit 1
fi

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file not found: $SOURCE_FILE"
    exit 1
fi

echo "Compiling $SOURCE_FILE..."
echo "Using compiler: $INFORM_CMD"
echo "Library path: $LIBRARY_PATH"
echo ""

cd "$SCRIPT_DIR"
$INFORM_CMD -v$VERSION +$LIBRARY_PATH $SOURCE_FILE $OUTPUT_FILE

if [ $? -eq 0 ]; then
    echo ""
    echo "✓ Compilation successful!"
    echo "  Output: $OUTPUT_FILE"
    ls -lh $OUTPUT_FILE
    echo ""
    echo "To play: frotz $OUTPUT_FILE"
else
    echo ""
    echo "✗ Compilation failed"
    exit 1
fi
