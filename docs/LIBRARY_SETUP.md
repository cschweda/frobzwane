# Inform 6 Library Setup

## Current Configuration (Self-Contained)

**Library Location**: `lib/inform6lib/` (included in project)
**Source File**: Uses relative includes: `Include "parser"; Include "verblib";`
**Compilation Command**: `inform -v5 +lib/inform6lib frobzwane.inf`

**Status**: ✅ **This project is completely self-contained** - all library files are included in the `lib/` directory. No external library setup required!

## How It Works

The `+` flag in the compilation command tells Inform where to find the library header files. The library files do **NOT** need to be in the project root directory.

When Inform sees:
```inform6
Include "parser";
```

It searches for `parser.h` in:
1. The directory specified by the `+` flag
2. Standard system library paths (if configured)

## Options for Library Location

### Option 1: Keep Current Setup (Temporary)
- **Pros**: Works immediately
- **Cons**: `/tmp` is cleared on reboot, will need to re-extract
- **Command**: `inform -v5 +/tmp/inform6lib/inform6lib frobzwane.inf`

### Option 2: Extract to Project Directory
```bash
cd /home/cschweda/infocom/games/frobzwane
python3 -c "import zipfile; z = zipfile.ZipFile('~/infocom/inform6lib-6.12.7.zip'); z.extractall('lib')"
```
Then compile with: `inform -v5 +lib/inform6lib frobzwane.inf`

### Option 3: Extract to Permanent System Location
```bash
mkdir -p ~/inform6lib
cd ~/inform6lib
python3 -c "import zipfile; z = zipfile.ZipFile('~/infocom/inform6lib-6.12.7.zip'); z.extractall('.')"
```
Then compile with: `inform -v5 +~/inform6lib/inform6lib frobzwane.inf`

### Option 4: Use Environment Variable (if Inform supports it)
Some Inform installations can use environment variables, but the `+` flag is the most reliable method.

## Current Setup (Self-Contained)

**This project uses Option 2** (project directory) - the library is already included in `lib/inform6lib/`.

No additional setup needed! Just compile with:
```bash
./build.sh
# or
inform -v5 +lib/inform6lib frobzwane.inf
```

## Alternative Setups

If you want to set up libraries for other projects:

1. **Extract library to project:**
   ```bash
   cd /home/cschweda/infocom/games/frobzwane
   python3 -c "import zipfile; z = zipfile.ZipFile('~/infocom/inform6lib-6.12.7.zip'); z.extractall('lib')"
   ```

2. **Update compilation command:**
   ```bash
   inform -v5 +lib/inform6lib frobzwane.inf
   ```

3. **Create a build script** (`build.sh`):
   ```bash
   #!/bin/bash
   inform -v5 +lib/inform6lib frobzwane.inf
   ```

This way:
- Library files are with the project
- No dependency on `/tmp`
- Easy to version control (or add `lib/` to `.gitignore`)
- Portable - project is self-contained

## What's in the Library?

The library contains:
- `parser.h` - Main parser library
- `verblib.h` - Verb definitions
- `grammar.h` - Grammar definitions
- `english.h` - English language definitions
- Other support files

These are **header files** that get included during compilation, not runtime libraries.

## Summary

✅ **Library files can be anywhere** - specified by the `+` flag
✅ **Source file uses relative includes** - `Include "parser";`
✅ **Current setup**: Library in `lib/inform6lib/` (self-contained)
✅ **Status**: Project is ready for GitHub - all files included

**Note**: This project uses the self-contained setup with library in `lib/inform6lib/`.

