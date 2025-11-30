#!/bin/bash
# Build script for FROBSWANE
# Compiles Inform 6 source to Z5 binary
# This project is self-contained - all library files are included
#
# Usage:
#   ./build.sh           - Compile .z5 binary only
#   ./build.sh --web     - Compile .z5 and create Parchment web version
#   ./build.sh --help    - Show help message

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LIBRARY_PATH="$SCRIPT_DIR/lib/inform6lib"
SOURCE_FILE="frobzwane.inf"
OUTPUT_FILE="frobzwane.z5"
VERSION=5
BUILD_WEB=false

# Parse command line arguments
if [ "$1" == "--web" ] || [ "$1" == "-w" ]; then
    BUILD_WEB=true
elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "FROBSWANE Build Script"
    echo ""
    echo "Usage:"
    echo "  ./build.sh           - Compile .z5 binary only"
    echo "  ./build.sh --web    - Compile .z5 and create Parchment web version"
    echo "  ./build.sh --help   - Show this help message"
    echo ""
    exit 0
fi

# Find Inform 6 compiler
# Check multiple methods: preferred locations first, then PATH/aliases
INFORM_CMD=""
INFORM_FOUND=false

# Method 1: Check preferred/stable installation locations FIRST
# This ensures we use stable versions (like inform642) over development versions
PREFERRED_PATHS=(
    # User's custom Inform 6 location (stable 6.42 first)
    "$HOME/infocom/Inform6/inform642"
    # Standard system locations
    "/usr/local/bin/inform"
    "/usr/bin/inform"
    "$HOME/bin/inform"
    "$HOME/inform/inform"
    "$HOME/inform/Inform6/inform"
    "/opt/inform/inform"
    "/opt/inform/Inform6/inform"
    "/usr/local/games/inform"
)

for path in "${PREFERRED_PATHS[@]}"; do
    if [ -f "$path" ] && [ -x "$path" ]; then
        # Test if it's actually Inform 6
        if "$path" -v 2>&1 | head -1 | grep -q "Inform 6"; then
            INFORM_CMD="$path"
            INFORM_FOUND=true
            break
        fi
    fi
done

# Method 2: Try to find 'inform' in PATH (might be alias or symlink)
if [ "$INFORM_FOUND" = false ] && command -v inform &> /dev/null; then
    INFORM_CMD=$(command -v inform)
    # Test if it works
    if "$INFORM_CMD" -v 2>&1 | head -1 | grep -q "Inform 6"; then
        INFORM_FOUND=true
    fi
fi

# Method 3: Check for alias in shell config files (bash/zsh)
if [ "$INFORM_FOUND" = false ] && [ -n "$HOME" ]; then
    # Check common shell config files for alias definitions
    CONFIG_FILES=(
        "$HOME/.bashrc"
        "$HOME/.bash_aliases"
        "$HOME/.zshrc"
        "$HOME/.profile"
        "$HOME/.bash_profile"
    )
    
    for config_file in "${CONFIG_FILES[@]}"; do
        if [ -f "$config_file" ]; then
            # Look for alias inform=... patterns
            alias_line=$(grep -E "^[[:space:]]*alias[[:space:]]+inform=" "$config_file" 2>/dev/null | head -1)
            if [ -n "$alias_line" ]; then
                # Extract the path from the alias
                alias_path=$(echo "$alias_line" | sed -E "s/.*alias[[:space:]]+inform=['\"]([^'\"]+)['\"].*/\1/" | awk '{print $1}')
                # Test if the path exists and works
                if [ -n "$alias_path" ] && [ -f "$alias_path" ] && [ -x "$alias_path" ]; then
                    if "$alias_path" -v 2>&1 | head -1 | grep -q "Inform 6"; then
                        INFORM_CMD="$alias_path"
                        INFORM_FOUND=true
                        break
                    fi
                fi
            fi
        fi
    done
fi

# Method 4: Check additional common installation locations
if [ "$INFORM_FOUND" = false ]; then
    COMMON_PATHS=(
        # User's Inform 6 directory (development version as fallback)
        "$HOME/infocom/Inform6/inform"
    )
    
    for path in "${COMMON_PATHS[@]}"; do
        if [ -f "$path" ] && [ -x "$path" ]; then
            # Test if it's actually Inform 6
            if "$path" -v &> /dev/null 2>&1 || "$path" --version &> /dev/null 2>&1; then
                INFORM_CMD="$path"
                INFORM_FOUND=true
                break
            fi
        fi
    done
fi

# Final verification - if we still don't have it, show error
if [ "$INFORM_FOUND" = false ] || [ -z "$INFORM_CMD" ]; then
    echo "=========================================="
    echo "Error: Inform 6 compiler not found"
    echo "=========================================="
    echo ""
    echo "Inform 6 is required to compile this game."
    echo ""
    echo "Installation options:"
    echo ""
    echo "1. Download from GitHub (Recommended):"
    echo "   - Visit: https://github.com/DavidKinder/Inform6/releases"
    echo "   - Download the latest release for your platform"
    echo "   - Extract and add to your PATH, or place in a standard location"
    echo ""
    echo "2. Build from source:"
    echo "   - Visit: https://github.com/DavidKinder/Inform6"
    echo "   - Follow the build instructions for your platform"
    echo ""
    echo "3. Linux (Ubuntu/Debian) - Manual installation:"
    echo "   - Download the Linux binary from GitHub releases"
    echo "   - Extract to /usr/local/bin/ or ~/bin/"
    echo "   - Make executable: chmod +x /usr/local/bin/inform"
    echo ""
    echo "4. macOS:"
    echo "   - Download the macOS binary from GitHub releases"
    echo "   - Or use Homebrew: brew install inform6"
    echo ""
    echo "5. Windows:"
    echo "   - Download the Windows binary from GitHub releases"
    echo "   - Extract and add to your PATH"
    echo ""
    echo "After installation, ensure 'inform' is in your PATH, or create an alias:"
    echo "   alias inform='/path/to/inform'"
    echo ""
    echo "Then run this script again."
    echo ""
    exit 1
fi

# Verify the compiler works
if ! "$INFORM_CMD" -v &> /dev/null && ! "$INFORM_CMD" --version &> /dev/null; then
    echo "Warning: Found Inform compiler at $INFORM_CMD but it may not be working correctly."
    echo "Attempting to continue anyway..."
fi

# Check if library exists
if [ ! -d "$LIBRARY_PATH" ]; then
    echo "Error: Library not found at $LIBRARY_PATH"
    echo "This project should be self-contained. Please ensure lib/inform6lib exists."
    exit 1
fi

# Check if source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo "Error: Source file not found: $SOURCE_FILE"
    exit 1
fi

echo "=========================================="
echo "FROBSWANE Build Script"
echo "=========================================="
echo ""
echo "Compiling $SOURCE_FILE..."
echo "Using compiler: $INFORM_CMD"
echo "Library path: $LIBRARY_PATH"
echo ""

cd "$SCRIPT_DIR"
$INFORM_CMD -v$VERSION +$LIBRARY_PATH $SOURCE_FILE $OUTPUT_FILE

# Check compilation result
if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "✓ Compilation successful!"
    echo "=========================================="
    echo ""
    echo "Output file: $OUTPUT_FILE"
    ls -lh $OUTPUT_FILE
    echo ""
    
    # Verify the output file exists and is valid
    if [ -f "$OUTPUT_FILE" ]; then
        FILE_TYPE=$(file "$OUTPUT_FILE" 2>/dev/null)
        echo "File type: $FILE_TYPE"
        echo ""
        
        # Sync to parchment folder if it exists
        PARCHMENT_DIR="$SCRIPT_DIR/parchment"
        if [ -d "$PARCHMENT_DIR" ]; then
            cp "$SCRIPT_DIR/$OUTPUT_FILE" "$PARCHMENT_DIR/"
            echo "✓ Synced $OUTPUT_FILE to parchment/ folder"
            echo ""
        fi
        
        # Check for frotz interpreter
        FROTZ_CMD=$(which frotz 2>/dev/null || which /usr/games/frotz 2>/dev/null)
        
        if [ -n "$FROTZ_CMD" ]; then
            echo "=========================================="
            echo "Ready to play!"
            echo "=========================================="
            echo ""
            echo "Frotz interpreter found: $FROTZ_CMD"
            echo ""
            echo "To run the game:"
            echo "  $FROTZ_CMD $OUTPUT_FILE"
            echo ""
            echo "Or simply:"
            echo "  frotz $OUTPUT_FILE"
            echo ""
        else
            echo "=========================================="
            echo "Frotz interpreter not found"
            echo "=========================================="
            echo ""
            echo "To play the game, you need to install a Z-machine interpreter."
            echo ""
            echo "Install Frotz on Ubuntu/Debian:"
            echo "  sudo apt-get update"
            echo "  sudo apt-get install frotz"
            echo ""
            echo "After installation, run:"
            echo "  frotz $OUTPUT_FILE"
            echo ""
            echo "Alternative interpreters:"
            echo "  - Gargoyle (GUI): sudo apt-get install gargoyle-free"
            echo "    Then: gargoyle-free $OUTPUT_FILE"
            echo "  - Zoom: sudo apt-get install zoom"
            echo "    Then: zoom $OUTPUT_FILE"
            echo ""
            echo "Or play online:"
            echo "  Upload $OUTPUT_FILE to https://iplayif.com/"
            echo ""
        fi
        
        # Build web version if requested
        if [ "$BUILD_WEB" = true ]; then
            echo ""
            echo "=========================================="
            echo "Building Parchment Web Version"
            echo "=========================================="
            echo ""
            
            PARCHMENT_DIR="$SCRIPT_DIR/parchment"
            mkdir -p "$PARCHMENT_DIR"
            
            echo "Creating Parchment web version in: $PARCHMENT_DIR"
            
            # Copy the game file
            cp "$OUTPUT_FILE" "$PARCHMENT_DIR/"
            
            # Create HTML file - Parchment single-file version will be used directly
            # We'll create a simple wrapper that configures Parchment
            cat > "$PARCHMENT_DIR/index.html" << 'HTML_EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FROBSWANE: A Post-Underground Excavation</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Courier New', monospace;
            background-color: #1a1a1a;
            color: #e0e0e0;
        }
    </style>
</head>
<body>
    <script>
        // Configure Parchment options before it loads
        window.parchment_options = {
            default_story: ['frobzwane.z5'],
            lib_path: './',
            autoplay: true
        };
    </script>
    <!-- Load Parchment single-file version -->
    <script src="parchment.html"></script>
</body>
</html>
HTML_EOF
            
            # Download Parchment single-file version
            echo "Downloading Parchment interpreter..."
            PARCHMENT_URL="https://github.com/curiousdannii/parchment/releases/download/2025.1.14/parchment-single-file-2025-01-14.zip"
            PARCHMENT_ZIP="$PARCHMENT_DIR/parchment.zip"
            DOWNLOAD_SUCCESS=false
            
            if command -v curl &> /dev/null; then
                if curl -L -f -o "$PARCHMENT_ZIP" "$PARCHMENT_URL" 2>/dev/null; then
                    DOWNLOAD_SUCCESS=true
                fi
            elif command -v wget &> /dev/null; then
                if wget -q -O "$PARCHMENT_ZIP" "$PARCHMENT_URL" 2>/dev/null; then
                    DOWNLOAD_SUCCESS=true
                fi
            fi
            
            if [ "$DOWNLOAD_SUCCESS" = true ] && [ -f "$PARCHMENT_ZIP" ]; then
                echo "Extracting Parchment..."
                cd "$PARCHMENT_DIR"
                
                # Try different extraction methods
                EXTRACTED=false
                if command -v unzip &> /dev/null; then
                    if unzip -q -o "$PARCHMENT_ZIP" 2>/dev/null; then
                        EXTRACTED=true
                    fi
                fi
                
                if [ "$EXTRACTED" = false ] && command -v python3 &> /dev/null; then
                    if python3 -c "import zipfile; z = zipfile.ZipFile('parchment.zip'); z.extractall('.')" 2>/dev/null; then
                        EXTRACTED=true
                    fi
                fi
                
                if [ "$EXTRACTED" = true ]; then
                    # Handle different Parchment formats
                    if [ -f "parchment-single-file.js" ]; then
                        mv "parchment-single-file.js" "parchment.js"
                        # Update index.html to use .js version
                        sed -i 's|src="parchment.html"|src="parchment.js"|' "$PARCHMENT_DIR/index.html" 2>/dev/null
                    elif [ -f "parchment.html" ]; then
                        # Single-file HTML version - modify it to include our game
                        # Replace the default Parchment index.html with our configured version
                        # First, backup the original
                        mv "parchment.html" "parchment-original.html"
                        # Create a new index.html that uses the original with our config
                        cat > "$PARCHMENT_DIR/index.html" << 'HTML_EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FROBSWANE: A Post-Underground Excavation</title>
</head>
<body>
    <script>
        // Configure Parchment options before it loads
        window.parchment_options = {
            default_story: ['frobzwane.z5'],
            lib_path: './',
            autoplay: true
        };
    </script>
    <!-- Load Parchment single-file version -->
    <script src="parchment-original.html"></script>
</body>
</html>
HTML_EOF
                        echo "Using Parchment single-file HTML version"
                    elif [ -f "parchment.js" ]; then
                        # Already named correctly
                        sed -i 's|src="parchment.html"|src="parchment.js"|' "$PARCHMENT_DIR/index.html" 2>/dev/null
                    else
                        # Try to find any .js or .html file in current directory
                        JS_FILE=$(find . -maxdepth 1 -name "*.js" -type f | head -1)
                        HTML_FILE=$(find . -maxdepth 1 -name "*.html" -type f | head -1)
                        if [ -n "$JS_FILE" ]; then
                            mv "$JS_FILE" "parchment.js"
                            sed -i 's|src="parchment.html"|src="parchment.js"|' "$PARCHMENT_DIR/index.html" 2>/dev/null
                        elif [ -n "$HTML_FILE" ] && [ "$HTML_FILE" != "./index.html" ]; then
                            mv "$HTML_FILE" "parchment-original.html"
                            # Recreate index.html with proper config
                            cat > "$PARCHMENT_DIR/index.html" << 'HTML_EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FROBSWANE: A Post-Underground Excavation</title>
</head>
<body>
    <script>
        window.parchment_options = {
            default_story: ['frobzwane.z5'],
            lib_path: './',
            autoplay: true
        };
    </script>
    <script src="parchment-original.html"></script>
</body>
</html>
HTML_EOF
                        fi
                    fi
                    
                    # Clean up zip file
                    rm -f "$PARCHMENT_ZIP"
                else
                    echo "Warning: Could not extract Parchment zip file."
                    echo "Please extract parchment.zip manually."
                fi
                cd "$SCRIPT_DIR"
            else
                echo "Warning: Could not download Parchment automatically."
                echo ""
                echo "Please download Parchment manually:"
                echo "  1. Visit: https://github.com/curiousdannii/parchment/releases"
                echo "  2. Download the latest 'parchment-single-file-*.zip'"
                echo "  3. Extract the .js file and rename it to 'parchment.js'"
                echo "  4. Place it in: $PARCHMENT_DIR/"
                echo ""
            fi
            
            echo "✓ Created index.html"
            
            # Check if Parchment files are present
            if [ -f "$PARCHMENT_DIR/parchment.js" ] || [ -f "$PARCHMENT_DIR/parchment-original.html" ] || [ -f "$PARCHMENT_DIR/parchment.html" ]; then
                echo "✓ Parchment interpreter ready"
                echo ""
                echo "=========================================="
                echo "Web version ready!"
                echo "=========================================="
                echo ""
                echo "Files created in: $PARCHMENT_DIR"
                echo ""
                echo "To preview locally (recommended for development):"
                echo "  1. Using npx serve (no installation needed):"
                echo "     cd parchment && npx serve"
                echo "  2. Open in browser:"
                echo "     http://localhost:3000"
                echo ""
                echo "  Alternative: Using Python (if npx not available):"
                echo "     cd parchment && python3 -m http.server 8000"
                echo "     Then open: http://localhost:8000"
                echo ""
            else
                echo "⚠ Parchment interpreter not found"
                echo ""
                echo "Please download Parchment manually:"
                echo "  1. Visit: https://github.com/curiousdannii/parchment/releases"
                echo "  2. Download the latest 'parchment-single-file-*.zip'"
                echo "  3. Extract and place the .js or .html file in: $PARCHMENT_DIR/"
                echo "  4. If it's an HTML file, rename to 'parchment.html'"
                echo ""
            fi
        fi
    else
        echo "Warning: Output file was not created."
        exit 1
    fi
else
    echo ""
    echo "=========================================="
    echo "✗ Compilation failed"
    echo "=========================================="
    echo ""
    echo "Please check the error messages above."
    echo ""
    echo "Common issues:"
    echo "  - Inform 6 compiler not found"
    echo "  - Library files missing"
    echo "  - Syntax errors in source file"
    echo ""
    exit 1
fi
