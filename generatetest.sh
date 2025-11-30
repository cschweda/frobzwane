#!/bin/bash
# FROBSWANE Test Generator
# Records a play session or creates a test script interactively
#
# Usage:
#   ./generatetest.sh                 - Interactive mode
#   ./generatetest.sh output.txt      - Create new test file
#   ./generatetest.sh --record        - Record a live play session
#   ./generatetest.sh --help          - Show help

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_FILE="${1:-test.txt}"
MODE="interactive"

# Parse arguments
for arg in "$@"; do
    case $arg in
        --help|-h)
            echo "FROBSWANE Test Generator"
            echo ""
            echo "Usage:"
            echo "  ./generatetest.sh                 - Interactive mode"
            echo "  ./generatetest.sh output.txt      - Create new test file"
            echo "  ./generatetest.sh --record        - Record a play session"
            echo "  ./generatetest.sh --help          - Show this help"
            echo ""
            echo "Test file format: Plain text, one command per line."
            echo "Lines starting with # are comments."
            echo ""
            echo "Common commands:"
            echo "  l, look        - Look around"
            echo "  i, inventory   - Check inventory"
            echo "  x <obj>        - Examine object"
            echo "  n, s, e, w     - Move directions"
            echo "  take, drop     - Pick up/put down"
            echo "  q, quit        - Quit game"
            echo ""
            exit 0
            ;;
        --record|-r)
            MODE="record"
            ;;
        *)
            if [[ ! "$arg" =~ ^- ]]; then
                OUTPUT_FILE="$arg"
            fi
            ;;
    esac
done

cd "$SCRIPT_DIR"

# Record mode: play the game and capture commands
if [ "$MODE" = "record" ]; then
    echo "=========================================="
    echo "FROBSWANE Test Recorder"
    echo "=========================================="
    echo ""
    
    if [ ! -f "frobzwane.z5" ]; then
        echo "Error: Game file not found. Run './build.sh' first."
        exit 1
    fi
    
    # Create a temporary file for the transcript
    TEMP_LOG=$(mktemp)
    
    echo "Play the game normally. Your commands will be recorded."
    echo "Type 'quit' and 'y' when done."
    echo ""
    echo "Starting game..."
    echo ""
    
    # Use script to capture the session
    if command -v script &> /dev/null; then
        script -q -c "dfrotz frobzwane.z5" "$TEMP_LOG"
    else
        echo "Recording requires 'script' command."
        echo "Playing without recording..."
        dfrotz frobzwane.z5
        exit 0
    fi
    
    # Extract commands (lines after > prompt)
    echo ""
    echo "Processing transcript..."
    
    # Create header
    echo "# FROBSWANE Test Script" > "$OUTPUT_FILE"
    echo "# Recorded on $(date)" >> "$OUTPUT_FILE"
    echo "# One command per line" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    
    # Extract commands from transcript
    # Look for lines that follow the > prompt
    grep -oP '(?<=>)[^\n]+' "$TEMP_LOG" | while read -r cmd; do
        # Clean up the command
        cmd=$(echo "$cmd" | tr -d '\r' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')
        if [ -n "$cmd" ]; then
            echo "$cmd" >> "$OUTPUT_FILE"
        fi
    done
    
    rm -f "$TEMP_LOG"
    
    COMMAND_COUNT=$(grep -v '^#' "$OUTPUT_FILE" | grep -v '^$' | wc -l)
    
    echo ""
    echo "=========================================="
    echo "✓ Recording saved: $OUTPUT_FILE"
    echo "=========================================="
    echo "Commands recorded: $COMMAND_COUNT"
    echo ""
    echo "Run the test with:"
    echo "  ./runtest.sh $OUTPUT_FILE"
    echo ""
    exit 0
fi

# Interactive mode
echo "=========================================="
echo "FROBSWANE Test Generator"
echo "=========================================="
echo ""
echo "Enter commands one per line."
echo "Lines starting with # become comments."
echo ""
echo "Special commands:"
echo "  done     - Save and exit"
echo "  cancel   - Exit without saving"
echo "  help     - Show common commands"
echo ""

# Check if file exists
if [ -f "$OUTPUT_FILE" ]; then
    read -p "File '$OUTPUT_FILE' exists. Overwrite? (y/n): " CONFIRM
    if [ "$CONFIRM" != "y" ] && [ "$CONFIRM" != "Y" ]; then
        echo "Cancelled."
        exit 0
    fi
fi

# Create header
echo "# FROBSWANE Test Script" > "$OUTPUT_FILE"
echo "# Created on $(date)" >> "$OUTPUT_FILE"
echo "# One command per line" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "Enter commands (type 'done' when finished):"
echo ""

COMMAND_COUNT=0

while true; do
    read -p "> " INPUT
    
    case "$INPUT" in
        done|DONE)
            break
            ;;
        cancel|CANCEL)
            rm -f "$OUTPUT_FILE"
            echo "Cancelled."
            exit 0
            ;;
        help|HELP)
            echo ""
            echo "Common commands:"
            echo "  l, look        - Look around"
            echo "  i, inventory   - Check inventory"  
            echo "  x <obj>        - Examine object"
            echo "  take <obj>     - Pick up object"
            echo "  drop <obj>     - Put down object"
            echo "  n, s, e, w     - Move in direction"
            echo "  u, d           - Go up/down"
            echo "  in, out        - Enter/exit"
            echo "  open <obj>     - Open something"
            echo "  close <obj>    - Close something"
            echo "  q, quit        - Quit game"
            echo "  score          - Check score"
            echo ""
            echo "Use # at start of line for comments"
            echo ""
            ;;
        "")
            # Empty line - add blank line to output
            echo "" >> "$OUTPUT_FILE"
            ;;
        \#*)
            # Comment
            echo "$INPUT" >> "$OUTPUT_FILE"
            ;;
        *)
            echo "$INPUT" >> "$OUTPUT_FILE"
            COMMAND_COUNT=$((COMMAND_COUNT + 1))
            ;;
    esac
done

echo ""
echo "=========================================="
echo "✓ Test file created: $OUTPUT_FILE"
echo "=========================================="
echo "Commands: $COMMAND_COUNT"
echo ""
echo "Run the test with:"
echo "  ./runtest.sh $OUTPUT_FILE"
echo ""

