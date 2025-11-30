# Running FROBSWANE - Runtime Instructions

## Quick Start

1. **Install an interpreter** (see below)
2. **Run the game**: `frotz frobzwane.z5` (or use Gargoyle)

## Installing Z-machine Interpreters

### Ubuntu/Debian

#### Option 1: Frotz (Command-Line, Recommended)

```bash
sudo apt-get update
sudo apt-get install frotz
frotz frobzwane.z5
```

**Why Frotz?**
- Lightweight and fast
- Works in any terminal
- Supports save/restore
- Arrow keys for command history
- Most widely used

#### Option 2: Gargoyle (GUI, User-Friendly)

```bash
sudo apt-get update
sudo apt-get install gargoyle-free
gargoyle-free frobzwane.z5
```

**Why Gargoyle?**
- Graphical interface
- Better for beginners
- Supports multiple IF formats
- Built-in font options
- Cross-platform

#### Option 3: Zoom (Alternative)

```bash
sudo apt-get update
sudo apt-get install zoom
zoom frobzwane.z5
```

### Other Operating Systems

#### Windows
- Download Frotz or Gargoyle from [IF Archive](https://www.ifarchive.org/)
- Or use online interpreters (see below)

#### macOS
```bash
# Using Homebrew
brew install frotz
# or
brew install gargoyle

frotz frobzwane.z5
```

#### Linux (Other Distributions)
- Use your package manager to install `frotz` or `gargoyle-free`
- Or compile from source from [IF Archive](https://www.ifarchive.org/)

### Online (No Installation)

If you can't install software:

1. Go to [Parchment](https://iplayif.com/) or [IFDB Play Online](https://ifdb.org/)
2. Upload `frobzwane.z5`
3. Play in your browser

## Running the Game

### Basic Command

```bash
frotz frobzwane.z5
```

### With Different Interpreters

```bash
# Frotz (command-line)
frotz frobzwane.z5

# Gargoyle (GUI)
gargoyle-free frobzwane.z5

# Zoom
zoom frobzwane.z5
```

## Game Controls

### Movement
- `n` or `north` - Move north
- `s` or `south` - Move south
- `e` or `east` - Move east
- `w` or `west` - Move west
- `u` or `up` - Go up
- `d` or `down` - Go down
- `in` - Enter
- `out` - Exit

### Actions
- `look` or `l` - Look around (re-read room description)
- `examine <object>` or `x <object>` - Examine something
- `take <object>` - Pick up an object
- `drop <object>` - Drop an object
- `put <object> in <container>` - Put object in container
- `open <object>` - Open something
- `close <object>` - Close something

### Information
- `inventory` or `i` - Check your inventory
- `score` - Check your score (if supported)

### Game Management
- `save` - Save game (prompts for filename)
- `restore` - Restore saved game (prompts for filename)
- `quit` or `q` - Quit the game
- `help` - Get help (if supported by interpreter)

### Tips
- **Abbreviations work**: `n` for `north`, `x lamp` for `examine lamp`
- **Arrow keys**: In Frotz, use ↑↓ to recall previous commands
- **Look frequently**: Type `look` or `l` to re-read room descriptions
- **Examine everything**: Use `examine` or `x` on objects to get details

## Troubleshooting

### "Command not found: frotz"

**Solution**: Install Frotz:
```bash
sudo apt-get update
sudo apt-get install frotz
```

### "Command not found: gargoyle-free"

**Solution**: Install Gargoyle:
```bash
sudo apt-get update
sudo apt-get install gargoyle-free
```

### Game Won't Start

**Check:**
1. File exists: `ls -lh frobzwane.z5`
2. Correct file type: `file frobzwane.z5` should show "Z-machine 5"
3. File permissions: `chmod +r frobzwane.z5` if needed
4. Try different interpreter

### "It is pitch dark"

**This is normal!** Some rooms are dark. You need a light source:
- Find the LED Frob-Lux lamp
- Take it and turn it on
- Then you can see in dark rooms

### Save/Restore Issues

**Frotz:**
- Saves to current directory
- Use: `save mygame` then `restore mygame`
- Save files have `.sav` extension

**Gargoyle:**
- Uses GUI save/restore dialogs
- Click File → Save or File → Restore

**Different interpreters handle saves differently** - check your interpreter's documentation

### Interpreter Crashes

**Try:**
1. Different interpreter (Frotz vs Gargoyle)
2. Check interpreter version compatibility
3. Report issue with interpreter name and version

### Can't See Text Clearly

**Frotz:**
- Adjust terminal font size
- Use full-screen terminal

**Gargoyle:**
- Options → Font Size
- Options → Colors

## Getting Help

- **In-game**: Type `help` (if supported)
- **Game documentation**: See README.md
- **Interpreter help**: Check interpreter documentation
- **IF Community**: [IFDB](https://ifdb.org/) forums

## File Verification

Verify your game file is correct:

```bash
# Check file exists and size
ls -lh frobzwane.z5

# Verify it's a Z5 file
file frobzwane.z5
# Should output: "Infocom (Z-machine 5, Release 1, Serial ...)"

# Check file integrity
hexdump -C frobzwane.z5 | head -1
# Should start with: 05 00 (Z5 header)
```

---

**Note**: This game requires a Z-machine version 5 compatible interpreter. Most modern interpreters support Z5.

