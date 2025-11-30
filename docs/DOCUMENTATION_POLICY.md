# Documentation Policy

## File Organization

**Rule**: All documentation files (`.md`) except `README.md` must be placed in the `docs/` directory.

### Project Root
- `README.md` - Main project readme (stays in root)

### docs/ Directory
- All other `.md` files go here
- Includes: guides, walkthroughs, design docs, checklists, etc.

## Adding New Documentation

When creating new documentation:

1. **Place in `docs/`**: All new `.md` files go in `docs/`
2. **Update `docs/README.md`**: Add entry to documentation index
3. **Update main `README.md`**: Add reference in documentation section
4. **Keep current**: Ensure information is up-to-date

## Updating Existing Documentation

When updating documentation:

1. **Keep references current**: Update any cross-references to other docs
2. **Update paths**: If moving files, update all references
3. **Version info**: Update "Last Updated" dates if significant changes
4. **Status updates**: Keep implementation status current

## Documentation Files

### Current Documentation (in `docs/`):

**Getting Started:**
- `QUICK_START.md` - Quick reference
- `RUNTIME_INSTRUCTIONS.md` - Running the game

**Compilation & Setup:**
- `INFORM6_COMPILATION_GUIDE.md` - Compilation guide
- `LIBRARY_SETUP.md` - Library setup
- `COMPILATION_VERIFICATION.md` - Compilation status
- `COMPILATION_NOTES.md` - Compilation notes
- `SETUP_COMPLETE.md` - Setup status

**Game Design & Development:**
- `FROBSWANE_Complete_Design.md` - Full design document
- `walkthrough.md` - Complete playthrough (update as game expands)
- `IMPLEMENTATION_ASSESSMENT.md` - Implementation status
- `IMPLEMENTATION_CHECKLIST.md` - Development checklist

**Meta:**
- `README.md` - Documentation index (this directory)
- `DOCUMENTATION_POLICY.md` - This file

## Cross-References

When referencing other documentation:

- **Within docs/**: Use relative paths like `[QUICK_START.md](QUICK_START.md)`
- **From root README**: Use `docs/FILENAME.md`
- **From docs/README**: Use `FILENAME.md` (same directory)

## Update Checklist

When adding/updating documentation:

- [ ] File placed in correct location (`docs/` for all except root `README.md`)
- [ ] Added to `docs/README.md` index
- [ ] Referenced in main `README.md` if appropriate
- [ ] Cross-references updated
- [ ] "Last Updated" date set (if significant)
- [ ] Status information current
- [ ] No broken links

## Version Control

- All documentation is tracked in git
- Documentation changes should be committed with descriptive messages
- Keep documentation in sync with code changes

---

**Last Updated**: 2024-11-30  
**Policy Version**: 1.0

