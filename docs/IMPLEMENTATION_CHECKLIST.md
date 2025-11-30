# FROBSWANE: Implementation Checklist
## Quick Reference for Inform 6 Development

---

## 📋 CORE STRUCTURE

### Source File Setup
- [ ] Create main `.inf` or `.i6` file
- [ ] Include standard Inform 6 library (`Parser.h`, `Verblib.h`, `Grammar.h`)
- [ ] Set Z-machine version to 5
- [ ] Define game metadata (title, author, version)
- [ ] Write `Initialise` routine
- [ ] Set starting location

### Rooms (31 total)
- [ ] Room 1: Prairie Overlook
- [ ] Room 2: Tarpit Memorial Parking Lot
- [ ] Room 3: Gift Kiosk
- [ ] Room 4: Mailbox Approach
- [ ] Room 5: Front Hall (Pre-Clean) - **STATE VARIANT**
- [ ] Room 5b: Front Hall (Post-Clean) - **STATE VARIANT**
- [ ] Room 6: Kitchen
- [ ] Room 7: Living Room Alcove
- [ ] Room 8: Cellar Landing
- [ ] Room 9: Rusted Grating
- [ ] Room 10: Former Maze Demolition Site - **DARK**
- [ ] Room 11: Mail-Sorting Vestibule - **DARK**
- [ ] Room 12: Western Arch of Dam #3 - **DARK**
- [ ] Room 13: Dam Gift-Shop / Café - **LIGHTED**
- [ ] Room 14: Valve Platform - **DARK**
- [ ] Room 15: Bank Lobby - **DARK**
- [ ] Room 16: Safety-Deposit Vault - **DARK**
- [ ] Room 17: Excavated Filing Drawer - **DARK**
- [ ] Room 18: Free-Masonry Entry Hall - **DARK**
- [ ] Room 19: Curriculum Office - **DARK**
- [ ] Room 20: Auditors' Waiting Niche - **DARK**
- [ ] Room 21: Echo Royal Puzzle – West Rotunda - **DARK**
- [ ] Room 22: Echo Royal Puzzle – East Rotunda - **DARK**
- [ ] Room 23: Royal Slide-Deck Auditorium - **DARK**
- [ ] Room 24: Projection Booth - **DARK**
- [ ] Room 25: Maintenance Corridor Alpha - **DARK**
- [ ] Room 26: Implementers' Control Room - **DARK**
- [ ] Room 27: Final Archive Stacks - **DARK**
- [ ] Room 28: Throne Antechamber - **DARK**
- [ ] Room 29: Throne of FROBSWANE™ - **DARK**
- [ ] Room 30: White House Attic - **LIGHTED**
- [ ] Room 31: Prairie Epilogue / Mailbox Stinger

### Room Connections
- [ ] Verify all exits connect correctly
- [ ] Implement conditional exits (blocked until puzzle solved)
- [ ] Test bidirectional movement where applicable

---

## 🎯 OBJECTS

### Critical Puzzle Items
- [ ] FrobozzCo Breeze-Matic Hand-Dryer (with YANK verb)
- [ ] LED Frob-Lux Lamp (light source, 800-turn counter)
- [ ] Postal Codes (rope component)
- [ ] Lanyards (rope component)
- [ ] Espresso (liquid, multiple uses)
- [ ] FROBSWANE™ Cereal Box (container)
- [ ] Decoder Ring (viewing tool, chargeable)
- [ ] Cereal Loops (material, transformable)
- [ ] Business Card (CV component)
- [ ] Academic Gown (CV component)
- [ ] Grant Letter (CV component)
- [ ] Insurance Waiver (CV component)

### Treasure Items
- [ ] Jeweled Egg (scoring item)

### Lore Items
- [ ] GUE-Journal Paper
- [ ] Debt-Collection Letter
- [ ] Six 8×10 Photographs
- [ ] Brass Lantern Key (sequel hook)
- [ ] Trading Card (sequel hook)
- [ ] Brass Lantern (untouchable, sequel tease)

### Scenery/Interactive
- [ ] Rental Hover-Mule (vehicle, rideable)
- [ ] Photo-chromatic Visor
- [ ] Mailbox (start - container)
- [ ] Mailbox (end - container)
- [ ] Ice-cube Key
- [ ] Icebox (container)
- [ ] Wall Safe (container)
- [ ] Valve Wheel (frozen, needs espresso)
- [ ] Hell-mite Colony (NPC/hazard)
- [ ] Rotating Wall Panels (4 panels, F-R-O-B puzzle)
- [ ] Three Valve Wheels (HOT, COLD, EXISTENTIAL)
- [ ] Throne (with deed slot)
- [ ] Film Projector
- [ ] Broken Save-Disk (punch-card component)
- [ ] Data Ribbon (punch-card component)
- [ ] Map Fragment (punch-card component)

---

## 🔧 CUSTOM VERBS

- [ ] YANK (synonyms: PULL, TEAR, RIP)
- [ ] CRUSH (synonyms: SMASH, GRIND)
- [ ] SPIT ON (synonyms: MOISTEN, WET)
- [ ] PAINT CIRCLE (synonyms: DRAW CIRCLE, MARK CIRCLE)
- [ ] LOOK THROUGH (synonyms: VIEW THROUGH, PEER THROUGH)
- [ ] CLICK (synonyms: SHUT, CLOSE - for visor)
- [ ] ROTATE PANEL (synonyms: TURN PANEL, SPIN PANEL)
- [ ] RIDE (for hover-mule)
- [ ] ORDER (for espresso)
- [ ] ASSEMBLE (for rope, punch-card)
- [ ] SUBMIT (for CV components)

---

## 🧩 PUZZLES

### Puzzle 1: Cleaning the Front Hall
- [ ] Hand-dryer can be yanked from wall
- [ ] Using dryer in Front Hall transforms state
- [ ] Room description changes permanently
- [ ] Cellar becomes accessible

### Puzzle 2: Opening the Grating
- [ ] Debt letter can be removed from lever
- [ ] Lever can be pulled after letter removed
- [ ] Grating opens, underground accessible

### Puzzle 3: Assembling the Rope
- [ ] Lanyards and codes can be taken
- [ ] ASSEMBLE command combines them into rope
- [ ] Rope can be tied to arch
- [ ] Rope enables dam crossing

### Puzzle 4: Obtaining Espresso & Using It
- [ ] Barista serves espresso when asked
- [ ] Espresso can be poured on valve wheel
- [ ] Calcium melts, valve turns
- [ ] Reservoir drains, bank accessible
- [ ] Espresso can charge decoder ring
- [ ] Drinking espresso triggers flashback (optional)

### Puzzle 5: Assembling the CV
- [ ] All 4 CV components can be collected
- [ ] CV requirements visible on lectern
- [ ] Components can be submitted to slot
- [ ] All 4 must be submitted
- [ ] Wall sinks after complete submission

### Puzzle 6: Echo Royal Puzzle – Spelling F-R-O-B
- [ ] Four panels can be rotated
- [ ] Panels show different letters
- [ ] Spelling F-R-O-B extends bridge
- [ ] Echo messages change after success

### Puzzle 7: Valve Pipe Sequence
- [ ] Three valves can be turned
- [ ] Order matters: HOT → COLD → EXISTENTIAL
- [ ] Wrong order has consequences (despair-mist)
- [ ] Correct order opens hatch

### Puzzle 8: The Final Cereal Puzzle (Throne Deed)
- [ ] Cereal box can be opened
- [ ] Ring and loops can be taken
- [ ] Espresso can charge ring (violet LED)
- [ ] Loops can be crushed
- [ ] Crushed loops + spit = paste (3 uses)
- [ ] Looking through charged ring reveals wall text
- [ ] Paste can paint circles (while looking through ring)
- [ ] Three circles must be painted
- [ ] Deed can be inserted in slot
- [ ] Throne rotates after deed accepted

---

## 🎭 NPCs

### Patent-Troll Barista, Esq.
- [ ] NPC object definition
- [ ] Location: Dam Café
- [ ] Dialogue topics: COFFEE, FROBSWANE, GUE, TROLLS
- [ ] Espresso serving mechanic
- [ ] Tip acceptance
- [ ] All dialogue responses implemented

### Hell-Mite Colony
- [ ] Colony object (scenery/NPC)
- [ ] Attack response (fatal swarm)
- [ ] Leave-alone behavior (harmless)
- [ ] Eggshell numbers visible

---

## ⚙️ SYSTEMS

### State Management
- [ ] Global: `front_hall_cleaned` (boolean)
- [ ] Global: `reservoir_drained` (boolean)
- [ ] Global: `throne_rotated` (boolean)
- [ ] Global: `lamp_turns` (counter, 800)
- [ ] Global: `decoder_ring_charged` (boolean)
- [ ] Global: `paste_uses` (counter, 0-3)
- [ ] Global: `panel1_letter`, `panel2_letter`, etc. (F-R-O-B puzzle)
- [ ] Global: `valve_hot_turned`, `valve_cold_turned`, `valve_existential_turned`
- [ ] Global: `cv_card_submitted`, `cv_gown_submitted`, etc.
- [ ] Global: `house_collapsing` (boolean, finale)

### Light & Darkness
- [ ] Dark property on all underground rooms
- [ ] Light source property on lamp
- [ ] Before routine checks light before movement in dark rooms
- [ ] Lamp turn counter decrements each turn
- [ ] Lamp description updates with remaining turns
- [ ] Darkness messages ("It is pitch dark. You can't see where you're going.")

### Scoring System
- [ ] Score variable initialized to 0
- [ ] MAX_SCORE constant (350)
- [ ] AwardPoints function
- [ ] Points for each puzzle
- [ ] Points for treasures
- [ ] Points for exploration
- [ ] RankTitle function
- [ ] Rank titles at score thresholds

### Container System
- [ ] Mailbox (start) - contains coupons, ticket
- [ ] Mailbox (end) - contains trading card
- [ ] Cereal box - contains ring, loops
- [ ] Icebox - contains ice-cube key
- [ ] Wall safe - contains brass lantern key
- [ ] Safety-deposit boxes

### Assembly Mechanics
- [ ] Rope assembly (lanyards + codes)
- [ ] Punch-card assembly (disk + ribbon + fragment)
- [ ] Paste creation (loops crushed + spit)

### Viewing Filter (Decoder Ring)
- [ ] Ring charging (espresso poured on ring)
- [ ] Looking through charged ring reveals wall text
- [ ] Trading card decoding through ring
- [ ] Special descriptions when viewing through ring

### Flashback Sequence
- [ ] 3-turn sequence when drinking espresso
- [ ] Special text display
- [ ] Turn counter management

### Timed Collapse Sequence
- [ ] House collapse after throne puzzle
- [ ] Turn-based urgency
- [ ] Escape mechanics (JUMP/CLIMB OUT)
- [ ] Fatal if wrong action taken

### Vehicle System
- [ ] Hover-mule rideable but not takeable
- [ ] Visor must be clicked before riding
- [ ] Movement messages ("HELLO USER, PLEASE RIDE RESPONSIBLY")
- [ ] Mule follows player on surface

---

## 🎨 POLISH

### Error Messages
- [ ] XYZZY: "Nothing happens. (Did you expect something?)"
- [ ] PLUGH: "That's a word for a different adventure."
- [ ] DIAGNOSE: "You are in perfect health, though your academic career is in critical condition."
- [ ] PRAY: "The Implementers are not listening. They left this place long ago."
- [ ] SWEAR: "You mutter something about corporate franchising and academic funding."
- [ ] SING: "Your singing echoes through the ruins. Somewhere, a hell-mite chitters approvingly."
- [ ] Custom "I don't understand" messages
- [ ] Custom "You can't go that way" messages

### Disambiguation
- [ ] Valve disambiguation (HOT, COLD, EXISTENTIAL)
- [ ] Panel disambiguation (1, 2, 3, 4)
- [ ] Espresso target disambiguation (WHEEL, RING, etc.)

### Atmospheric Details
- [ ] Rich room descriptions
- [ ] Detailed object examination text
- [ ] Flavor text for interactions
- [ ] Meta-humor throughout
- [ ] Corporate satire elements

### Death & Failure
- [ ] Death handler for reservoir jump (no rope)
- [ ] Death handler for hell-mite attack
- [ ] Death handler for broken ladder descent
- [ ] Death messages
- [ ] Restore/undo support

### Save/Restore
- [ ] Custom save messages
- [ ] State persistence verification
- [ ] Save file compatibility

---

## 🧪 TESTING

### Critical Path Testing
- [ ] Complete walkthrough from start to end
- [ ] All puzzles solvable in order
- [ ] No unwinnable states
- [ ] All items obtainable
- [ ] All exits accessible

### Edge Cases
- [ ] Espresso used before valve (renewable?)
- [ ] Paste used incorrectly (regenerates?)
- [ ] Critical items dropped in inaccessible locations
- [ ] Lamp runs out (fatal or just dark?)
- [ ] Sequence breaking attempts
- [ ] Wrong puzzle order attempts

### Scoring Verification
- [ ] Perfect playthrough = 350 points
- [ ] All actions award correct points
- [ ] Rank titles display correctly
- [ ] Score persists through save/restore

### Parser Testing
- [ ] All synonyms work
- [ ] Disambiguation works
- [ ] Error messages appropriate
- [ ] No guess-the-verb frustrations

### State Testing
- [ ] Front Hall state persists
- [ ] Throne rotation permanent
- [ ] Collapsed house can't be re-entered
- [ ] All state changes work correctly

---

## 📝 DOCUMENTATION

- [ ] In-game help (HELP command)
- [ ] HINT system (if implemented)
- [ ] README for players
- [ ] Implementation notes for future maintainers
- [ ] Credit/acknowledgments

---

## ✅ FINAL CHECKS

- [ ] Game compiles without errors
- [ ] Game compiles without warnings (or acceptable warnings)
- [ ] Game runs in standard interpreters
- [ ] All puzzles tested and working
- [ ] All objects tested
- [ ] All rooms tested
- [ ] Scoring system verified
- [ ] No spelling/grammar errors
- [ ] Tone consistent throughout
- [ ] Meta-humor lands correctly
- [ ] Sequel hook works

---

## 🚀 RELEASE READINESS

- [ ] Beta testing completed
- [ ] Bug fixes applied
- [ ] Final polish pass
- [ ] Release notes written
- [ ] Distribution package prepared

---

**Last Updated**: Assessment Date
**Status**: Ready for implementation
