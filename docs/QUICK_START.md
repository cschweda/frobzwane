# Quick Start Guide

## For Players

**Just want to play?** 

### Step 1: Install an Interpreter (Ubuntu/Debian)

```bash
# Option 1: Frotz (command-line, recommended)
sudo apt-get update
sudo apt-get install frotz

# Option 2: Gargoyle (GUI, user-friendly)
sudo apt-get update
sudo apt-get install gargoyle-free
```

### Step 2: Run the Game

```bash
# Using Frotz
frotz frobzwane.z5

# Using Gargoyle
gargoyle-free frobzwane.z5
```

**No installation?** Use online: Upload `frobzwane.z5` to [iplayif.com](https://iplayif.com/)

## For Developers

**Want to compile from source?**

1. **Prerequisites**: Install Inform 6 compiler
   ```bash
   # Check if installed
   which inform
   ```

2. **Compile**:
   ```bash
   ./build.sh
   ```

That's it! The project is self-contained - all library files are included.

## For GitHub Contributors

1. **Clone the repository**
2. **Compile**:
   ```bash
   ./build.sh
   ```
3. **Play**:
   ```bash
   frotz frobzwane.z5
   ```

No additional setup required - everything is included!

## Troubleshooting

**Can't find Inform compiler?**
- Install Inform 6 from: http://www.inform-fiction.org/inform6.html
- Or add it to your PATH

**Compilation errors?**
- Make sure you're in the project root directory
- Check that `lib/inform6lib/` exists
- Run `./build.sh` for automatic path detection

**Game won't run?**
- Make sure you're running the `.z5` file (not `.inf`)
- Try a different interpreter (Frotz, Gargoyle, etc.)

See `README.md` in the project root for more details.
