# FROBSWANE: A Post-Underground Excavation

An Inform 6 text adventure game set in the archaeological ruins of the Great Underground Empire, 947 years after the original Zork adventures.

## 📖 About FROBSWANE

**FROBSWANE: A Post-Underground Excavation** is a love letter to classic Infocom games—especially the Zork series—that simultaneously celebrates and satirizes the golden age of interactive fiction. Set 947 years after the original Zork adventures, you play as Professor Hildegard Perelman, an archaeologist excavating the ruins of the Great Underground Empire with a rental hover-mule, limited funding, and unlimited determination.

### Relationship to Classic Infocom Games

FROBSWANE is deeply rooted in Infocom's legacy:

- **Direct References**: The game takes place in the same universe as Zork, featuring familiar locations like the White House, Flood Control Dam #3, and references to the Great Underground Empire
- **Nostalgic Parody**: While honoring the parser-era gameplay that made Infocom legendary, FROBSWANE playfully interrogates what happens when beloved fictional worlds become archaeological sites
- **Meta-Commentary**: The game explores themes of commercialization, nostalgia, and cultural heritage—what happens when corporate franchises (FROBSWANE™) trademark everything from cereal boxes to property deeds
- **Classic Design**: Built with Inform 6 (the same toolchain Infocom used), FROBSWANE maintains the text-only, parser-driven gameplay that defined the genre

The game's tone combines the affectionate parody of Terry Pratchett, the corporate satire of Douglas Adams, and the self-awareness of Infocom's later games like *Beyond Zork* and *Bureaucracy*.

### Why "FROBSWANE"?

The name **FROBSWANE** is a play on **FrobozzCo**, the fictional industrial conglomerate from the Zork universe. In the game's timeline:

- **FrobozzCo** was the Great Underground Empire's premiere corporation, manufacturing everything from magic lamps to hand-dryers
- By 947 GUE (947 years after the original Zork adventures), FrobozzCo has splintered into various corporate franchises
- **FROBSWANE™** is the most aggressive of these franchises, having trademarked everything from breakfast cereals to coffee beans, from decoder rings to property deeds
- The name suggests both corporate evolution ("Frobozz" → "Frobswane") and the swan song of a legendary game world

The game's title reflects its central theme: what happens when beloved fictional worlds become archaeological sites, and when corporate branding colonizes cultural heritage?

### Game Summary

You are Professor Hildegard Perelman, an archaeologist with a Ph.D. in Obscure Cartography and a modest grant to excavate the ruins of the Great Underground Empire. Most of your colleagues dismiss the GUE as "marketing fiction" created by an extinct software company called Infocom, but you're determined to prove them wrong.

Armed with 1,200 zorkmid-equivalent in funding, a rental hover-mule, and unlimited LED lamp coupons, you must:
- Navigate the half-buried White House and its underground passages
- Solve puzzles using expired franchise merchandise and bureaucratic paperwork
- Prove the Great Underground Empire was real through archaeological evidence
- Discover that FROBSWANE™ has already trademarked everything—including your discoveries

The game combines classic parser-driven gameplay with satirical commentary on nostalgia, commercialization, and the archaeology of fictional worlds.

### Brief Walkthrough (First Steps)

Here's how the game begins:

```
FROBSWANE
A Post-Underground Excavation
Version 1.0

Prairie Overlook
A sodium-orange prairie flickers like a dying CRT monitor. Heat-shimmer rises in waves, tasting of copper and old shareware disks. Your rental hover-mule squats half-inflated nearby, its cheap photo-chromatic visor clipped over the air valve.

You can see a rental hover-mule and a photo-chromatic visor here.

> look
Prairie Overlook
A sodium-orange prairie flickers like a dying CRT monitor. Heat-shimmer rises in waves, tasting of copper and old shareware disks. Your rental hover-mule squats half-inflated nearby, its cheap photo-chromatic visor clipped over the air valve.

You can see a rental hover-mule and a photo-chromatic visor here.

> examine mule
A rental hover-mule in questionable condition, half-inflated and sagging to one side.

> e
Tarpit Memorial Parking Lot
Cracked asphalt bubbles with bitumen and cancelled shareware. A faded GUE HERITAGE TOUR placard is half-submerged in tar.

> e
Gift Kiosk
A rotating rack of foam crowns and LED key-chains stands in this abandoned tourist trap. A wall-mounted FrobozzCo Breeze-Matic hand-dryer is still warm.

You can see a FrobozzCo Breeze-Matic hand-dryer here.

> take dryer
It's bolted to the wall. You'll need to yank it free.

> s
Mailbox Approach
The White House front door is buried to the letterbox in loam. Only the mailbox remains accessible, stuffed with fossil circulars.

You can see a mailbox here.

> in
Front Hall
The front hall is a disaster of dust, cobwebs, and organic matter. Everything leans toward depressing beige.

> look
Front Hall
The front hall is a disaster of dust, cobwebs, and organic matter. Everything leans toward depressing beige.

> d
The cellar stairs are blocked by debris.
```

The game continues with puzzles involving cleaning the hall, finding keys, assembling ropes, navigating bureaucratic guilds, and ultimately discovering that corporate branding has colonized the entire empire. For a complete walkthrough, see `docs/walkthrough.md`.

## 🎮 Playing the Game

### Installing a Z-machine Interpreter (Ubuntu/Debian)

If you don't have a Z-machine interpreter installed, choose one:

#### Option 1: Frotz (Command-Line, Recommended)

```bash
# Install Frotz
sudo apt-get update
sudo apt-get install frotz

# Run the game
frotz frobzwane.z5
```

**Frotz Features:**
- Lightweight, fast
- Works in terminal
- Supports save/restore
- Arrow keys for command history

#### Option 2: Gargoyle (GUI, User-Friendly)

```bash
# Install Gargoyle
sudo apt-get update
sudo apt-get install gargoyle-free

# Run the game
gargoyle-free frobzwane.z5
```

**Gargoyle Features:**
- Graphical interface
- Better for beginners
- Supports multiple IF formats
- Built-in font options

#### Option 3: Zoom (Alternative Command-Line)

```bash
# Install Zoom
sudo apt-get update
sudo apt-get install zoom

# Run the game
zoom frobzwane.z5
```

#### Option 4: Online (No Installation)

If you can't install software, use an online interpreter:

1. Go to [Parchment](https://iplayif.com/) or [IFDB Play Online](https://ifdb.org/)
2. Upload `frobzwane.z5`
3. Play in your browser

### Running the Game

Once you have an interpreter installed:

```bash
# Using Frotz (command-line)
frotz frobzwane.z5

# Using Gargoyle (GUI)
gargoyle-free frobzwane.z5

# Using Zoom
zoom frobzwane.z5
```

### System Requirements

- **Ubuntu/Debian**: Install via `apt-get` (see above)
- **Other Linux**: Use your package manager or compile from source
- **Windows**: Download interpreters from [IF Archive](https://www.ifarchive.org/)
- **macOS**: Use Homebrew: `brew install frotz` or `brew install gargoyle`
- **Z-machine version**: Version 5 compatible interpreter required

### Game Controls

Standard interactive fiction commands:

**Movement:**
- `go north` or `n` - Move north
- `s`, `e`, `w` - South, east, west
- `u`, `d` - Up, down
- `in`, `out` - Enter, exit

**Actions:**
- `look` or `l` - Look around
- `examine <object>` or `x <object>` - Examine something
- `take <object>` - Pick up an object
- `drop <object>` - Drop an object
- `inventory` or `i` - Check your inventory

**Game Management:**
- `save` - Save your game (prompts for filename)
- `restore` - Restore a saved game (prompts for filename)
- `quit` or `q` - Quit the game
- `help` - Get help (if supported by interpreter)

**Tips:**
- Use arrow keys (↑↓) in Frotz to recall previous commands
- Abbreviations work: `n` for `north`, `x lamp` for `examine lamp`
- Type `look` frequently to re-read room descriptions

## 🔨 Compiling from Source

This project is **completely self-contained** - all necessary library files are included in the `lib/` directory.

### Prerequisites

1. **Inform 6 Compiler** - Must be installed and available
   - Check: `which inform` or `inform -v5`
   - Download: [Inform 6](http://www.inform-fiction.org/inform6.html)

### Quick Compilation

```bash
# Using the build script (recommended)
./build.sh

# Or manually
inform -v5 +lib/inform6lib frobzwane.inf
```

### Build Script

The included `build.sh` script handles compilation automatically and includes several features:

#### Basic Usage

```bash
# Make the script executable (first time only)
chmod +x build.sh

# Compile the game to .z5 binary
./build.sh
```

#### Build Script Features

The `build.sh` script provides:

1. **Inform 6 Installation Check**: 
   - Automatically detects if Inform 6 is installed
   - Checks for aliases and common installation locations
   - Provides detailed installation instructions if not found

2. **Compilation**:
   - Verifies library files are present
   - Compiles the source to `frobzwane.z5`
   - Displays compilation status and file information
   - Shows frotz installation status and run instructions

3. **Web Version (Optional)**:
   ```bash
   # Create Parchment web version
   ./build.sh --web
   ```
   - Downloads and sets up Parchment interpreter
   - Creates `parchment/` directory with web-ready files
   - Provides local preview instructions (`npx serve`)

4. **Help**:
   ```bash
   ./build.sh --help
   ```
   - Shows usage information

#### What the Script Does

When you run `./build.sh`:
- ✅ Checks if Inform 6 compiler is installed
- ✅ Verifies library files exist in `lib/inform6lib/`
- ✅ Compiles `frobzwane.inf` to `frobzwane.z5`
- ✅ Validates the output file
- ✅ Checks for frotz interpreter
- ✅ Provides instructions to run the game

When you run `./build.sh --web`:
- ✅ Does everything above, plus:
- ✅ Downloads Parchment interpreter
- ✅ Creates `parchment/` directory with `index.html` and game files
- ✅ Provides local preview instructions

#### Example Output

```
==========================================
FROBSWANE Build Script
==========================================

Compiling frobzwane.inf...
Using compiler: /path/to/inform
Library path: ./lib/inform6lib

[Compilation output...]

==========================================
✓ Compilation successful!
==========================================

Output file: frobzwane.z5
-rw-r--r-- 1 user user 85K Nov 30 10:00 frobzwane.z5

File type: frobzwane.z5: Infocom (Z-machine 5, Release 1, Serial 251130)

==========================================
Ready to play!
==========================================

Frotz interpreter found: /usr/games/frotz

To run the game:
  frotz frobzwane.z5
```

### Manual Compilation

If you prefer to compile manually:

```bash
inform -v5 +lib/inform6lib frobzwane.inf
```

**Options:**
- `-v5` - Compile for Z-machine version 5
- `+lib/inform6lib` - Path to library files (relative to project root)
- `frobzwane.inf` - Source file
- Output: `frobzwane.z5` (created automatically)

### Compilation Output

Successful compilation produces:
- `frobzwane.z5` - The playable game file (~85 KB)

**Note**: You may see warnings about unused variables. This is normal for early development - these variables are defined for future features that haven't been implemented yet. The game compiles successfully with 0 errors.

## 📁 Project Structure

```
frobzwane/
├── README.md                    # This file
├── frobzwane.inf                # Main source file (heavily commented)
├── build.sh                     # Build script
├── .gitignore                   # Git ignore rules
├── lib/                         # Inform 6 library (self-contained)
│   └── inform6lib/
│       ├── parser.h
│       ├── verblib.h
│       ├── grammar.h
│       ├── english.h
│       └── ... (other library files)
├── docs/                        # Documentation directory
│   ├── walkthrough.md           # Complete playthrough guide
│   ├── FROBSWANE_Complete_Design.md
│   ├── INFORM6_COMPILATION_GUIDE.md
│   ├── RUNTIME_INSTRUCTIONS.md
│   └── ... (other documentation)
└── frobzwane.z5                 # Compiled game (generated)
```

## 🎯 Game Status

**Current Status**: Early Development

- ✅ Basic structure implemented
- ✅ 12 of 31 rooms implemented
- ✅ Basic objects and mechanics
- ✅ Compiles successfully
- ⏳ Remaining rooms and objects
- ⏳ Puzzle implementations
- ⏳ NPC system
- ⏳ Full game mechanics

See `IMPLEMENTATION_ASSESSMENT.md` for detailed status.

## 📚 Documentation

All documentation is in the `docs/` directory:

- **README.md** (this file) - Quick start, compilation, and runtime
- **docs/walkthrough.md** - Complete playthrough with every command and parser response
- **docs/RUNTIME_INSTRUCTIONS.md** - Detailed guide for running the game
- **docs/QUICK_START.md** - Quick reference for players and developers
- **docs/INFORM6_COMPILATION_GUIDE.md** - Complete Inform 6 compilation guide
- **docs/FROBSWANE_Complete_Design.md** - Full game design document
- **docs/IMPLEMENTATION_ASSESSMENT.md** - What's implemented vs. what's needed
- **docs/IMPLEMENTATION_CHECKLIST.md** - Development checklist
- **docs/SETUP_COMPLETE.md** - Setup verification
- **docs/COMPILATION_VERIFICATION.md** - Compilation status and verification
- **docs/LIBRARY_SETUP.md** - Library setup information
- **docs/COMPILATION_NOTES.md** - Compilation notes

## 🛠️ Development

### For Developers

This project uses Inform 6 (not Inform 7). The source file is `frobzwane.inf`.

**Key Files:**
- `frobzwane.inf` - Main source code (heavily commented for learning)
- `lib/inform6lib/` - Inform 6 library (included, self-contained)
- `walkthrough.md` - Complete playthrough guide (updated as game expands)

**Compiling:**
```bash
./build.sh
```

**Testing:**
```bash
# Install interpreter if needed (Ubuntu/Debian)
sudo apt-get install frotz

# Run the game
frotz frobzwane.z5
```

See **RUNTIME_INSTRUCTIONS.md** for detailed runtime setup and troubleshooting.

### Adding Features

1. Edit `frobzwane.inf`
2. Compile: `./build.sh`
3. Test: `frotz frobzwane.z5`
4. Repeat

## 🐛 Troubleshooting

### Compilation Errors

**Error: "Couldn't open source file parser.h"**
- Solution: Ensure you're in the project root directory
- Check: `ls lib/inform6lib/parser.h` should exist

**Error: "inform: command not found"**
- Solution: Install Inform 6 compiler
- Check: `which inform` or add Inform to PATH

**Error: "No such constant as NewRoom"**
- Solution: Ensure all required stub routines are in `frobzwane.inf`
- See source file for required stubs

### Runtime Issues

**"Command not found: frotz" or "gargoyle-free"**
- Solution: Install the interpreter (see "Installing a Z-machine Interpreter" above)
- Ubuntu/Debian: `sudo apt-get install frotz` or `sudo apt-get install gargoyle-free`

**Game won't start**
- Check: File is `frobzwane.z5` (not `.inf`)
- Verify: `file frobzwane.z5` shows "Z-machine 5"
- Try: Different interpreter (Frotz, Gargoyle, Zoom)
- Check: File permissions: `chmod +r frobzwane.z5`

**"It is pitch dark" or can't see anything**
- This is normal for dark rooms - you need a light source
- Find and use the LED Frob-Lux lamp

**Save/Restore not working**
- Frotz: Saves to current directory, use `save filename` then `restore filename`
- Gargoyle: Uses GUI save/restore dialogs
- Some interpreters handle saves differently - check interpreter documentation

**Interpreter crashes or freezes**
- Try a different interpreter
- Check interpreter version compatibility
- Report issue with interpreter name and version

## 📝 License

[Add your license here]

## 🙏 Credits

- **Design**: Based on FROBSWANE Complete Design Document
- **Compiler**: Inform 6.45 (in development)
- **Library**: Inform 6 Library 6.12.7

## 🔗 Resources

- [Inform 6 Manual](http://www.inform-fiction.org/manual/)
- [IF Archive](https://www.ifarchive.org/)
- [Interactive Fiction Database](https://ifdb.org/)
- [Inform 6 Examples](https://www.ifarchive.org/indexes/if-archiveXprogrammingXinformXsourceXexamples.html)

## 📧 Contact

[Add contact information if desired]

---

**Note**: This project is self-contained. All library files needed for compilation are included in the `lib/` directory. No external library downloads required.

