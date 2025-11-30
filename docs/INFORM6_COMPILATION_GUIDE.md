# Inform 6 Compilation Guide

## Overview

This guide explains how to compile Inform 6 source files (`.inf`) into Z-machine story files (`.z5`, `.z8`, etc.) for use with interactive fiction interpreters.

## Prerequisites

1. **Inform 6 Compiler**: Installed and available in PATH
   - Check installation: `inform -v5`
   - Version used: Inform 6.45 (in development)

2. **Inform 6 Library**: Standard library files (`.h` headers)
   - **For FROBSWANE**: Included in `lib/inform6lib/` (self-contained)
   - **For other projects**: Can use system location or project-specific

## Basic Compilation

### Simple Compilation (FROBSWANE)

```bash
inform -v5 +lib/inform6lib frobzwane.inf
```

This creates `frobzwane.z5` (Z-machine version 5 story file).

**Note**: This project is self-contained - all library files are in `lib/inform6lib/`.

### Compilation Command Breakdown

```
inform [switches] [+library_path] sourcefile.inf [outputfile]
```

- `inform` - The compiler command
- `[switches]` - Compiler options (see below)
- `+library_path` - Path to library include files
- `sourcefile.inf` - Your Inform 6 source file
- `[outputfile]` - Optional output filename (defaults to source name)

## Common Switches

### Z-machine Version

- `-v5` - Compile for Z-machine version 5 (recommended for most games)
- `-v8` - Compile for Z-machine version 8 (larger games, more features)
- `-v3` - Compile for Z-machine version 3 (older interpreters)

**Recommendation**: Use `-v5` for maximum compatibility.

### Verbose Output

- `-v5` - Version 5 (already shown)
- `-v5 -s` - Version 5 with statistics
- `-v5 -w` - Version 5 with warnings only (suppress info messages)

### Other Useful Switches

- `-E` - Generate error messages in English (default)
- `-S` - Generate statistics about the compiled game
- `-D` - Debug mode (more verbose output)
- `-C` - Check only (don't generate output file)

## Library Path Options

### Option 0: Self-Contained Project (Recommended for GitHub/Sharing)

**Setup**: Library files included in project `lib/` directory (already done for this project)

**Compilation**:
```bash
inform -v5 +lib/inform6lib yourgame.inf
```

**Pros**: 
- Completely self-contained
- Works immediately after cloning
- No external dependencies
- Perfect for GitHub/sharing
- Portable across systems

**Note**: This is the setup used for FROBSWANE.

### Option 1: Permanent System Location

**Setup** (one-time):
```bash
python3 -c "import zipfile, os; z = zipfile.ZipFile('/home/cschweda/infocom/inform6lib-6.12.7.zip'); os.makedirs(os.path.expanduser('~/inform6lib'), exist_ok=True); z.extractall(os.path.expanduser('~/inform6lib')); import os; os.chdir(os.path.expanduser('~/inform6lib/inform6lib')); os.symlink('english.h', 'English.h')"
```

**Note**: The symlink `English.h -> english.h` is required by the library.

**Compilation**:
```bash
inform -v5 +$HOME/inform6lib/inform6lib yourgame.inf
```

**Pros**: 
- Works for all projects
- Permanent location
- No need to re-extract

### Option 2: Project-Specific Library

**Setup** (per project):
```bash
cd yourproject/
python3 -c "import zipfile; z = zipfile.ZipFile('~/infocom/inform6lib-6.12.7.zip'); z.extractall('lib')"
```

**Compilation**:
```bash
inform -v5 +lib/inform6lib yourgame.inf
```

**Pros**:
- Self-contained projects
- Good for version control (or add `lib/` to `.gitignore`)

### Option 3: Temporary Location

**Compilation**:
```bash
inform -v5 +/tmp/inform6lib/inform6lib yourgame.inf
```

**Note**: `/tmp` is cleared on reboot, so library must be re-extracted.

## Source File Structure

### Minimal Inform 6 Game

```inform6
Constant Story "Your Game";
Constant Headline "^A Short Description^";

! Include the standard Inform 6 library
Include "parser";
Include "verblib";

! Required library stubs
[ NewRoom; return false; ];
[ LookRoutine; return false; ];
[ AfterSave; ];
[ AfterRestore; ];
[ PrintRank; ];
[ ObjectDoesNotFit; return false; ];
[ DarkToDark; ];
[ GamePreRoutine; ];
[ GamePostRoutine; ];
[ Amusing; ];
[ DeathMessage; ];
[ Epilogue; ];
[ ParseNoun; return false; ];
[ ParseNumber; return false; ];
[ AfterLife; ];
[ TimePasses; ];
[ PrintVerb; ];
[ InScope; return true; ];
[ ParserError; ];
[ ChooseObjects; return false; ];
[ BeforeParsing; ];
[ UnknownVerb; ];
[ AfterPrompt; ];

! Initialization
[ Initialise;
    location = StartRoom;
];

! Starting room
Object StartRoom "Starting Location"
    with description "You are in a starting location.",
    has light;
```

## Compilation Examples

### Example 1: Basic Compilation

```bash
inform -v5 +~/inform6lib/inform6lib mygame.inf
```

**Output**: `mygame.z5`

### Example 2: Custom Output Filename

```bash
inform -v5 +~/inform6lib/inform6lib mygame.inf release.z5
```

**Output**: `release.z5`

### Example 3: With Statistics

```bash
inform -v5 -S +~/inform6lib/inform6lib mygame.inf
```

**Output**: Shows compilation statistics

### Example 4: Check Only (No Output)

```bash
inform -v5 -C +~/inform6lib/inform6lib mygame.inf
```

**Output**: Only checks for errors, doesn't create `.z5` file

## Build Scripts

### Simple Build Script (`build.sh`)

```bash
#!/bin/bash
# Build script for Inform 6 game

LIBRARY_PATH="~/inform6lib/inform6lib"
SOURCE_FILE="frobzwane.inf"
OUTPUT_FILE="frobzwane.z5"

echo "Compiling $SOURCE_FILE..."
inform -v5 +$LIBRARY_PATH $SOURCE_FILE $OUTPUT_FILE

if [ $? -eq 0 ]; then
    echo "✓ Compilation successful: $OUTPUT_FILE"
    ls -lh $OUTPUT_FILE
else
    echo "✗ Compilation failed"
    exit 1
fi
```

**Usage**:
```bash
chmod +x build.sh
./build.sh
```

### Makefile Example

```makefile
# Makefile for Inform 6 game

LIBRARY = ~/inform6lib/inform6lib
SOURCE = frobzwane.inf
OUTPUT = frobzwane.z5
VERSION = 5

.PHONY: all clean test

all: $(OUTPUT)

$(OUTPUT): $(SOURCE)
	inform -v$(VERSION) +$(LIBRARY) $(SOURCE) $(OUTPUT)
	@echo "✓ Built $(OUTPUT)"

clean:
	rm -f $(OUTPUT) *.z5

test: $(OUTPUT)
	@echo "Testing $(OUTPUT)..."
	# Add your test command here (e.g., frotz, gargoyle, etc.)

help:
	@echo "Inform 6 Makefile"
	@echo "  make       - Build the game"
	@echo "  make clean - Remove output files"
	@echo "  make test  - Build and test the game"
```

**Usage**:
```bash
make          # Build the game
make clean    # Remove output files
make test     # Build and test
```

## Understanding Compilation Output

### Successful Compilation

```
Inform 6.45 (in development)
Compiled with 0 errors and 5 warnings
```

**Output file created**: `yourgame.z5`

### Errors

```
line 42: Error: Expected 'with' but found 'description'
```

**Action**: Fix the error in your source file and recompile.

### Warnings

```
line 15: Warning: Global variable "unused_var" declared but not used
```

**Action**: Warnings are usually non-critical. Fix if they indicate real problems.

## Common Compilation Issues

### Issue 1: Library Not Found

**Error**:
```
Fatal error: Couldn't open source file "parser.h"
```

**Solution**: Check library path:
```bash
inform -v5 +~/inform6lib/inform6lib yourgame.inf
```

### Issue 2: Wrong Z-machine Version

**Error**:
```
Error: Story file too large for version 3
```

**Solution**: Use higher version:
```bash
inform -v5 +~/inform6lib/inform6lib yourgame.inf  # or -v8
```

### Issue 3: Missing Stub Routines

**Error**:
```
Error: No such constant as "NewRoom"
```

**Solution**: Add required stub routines to your source file (see Source File Structure above).

## Running Your Compiled Game

### Installing Z-machine Interpreters (Ubuntu/Debian)

Before running your game, you need a Z-machine interpreter:

#### Frotz (Command-Line, Recommended)

```bash
sudo apt-get update
sudo apt-get install frotz
frotz yourgame.z5
```

**Features**: Lightweight, fast, works in terminal, supports save/restore

#### Gargoyle (GUI, User-Friendly)

```bash
sudo apt-get update
sudo apt-get install gargoyle-free
gargoyle-free yourgame.z5
```

**Features**: Graphical interface, better for beginners, supports multiple IF formats

#### Zoom (Alternative Command-Line)

```bash
sudo apt-get update
sudo apt-get install zoom
zoom yourgame.z5
```

### Running the Game

Once installed, simply run:

```bash
# Using Frotz
frotz frobzwane.z5

# Using Gargoyle
gargoyle-free frobzwane.z5

# Using Zoom
zoom frobzwane.z5
```

### Online Interpreters (No Installation Required)

If you can't install software, use an online interpreter:

1. Go to [Parchment](https://iplayif.com/) or [IFDB Play Online](https://ifdb.org/)
2. Upload your `.z5` file
3. Play in your browser

### Game Controls

- **Movement**: `n`, `s`, `e`, `w`, `u`, `d`, `in`, `out`
- **Actions**: `look`, `examine <object>`, `take <object>`, `drop <object>`
- **Inventory**: `inventory` or `i`
- **Save/Restore**: `save <filename>`, `restore <filename>`
- **Quit**: `quit` or `q`

## File Sizes

Typical compiled game sizes:
- **Small game** (< 50 rooms): ~50-100 KB
- **Medium game** (50-100 rooms): ~100-200 KB
- **Large game** (> 100 rooms): ~200-500 KB

Z-machine version limits:
- **Z3**: 128 KB max
- **Z5**: 256 KB max
- **Z8**: 512 KB max

## Best Practices

1. **Use consistent library path**: Set up permanent location (`~/inform6lib/inform6lib/`)

2. **Version control**: 
   - Include `.inf` source files
   - Exclude `.z5` output files (add to `.gitignore`)
   - Optionally include library in project or reference system location

3. **Build automation**: Use build scripts or Makefiles for consistency

4. **Testing**: Test compiled games in multiple interpreters

5. **Documentation**: Keep compilation instructions in project README

## Quick Reference

```bash
# Standard compilation
inform -v5 +~/inform6lib/inform6lib game.inf

# With statistics
inform -v5 -S +~/inform6lib/inform6lib game.inf

# Check only (no output)
inform -v5 -C +~/inform6lib/inform6lib game.inf

# Custom output name
inform -v5 +~/inform6lib/inform6lib game.inf release.z5
```

## Library Files Reference

The Inform 6 library includes:

- `parser.h` - Main parser library (required)
- `verblib.h` - Verb definitions (required)
- `grammar.h` - Grammar definitions
- `english.h` - English language definitions
- `infglk.h` - Glk interface (for Glulx games)
- `version.h` - Version information

**Required includes** for most games:
```inform6
Include "parser";
Include "verblib";
```

## Additional Resources

- **Inform 6 Manual**: [http://www.inform-fiction.org/manual/](http://www.inform-fiction.org/manual/)
- **Inform 6 Library Documentation**: Included in library zip file
- **IF Archive**: [https://www.ifarchive.org/](https://www.ifarchive.org/)
- **Inform 6 Examples**: Check `inform6lib/examples/` directory

## Troubleshooting

### Problem: Compiler not found

**Solution**: 
```bash
which inform
# If not found, add Inform 6 to PATH or use full path
```

### Problem: Library path issues

**Solution**: Use absolute path:
```bash
inform -v5 +/home/username/inform6lib/inform6lib game.inf
```

### Problem: Permission denied

**Solution**: 
```bash
chmod +x build.sh  # For scripts
chmod +r game.inf  # For source files
```

---

**Last Updated**: 2024-11-30
**Inform Version**: 6.45 (in development)
**Library Version**: 6.12.7

