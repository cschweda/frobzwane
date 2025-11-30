# FROBSWANE Testing Guide

This guide explains how to create, run, and verify automated test scripts for FROBSWANE.

## Overview

The project includes two test scripts:

| Script | Purpose |
|--------|---------|
| `runtest.sh` | Runs test commands against the game and reports results |
| `generatetest.sh` | Creates test command files interactively or by recording |

Test commands are stored in simple text files (`.txt`) with one command per line.

## Test File Format

Test files use a simple plain-text format:

```
# This is a comment (ignored)
# One command per line

l
x mule
e
take lamp
inventory
q
y
```

**Rules:**
- One command per line
- Lines starting with `#` are comments (ignored)
- Empty lines are ignored
- Use standard Inform commands (look, take, examine, etc.)
- Include `q` and `y` at the end to quit cleanly

## Running Tests

### Basic Test Run

```bash
# Run with default test.txt
./runtest.sh

# Run with custom test file
./runtest.sh mytest.txt
```

### Verbose Mode (Full Output)

To see the complete game output:

```bash
./runtest.sh --verbose
./runtest.sh -v
./runtest.sh mytest.txt --verbose
```

### Test Output

**Normal mode** shows a summary and saves full results:
```
==========================================
FROBSWANE Test Runner
==========================================

Test file: test.txt
Commands: 42
Game: frobzwane.z5
Interpreter: dfrotz

==========================================
Running test...
==========================================

⚠ WARNING: Object not found

Last output:
---
You have so far scored 0 out of a possible 0, in 33 turns
> q
Are you sure you want to quit?
---

==========================================
✓ Test completed without critical errors
==========================================

Full results saved to: test-results.txt
```

### Test Results File

Every test run saves a complete transcript to `test-results.txt`:

```
==========================================
FROBSWANE Test Results
==========================================

Date: Sun Nov 30 11:22:16 CST 2025
Test file: test.txt
Commands: 42
Game: frobzwane.z5
Interpreter: dfrotz

==========================================
COMMANDS EXECUTED
==========================================

l
x mule
x visor
i
e
...

==========================================
FULL GAME TRANSCRIPT
==========================================

Prairie Overlook
A sodium-orange prairie flickers like a dying CRT monitor...

> l

A sodium-orange prairie flickers like a dying CRT monitor...

> x mule

A rental hover-mule in questionable condition...
```

The transcript shows:
- Player commands on the same line as the `>` prompt
- Full parser responses
- Complete game output

**Verbose mode** shows the full game transcript:
```
==========================================
Running test...
==========================================

FROBSWANE
A Post-Underground Excavation
Release 1 / Serial number 251130 / Inform v6.42 Library v6.12.6 S

Prairie Overlook
A sodium-orange prairie flickers like a dying CRT monitor...

> l
Prairie Overlook
A sodium-orange prairie flickers...

> x mule
A rental hover-mule in questionable condition...

> e
Tarpit Memorial Parking Lot
Cracked asphalt bubbles with bitumen...
```

### Understanding Test Results

| Symbol | Meaning |
|--------|---------|
| ✓ | Test passed without critical errors |
| ❌ | Critical error detected (programming error, fatal error) |
| ⚠ | Warning (unrecognized verb, object not found, invalid direction) |

**Warnings** are informational - they indicate commands that didn't work as expected but aren't critical failures. As the game develops, these warnings should decrease.

**Critical errors** indicate bugs that need to be fixed before the game is playable.

## Generating Tests

### Interactive Mode

Create a test file by entering commands one at a time:

```bash
./generatetest.sh
```

Or specify an output file:

```bash
./generatetest.sh mytest.txt
```

**Interactive session:**
```
==========================================
FROBSWANE Test Generator
==========================================

Enter commands one per line.
Lines starting with # become comments.

Special commands:
  done     - Save and exit
  cancel   - Exit without saving
  help     - Show common commands

Enter commands (type 'done' when finished):

> l
> x mule
> # This is a comment
> e
> take lamp
> done

==========================================
✓ Test file created: mytest.txt
==========================================
Commands: 4
```

### Record Mode

Record a live play session (all your commands are saved):

```bash
./generatetest.sh --record
```

This will:
1. Start the game
2. Record every command you type
3. Save commands to `test.txt` when you quit

**Note:** Record mode requires the `script` command (usually pre-installed on Linux).

### Help

```bash
./generatetest.sh --help
```

## Default Test File

The project includes a default `test.txt` with 42 commands that:
- Explores all implemented rooms
- Examines key objects
- Tests basic interactions
- Verifies movement between rooms
- Checks inventory management

This file serves as a regression test - run it after making changes to ensure nothing is broken.

## Common Commands Reference

| Command | Action |
|---------|--------|
| `l`, `look` | Look around |
| `i`, `inventory` | Check inventory |
| `x <obj>`, `examine <obj>` | Examine something |
| `take <obj>`, `get <obj>` | Pick up object |
| `drop <obj>` | Put down object |
| `n`, `s`, `e`, `w` | Move direction |
| `u`, `d` | Go up/down |
| `in`, `out` | Enter/exit |
| `open <obj>` | Open container/door |
| `close <obj>` | Close container/door |
| `score` | Check score |
| `z`, `wait` | Wait one turn |
| `g`, `again` | Repeat last command |
| `q`, `quit` | Quit game |

## Workflow

### Development Testing

1. Make changes to `frobzwane.inf`
2. Compile: `./build.sh`
3. Run tests: `./runtest.sh`
4. If tests fail, check verbose output: `./runtest.sh --verbose`
5. Fix issues and repeat

### Creating a Full Walkthrough Test

1. Play through the game manually
2. Record your session: `./generatetest.sh --record`
3. Edit the generated file to remove mistakes
4. Run the test to verify: `./runtest.sh`

### Regression Testing

Before committing changes:

```bash
./build.sh && ./runtest.sh
```

This ensures:
- Game compiles without errors
- Basic functionality still works
- No critical bugs introduced

## Troubleshooting

### "Game file not found"

```bash
./build.sh  # Compile the game first
```

### "No Z-machine interpreter found"

```bash
sudo apt-get install frotz
```

### Test hangs or times out

The game might be waiting for input. Check:
- Your test file ends with `q` and `y` to quit
- No infinite loops in game code

### Many "Object not found" warnings

This is normal during development - the test file may reference objects or rooms that haven't been implemented yet. As the game develops, these warnings will decrease.

## Files

| File | Description |
|------|-------------|
| `runtest.sh` | Test runner script |
| `generatetest.sh` | Test generator script |
| `test.txt` | Default test commands (42 commands) |
| `test-results.txt` | Full transcript from last test run (auto-generated) |

**Note:** `test-results.txt` is generated automatically and is in `.gitignore`.

## See Also

- `README.md` - Project overview and compilation
- `docs/walkthrough.md` - Complete manual walkthrough
- `docs/INFORM6_COMPILATION_GUIDE.md` - Compilation details

