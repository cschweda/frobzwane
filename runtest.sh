#!/bin/bash
# FROBSWANE Test Runner
# Runs a command script against the compiled game
# Results are always saved to test-results.txt
#
# Usage:
#   ./runtest.sh                 - Run with default test.txt
#   ./runtest.sh commands.txt    - Run with custom command file
#   ./runtest.sh --verbose       - Show full game output
#   ./runtest.sh --help          - Show help

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEST_FILE="test.txt"
GAME_FILE="frobzwane.z5"
RESULTS_FILE="test-results.txt"
VERBOSE=false

# Parse arguments
for arg in "$@"; do
    case $arg in
        --verbose|-v)
            VERBOSE=true
            ;;
        --help|-h)
            echo "FROBSWANE Test Runner"
            echo ""
            echo "Usage:"
            echo "  ./runtest.sh                 - Run with default test.txt"
            echo "  ./runtest.sh commands.txt    - Run with custom command file"
            echo "  ./runtest.sh -v              - Show full game output"
            echo "  ./runtest.sh --verbose       - Show full game output"
            echo "  ./runtest.sh --help          - Show this help"
            echo ""
            echo "Test file format: Plain text, one command per line."
            echo "Lines starting with # are comments and are ignored."
            echo ""
            exit 0
            ;;
        *)
            # Only treat as filename if it doesn't start with -
            if [[ ! "$arg" =~ ^- ]]; then
                TEST_FILE="$arg"
            fi
            ;;
    esac
done

cd "$SCRIPT_DIR"

# Check if game file exists
if [ ! -f "$GAME_FILE" ]; then
    echo "Error: Game file '$GAME_FILE' not found."
    echo "Run './build.sh' first to compile the game."
    exit 1
fi

# Check if test file exists
if [ ! -f "$TEST_FILE" ]; then
    echo "Error: Test file '$TEST_FILE' not found."
    echo "Run './generatetest.sh' to create a test file."
    exit 1
fi

# Find interpreter (prefer dfrotz for scripted testing)
if command -v dfrotz &> /dev/null; then
    INTERPRETER="dfrotz"
elif command -v frotz &> /dev/null; then
    INTERPRETER="frotz -q"
else
    echo "Error: No Z-machine interpreter found."
    echo "Install with: sudo apt-get install frotz"
    exit 1
fi

# Count commands (non-comment, non-empty lines)
COMMAND_COUNT=$(grep -v '^#' "$TEST_FILE" | grep -v '^$' | wc -l)

echo "=========================================="
echo "FROBSWANE Test Runner"
echo "=========================================="
echo ""
echo "Test file: $TEST_FILE"
echo "Commands: $COMMAND_COUNT"
echo "Game: $GAME_FILE"
echo "Interpreter: $INTERPRETER"
echo ""
echo "=========================================="
echo "Running test..."
echo "=========================================="
echo ""

# Strip comments and get commands as array
COMMANDS=$(grep -v '^#' "$TEST_FILE" | grep -v '^$')

# Capture full output for results file
RAW_OUTPUT=$(echo "$COMMANDS" | $INTERPRETER "$GAME_FILE" 2>&1)

# Create formatted output with commands shown after prompts
# Read commands into array
mapfile -t CMD_ARRAY < <(echo "$COMMANDS")
CMD_INDEX=0

# Process output to insert commands on same line as > prompts
FORMATTED_OUTPUT=""
while IFS= read -r line; do
    # If line ends with > (prompt), append the command to same line
    if [[ "$line" =~ \>[[:space:]]*$ ]] && [ $CMD_INDEX -lt ${#CMD_ARRAY[@]} ]; then
        FORMATTED_OUTPUT+="$line ${CMD_ARRAY[$CMD_INDEX]}"$'\n'
        CMD_INDEX=$((CMD_INDEX + 1))
    else
        FORMATTED_OUTPUT+="$line"$'\n'
    fi
done <<< "$RAW_OUTPUT"

OUTPUT="$FORMATTED_OUTPUT"

# Save results to file
{
    echo "=========================================="
    echo "FROBSWANE Test Results"
    echo "=========================================="
    echo ""
    echo "Date: $(date)"
    echo "Test file: $TEST_FILE"
    echo "Commands: $COMMAND_COUNT"
    echo "Game: $GAME_FILE"
    echo "Interpreter: $INTERPRETER"
    echo ""
    echo "=========================================="
    echo "COMMANDS EXECUTED"
    echo "=========================================="
    echo ""
    echo "$COMMANDS"
    echo ""
    echo "=========================================="
    echo "FULL GAME TRANSCRIPT"
    echo "=========================================="
    echo ""
    echo "$OUTPUT"
    echo ""
    echo "=========================================="
    echo "END OF TRANSCRIPT"
    echo "=========================================="
} > "$RESULTS_FILE"

if [ "$VERBOSE" = true ]; then
    # Verbose: show full output to screen
    echo "$OUTPUT"
else
    # Normal: show summary to screen
    
    # Check for errors
    ERRORS=0
    if echo "$OUTPUT" | grep -qi "programming error"; then
        echo "❌ FAIL: Programming error detected"
        ERRORS=$((ERRORS + 1))
    fi
    if echo "$OUTPUT" | grep -qi "fatal error"; then
        echo "❌ FAIL: Fatal error detected"
        ERRORS=$((ERRORS + 1))
    fi
    
    # Show warnings
    if echo "$OUTPUT" | grep -qi "that's not a verb"; then
        echo "⚠ WARNING: Unrecognized verb(s) detected"
    fi
    if echo "$OUTPUT" | grep -qi "you can't see any such thing"; then
        echo "⚠ WARNING: Object not found"
    fi
    if echo "$OUTPUT" | grep -qi "you can't go that way"; then
        echo "⚠ WARNING: Invalid direction"
    fi
    
    # Show last part of output
    echo ""
    echo "Last output:"
    echo "---"
    echo "$OUTPUT" | tail -15
    echo "---"
    echo ""
    
    if [ $ERRORS -eq 0 ]; then
        echo "=========================================="
        echo "✓ Test completed without critical errors"
        echo "=========================================="
    else
        echo "=========================================="
        echo "❌ Test failed with $ERRORS error(s)"
        echo "=========================================="
    fi
fi

echo ""
echo "Full results saved to: $RESULTS_FILE"
echo ""

