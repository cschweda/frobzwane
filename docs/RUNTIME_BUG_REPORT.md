# Runtime Bug Report: Parser Array Bounds Error - RESOLVED

## Issue (RESOLVED)

The compiled `frobzwane.z5` file was crashing immediately on startup with frotz, displaying:

```
[** Programming error: tried to read outside memory using -> **]
[** Programming error: tried to write to -->123 in the array "line_ttype", which has entries 0 up to 31 **]
```

## Root Causes Identified

**Three issues were causing this error:**

1. **Incorrect Stub Routine Return Values**: The library stub routines (`ParseNoun`, `InScope`, `ChooseObjects`, etc.) were returning incorrect values. For example:
   - `ParseNoun` should return `-1` (not `false`)
   - `InScope` should return `false` (not `true`)
   - `ChooseObjects` should return `0` (not `false`)

2. **Misuse of `initial` Property**: Objects were using `initial "in RoomName"` which is incorrect. The `initial` property is for text to display, not for specifying location. Objects should use `Object name "display" ParentRoom` syntax.

3. **Development Library Version**: The library 6.12.7dev had inconsistencies. Switched to stable 6.12.6.

## Solution Applied

1. Fixed stub routine return values to match library expectations
2. Rewrote object definitions to use correct Inform 6 syntax:
   ```inform6
   ! WRONG:
   Object -> "object name"
       with initial "in RoomName";
   
   ! CORRECT:
   Object objname "object name" RoomName
       with name 'object' 'name';
   ```
3. Updated to stable library version 6.12.6

## Final Configuration

- **Compiler**: Inform 6.42 (stable)
- **Library**: Inform 6 Library 6.12.6 (stable)
- **Target**: Z-machine version 5
- **Interpreter**: Frotz

## How to Avoid This Issue

1. **Always use `./build.sh`** - It prioritizes stable compiler versions
2. **Don't update the library** - The bundled 6.12.6 is known to work
3. **Avoid development versions** - Anything marked "(in development)" may have bugs
4. **Test immediately after compilation** - Run `./runtest.sh` to catch errors early

## If You Encounter This Error

If you see "tried to read outside memory" errors:

1. Check your compiler version: `inform -v`
2. If it shows "(in development)", find a stable version
3. Verify you're using the bundled library: `+lib/inform6lib`
4. Use `./build.sh` which handles all of this automatically

## Status

**Current Status**: ✅ RESOLVED - Game compiles and runs successfully  
**Last Updated**: 2025-11-30  
**Compiler Version**: Inform 6.42 (stable)  
**Library Version**: Inform 6 Library 6.12.6 (stable)

## See Also

- [INFORM6_COMPILATION_GUIDE.md](INFORM6_COMPILATION_GUIDE.md) - Full compilation guide
- [README.md](../README.md) - Project overview with version requirements

