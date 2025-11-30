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

## Status

**Current Status**: ✅ RESOLVED - Game compiles and runs successfully  
**Last Updated**: 2025-11-30  
**Compiler Version**: Inform 6.42  
**Library Version**: Inform 6 Library 6.12.6

