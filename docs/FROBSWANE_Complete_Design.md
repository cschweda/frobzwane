# FROBSWANE: A Post-Underground Excavation
## Complete Design Document

---

## Table of Contents
1. [Executive Summary](#executive-summary)
2. [Story & Setting](#story--setting)
3. [Game Structure](#game-structure)
4. [Complete Room List](#complete-room-list)
5. [Complete Object List](#complete-object-list)
6. [Puzzle Design](#puzzle-design)
7. [Character Design](#character-design)
8. [World Rules](#world-rules)
9. [Implementation Notes](#implementation-notes)
10. [Flavor & Polish](#flavor--polish)
11. [Walkthrough & Hints](#walkthrough--hints)
12. [Appendices](#appendices)

---

## Executive Summary

**Game Title**: FROBSWANE: A Post-Underground Excavation

**Genre**: Archaeological Comedy / Meta-Fiction Adventure

**Estimated Play Time**: 2-3 hours

**Total Locations**: 31 rooms (9 surface, 22 underground)

**Total Puzzles**: 8 major puzzles + numerous minor interactions

**Target Audience**: Players familiar with classic Infocom games (especially Zork), fans of meta-humor, interactive fiction enthusiasts who appreciate self-aware parody

**Core Theme**: The relationship between nostalgia, commercialization, and authentic cultural heritage. What happens when beloved fictional worlds become archaeological sites? What remains when the adventure is over?

**Unique Hook**: 
- Post-apocalyptic archaeology of the Zork universe itself
- Corporate franchise saturation of a legendary game world
- Puzzles require breakfast cereal products and expired coffee
- Meta-commentary on interactive fiction history embedded in gameplay
- The "villain" is corporate branding, not a traditional antagonist

**Victory Condition**: Successfully navigate the bureaucratic and physical ruins of the Great Underground Empire, prove your academic credentials to the defunct Free-Masonry guild, claim the deed to the White House property, and discover that FROBSWANE™ has already trademarked everything—leading to the sequel hook.

---

## Story & Setting

### Premise

Professor Hildegard Perelman has won a modest grant to excavate the surface and underground ruins of what was once called "the Great Underground Empire"—though most scholars dismiss it as elaborate marketing fiction created by an extinct software company called Infocom. Armed with 1,200 zorkmid-equivalent in funding, two undergrad assistants (who never show up), a rental hover-mule, and unlimited LED lamp coupons, Perelman must locate, document, and "monetize" the cultural heritage of this legendary digital landscape before her lamp battery expires.

What she discovers is both more and less than expected: the White House is half-buried in prairie loam, the underground empire has been thoroughly corporatized by FrobozzCo's modern descendant FROBSWANE™, and every puzzle solution requires either expired franchise merchandise or bureaucratic paperwork from a long-dead civilization.

The game is a love letter to classic Infocom adventures, particularly Zork, while simultaneously interrogating what it means to excavate, preserve, and commodify beloved cultural artifacts—even fictional ones.

### Setting

**Where**: The surface and underground remains of the Great Underground Empire, approximately 947 years after the original Zork adventures (referred to as "947 GUE" throughout).

**When**: A distant future where the Zork universe has become archaeological subject matter. Technology is a strange mix: hover-mules, LED lamps, espresso machines, and 5¼" floppy disks all coexist. The aesthetic is "retro-futurism meets fantasy archaeology."

**Physical Environment**:
- **Surface World**: A sodium-orange prairie with heat shimmer, cracked asphalt parking lots, half-buried structures, and tourist kiosks that haven't seen tourists in decades
- **Underground Empire**: Collapsed corridors, demolished mazes, corporate gift shops staffed by patent-troll baristas, bureaucratic guilds frozen in time, and data archives containing proof that it was all real

### Backstory

Long ago—in our world, around 1980—a software company called Infocom created interactive fiction games that established the Great Underground Empire as one of gaming's most iconic settings. The White House, the Flood Control Dam #3, the maze of twisty passages all alike—these became cultural touchstones.

In the game's timeline, these places actually existed. The empire rose and fell. Time passed. The underground filled with new inhabitants: bureaucrats, franchise operators, filing clerks. Eventually, even they abandoned it.

By 947 GUE, FrobozzCo—once the empire's premiere industrial conglomerate—has splintered into various heritage foundations and corporate franchises. The most aggressive is FROBSWANE™, which has trademarked everything from cereals to coffee beans, from decoder rings to property deeds.

Professor Perelman represents the last generation of scholars who take the GUE seriously as historical subject matter. Most of her colleagues think she's chasing fantasy. Her grant is insultingly small. Her equipment is rental. But she's determined to prove them wrong.

What she doesn't know: FROBSWANE™ is way ahead of her.

### Tone

**Primary**: Affectionately satirical, warmly nostalgic with sharp edges

**Secondary Elements**:
- Corporate dystopia played for dark comedy
- Academic bureaucracy as dungeon-crawling obstacle
- Archaeological wonder mixed with franchise-saturation dread
- Parser-era game design conventions lovingly mocked and honored

**Reference Points**: 
- The loving parody of Terry Pratchett
- The corporate satire of Douglas Adams
- The self-awareness of Infocom's later games (especially Beyond Zork and Bureaucracy)
- The melancholy of abandoned theme parks

---

## Game Structure

### Three-Act Structure

#### ACT I: SURFACE (Rooms 1-9)
**Purpose**: Tutorial and scene-setting

**Key Locations**:
- Prairie Overlook (hover-mule introduction)
- Parking lot and gift kiosk (first franchise mentions)
- Half-buried White House exterior and interior
- Cellar descent

**Key Acquisitions**:
- Rental hover-mule with annoying visor
- FrobozzCo Breeze-Matic hand-dryer
- Ice-cube key (from unplugged icebox)
- LED Frob-Lux lamp (800-turn light source)
- GUE-journal paper (establishes world skepticism)
- Debt-letter lever (opens grating to underground)

**Puzzles**: 
- Simple environmental puzzles (cleaning the hall, finding keys)
- Introduction to franchise merchandise as puzzle elements
- First hint that bureaucracy will be important

**Difficulty**: Easy. Players learn basic parser commands and get oriented.

#### ACT II: UNDERGROUND (Rooms 10-29)
**Purpose**: Main puzzle-solving and world-building

**Major Locations**:
- Former Maze Demolition Site ("everybody hates mazes")
- Mail-Sorting Vestibule (lanyard rope assembly)
- Dam #3 and Corporate Café (Patent-Troll Barista)
- Bank vault (jeweled egg, hell-mite colony)
- Free-Masonry Guild (bureaucratic CV submission)
- Echo Royal Puzzle (rotating walls spelling F-R-O-B)
- Implementers' Control Room (FROBSWANE™ cereal critical)
- Final Archive Stacks (punch-card assembly)

**Key Acquisitions**:
- 10-meter rope from knotted lanyards
- Espresso (triggers flashback, thaws calcium)
- FROBSWANE™ cereal box with decoder ring
- CV components (business card, gown, grant, waiver)
- Photographs proving GUE's reality
- Brass lantern key (for sequel)

**Difficulty**: Medium to Hard. Multiple puzzle chains, item synthesis required.

#### ACT III: CLIMAX (Rooms 30-31)
**Purpose**: Resolution, revelation, sequel hook

**Key Moments**:
- Throne deed requires breakfast cereal evidence
- FROBSWANE™ has trademarked the empire
- House collapse (dramatic climax)
- Trading card reveal: sequel hook
- Brass lantern dangle: "DO NOT TOUCH UNTIL SEQUEL"

**Difficulty**: Hard. Final puzzle requires synthesis of multiple skills and understanding of game's internal logic.

### Difficulty Curve

```
Easy    ████░░░░░░░░░░░░░░░░ (Rooms 1-5: Surface exploration)
        ░░░░████░░░░░░░░░░░░ (Rooms 6-9: White House interior)
Medium  ░░░░░░░░████░░░░░░░░ (Rooms 10-17: Early underground)
        ░░░░░░░░░░░░████░░░░ (Rooms 18-25: Guild & puzzles)
Hard    ░░░░░░░░░░░░░░░░████ (Rooms 26-31: Final challenges)
```

---

## Complete Room List

### ACT I: SURFACE

#### ROOM 1: Prairie Overlook

**Description**: A sodium-orange prairie flickers like a dying CRT monitor. Heat-shimmer rises in waves, tasting of copper and old shareware disks. Your rental hover-mule squats half-inflated nearby, its cheap photo-chromatic visor clipped over the air valve.

**Exits**: East to Tarpit Memorial Parking Lot

**Objects**: Rental hover-mule, photo-chromatic visor

**Special Properties**: Starting location; visor must be clicked before riding mule

---

#### ROOM 2: Tarpit Memorial Parking Lot

**Description**: Cracked asphalt bubbles with bitumen and cancelled shareware. A faded "GUE HERITAGE TOUR" placard is half-submerged in tar.

**Exits**: West to Prairie Overlook, East to Gift Kiosk

**Objects**: Tarpit (scenery, dangerous), tour placard (scenery)

---

#### ROOM 3: Gift Kiosk

**Description**: A rotating rack of foam crowns and LED key-chains stands in this abandoned tourist trap. A wall-mounted "FrobozzCo Breeze-Matic" hand-dryer is still warm.

**Exits**: West to Parking Lot, South to Mailbox Approach

**Objects**: Foam crowns, LED key-chains, **FrobozzCo Breeze-Matic hand-dryer** (critical item)

**Special Properties**: Hand-dryer can be yanked from wall

---

#### ROOM 4: Mailbox Approach

**Description**: The White House front door is buried to the letterbox in loam. Only the mailbox remains accessible, stuffed with fossil circulars.

**Exits**: North to Gift Kiosk, In to Front Hall

**Objects**: Mailbox (container with FROBSWANE™ coupon, parking ticket 948 GUE, expired Frob-Snack coupon)

---

#### ROOM 5: Front Hall (Pre-Clean)

**Description**: The front hall is a disaster of dust, cobwebs, and organic matter. Everything leans toward depressing beige.

**Exits**: Out to Mailbox Approach, East to Living Room Alcove, West to Kitchen, Down to Cellar (blocked initially)

**Objects**: Dust, cobwebs, debris

**Special Properties**: **STATE TRANSFORMATION PUZZLE** - Using hand-dryer here triggers dramatic cleaning, changes to Post-Clean state

---

#### ROOM 5b: Front Hall (Post-Clean)

**Description**: The hall is now blindingly, oppressively white. Everything gleams with antiseptic perfection.

**Exits**: Same as before, but Down to Cellar now accessible

**Special Properties**: Permanent state change, cellar accessible

---

#### ROOM 6: Kitchen

**Description**: The kitchen is surprisingly intact with decades-old appliances. An unplugged icebox stands in the corner.

**Exits**: East to Front Hall

**Objects**: **Unplugged icebox** (contains ice-cube key), sink, counter, tiles

---

#### ROOM 7: Living Room Alcove

**Description**: A reading nook with dusty armchair and side table. A yellowed academic journal lies open to a furious editorial.

**Exits**: West to Front Hall

**Objects**: Armchair, side table, **GUE-journal paper** (critical lore item by Prof. H. Perelman)

**Special Properties**: Journal establishes character and world-building

---

#### ROOM 8: Cellar Landing

**Description**: Stone steps descend to a landing where air grows cooler. A small ledge holds an LED Frob-Lux lamp. A heavy iron grating blocks further descent.

**Exits**: Up to Front Hall, East to Rusted Grating (blocked initially)

**Objects**: **LED Frob-Lux lamp** (800 turns, critical), iron grating (scenery)

---

#### ROOM 9: Rusted Grating

**Description**: The grating continues here. A lever on the far side is jammed by a debt-collection letter wedged into the mechanism.

**Exits**: West to Cellar Landing, East to Demolition Site (after lever pulled)

**Objects**: **Debt-letter lever**, debt-collection letter (humorous lore)

**Special Properties**: Pulling lever (after removing letter) opens grating, enables underground access

---

### ACT II: UNDERGROUND

#### ROOM 10: Former Maze Demolition Site

**Description**: A cavernous hollow where corridors once twisted. Rubble forms neat berms. A brass sign reads: "This would have been the maze room, but everybody hates mazes, so we demolished the maze. You're welcome. –FrobozzCo Recreation Dept."

**Exits**: West to Rusted Grating, East to Mail-Sorting Vestibule

**Objects**: Brass sign (scenery), rubble berms, **postal codes** (takeable), **lanyards** (takeable)

**Special Properties**: Dark room (requires lamp); anti-maze statement; contains rope-making materials

---

#### ROOM 11: Mail-Sorting Vestibule

**Description**: Collapsed pigeonholes line the walls like honeycomb cells. Bronze routing wheels lie scattered. Torn postal codes flutter like confetti.

**Exits**: West to Demolition Site, East to Western Arch of Dam #3

**Objects**: Pigeonholes (scenery), bronze routing wheels, additional postal codes

**Special Properties**: Dark room; connection point; rope assembly location

---

#### ROOM 12: Western Arch of Dam #3

**Description**: You stand on the western arch of Flood Control Dam #3—the only masonry left standing. The reservoir beyond is a cracked mud skillet. Graffiti reads: "GUE Theory #7 – Empire still exists, just moved to cloud storage."

**Exits**: West to Mail-Sorting Vestibule, East to Dam Café (requires rope)

**Objects**: Stone arch, graffiti (multiple theories), reservoir bed (far below)

**Special Properties**: Dark room; **requires 10-meter rope to cross safely**; attempting without rope is fatal

---

#### ROOM 13: Dam Gift-Shop / Café

**Description**: A combination gift shop and espresso café. Every surface bears the FROBSWANE™ logo. An espresso machine hisses. Behind the counter stands a green-skinned figure in a three-piece suit.

**Exits**: West to Western Arch (rope crossing), South to Valve Platform

**Objects**: Espresso machine, counter, coffee beans, briefcase tip-jar, FROBSWANE™ merchandise

**NPCs**: **Patent-Troll Barista, Esq.** (serves espresso, waives royalty fees for academics)

**Special Properties**: NPC interaction required; espresso is critical item

---

#### ROOM 14: Valve Platform

**Description**: A metal platform extends to a massive valve wheel frozen solid with white calcium deposits. A pipe extends down into the old reservoir.

**Exits**: North to Dam Café

**Objects**: **Valve wheel** (frozen, requires hot espresso), calcium deposits, drainage pipe

**Special Properties**: **CRITICAL PUZZLE** - Pouring espresso melts calcium → valve turns → drains reservoir → reveals bank

---

#### ROOM 15: Bank Lobby

**Description**: The drained reservoir revealed this marble-clad bank lobby. Tree roots have shattered everything. Hell-mites nest in deposit slots. A cyclops skull lies split by an antique can-opener.

**Exits**: Up to reservoir bed, East to Safety-Deposit Vault

**Objects**: Marble pillars, tree roots, hell-mite colony (dangerous), **cyclops skull**, **antique can-opener** (Zork reference)

**Special Properties**: Dark room; hell-mites swarm if attacked; Zork fossil evidence

---

#### ROOM 16: Safety-Deposit Vault

**Description**: Tin safety-deposit boxes line the walls. One box has been forced open—inside is a jeweled egg covered in grime. Hell-mite eggshells are marked with four-digit numbers.

**Exits**: West to Bank Lobby

**Objects**: Safety-deposit boxes, **jeweled egg** (treasure, filthy), compound-interest plaque, hell-mite eggshells (numbered: 847293201)

**Special Properties**: Dark room; egg is treasure (scoring); eggshell numbers match debt letter compound interest

---

#### ROOM 17: Excavated Filing Drawer

**Description**: Behind collapsed boxes, a flat metal sleeve marked "ARCHIVE 880-GLK – PROPERTY OF IMPLEMENTERS' PR OFFICE."

**Exits**: Out to Safety-Deposit Vault

**Objects**: Archive sleeve, **six 8×10 color photographs** (critical narrative items proving GUE's reality)

**Special Properties**: **CRITICAL LORE MOMENT** - Photos prove everything was real; triggers Professor's journal entry

**Photographs**:
1. White House front, pristine, 1980
2. Trophy case with sword, lantern, egg
3. Flood Control Dam #3 with tourists
4. Underground throne, crown jewels
5. Cyclops barrow with ruler
6. Maze entrance with smiley-face over "ALL ALIKE"

---

#### ROOM 18: Free-Masonry Entry Hall

**Description**: Grand entry hall for the Guild of Free-Masons (Dungeon-Masters). Stone lectern with CV requirements. Speaking-tube to auditors. Last Dungeon-Master's name Tippexed out.

**Exits**: South to previous area, East to Curriculum Office, North to Auditors' Niche (after CV submission)

**Objects**: Stone lectern (CV requirements carved in), speaking-tube, honorary plaque

**Special Properties**: Dark room; CV requirements must be read to understand next puzzle

---

#### ROOM 19: Curriculum Office

**Description**: Bureaucratic nightmare. Desks piled with unread CV scrolls and forms. Filing cabinet exploded across floor.

**Exits**: West to Free-Masonry Entry Hall

**Objects**: **Business card** (CV component), **rented academic gown** (CV component), **grant letter** (CV component), **insurance waiver** (CV component), desks, filing cabinet, rejected scrolls

**Special Properties**: Dark room; contains all four CV components needed for guild puzzle

---

#### ROOM 20: Auditors' Waiting Niche

**Description**: Small alcove with stone benches. Walls covered with forms stamped DENIED. CV submission slot. Echo repeats "DENIED" endlessly.

**Exits**: South to Free-Masonry Entry Hall, North to Echo Royal Puzzle (after CV submission)

**Objects**: CV submission slot, denial forms (humorous), stone benches

**Special Properties**: **CRITICAL PUZZLE GATE** - Submitting complete CV (all 4 components) opens path north; wall sinks revealing rotunda

---

#### ROOM 21: Echo Royal Puzzle – West Rotunda

**Description**: Massive circular chamber. Walls segmented into rotating panels carved with letters. Chamber echoes parser responses: "You can't go that way," "I don't understand that."

**Exits**: South to Auditors' Niche, East to East Rotunda (after spelling F-R-O-B)

**Objects**: Rotating wall panels (4 panels, adjustable), control lever

**Special Properties**: Dark room; **MAJOR PUZZLE** - Rotate panels to spell "F-R-O-B" → bridge extends east

---

#### ROOM 22: Echo Royal Puzzle – East Rotunda

**Description**: Eastern half of puzzle chamber. Brass bridge extends westward. Ladder descends into deeper darkness. Code whispers echo.

**Exits**: West to West Rotunda (across bridge), Down to Royal Slide-Deck Auditorium

**Objects**: Brass bridge, ladder, code carvings (Inform 6 syntax)

**Special Properties**: Dark room; code whispers are flavor referencing IF programming

---

#### ROOM 23: Royal Slide-Deck Auditorium

**Description**: Underground auditorium with stone seating facing carved screen showing PowerPoint placeholders. 16-mm film projector sits on platform.

**Exits**: Up to East Rotunda, North to Projection Booth

**Objects**: Stone screen (PowerPoint template), **film projector** (device, runs once), film reel

**Special Properties**: Dark room; **PUZZLE** - Running projector burns out bulb, forces descent to maintenance; shows "History of GUE" film

---

#### ROOM 24: Projection Booth

**Description**: Cramped booth above auditorium. Projector bulb socket smokes. Shattered glass litters floor. Service hatch is only exit.

**Exits**: Down to Maintenance Corridor Alpha (hatch)

**Objects**: Broken bulb fragments, smoking socket, service hatch

**Special Properties**: Dark room; one-way transition (ladder retracted); forces progression

---

#### ROOM 25: Maintenance Corridor Alpha

**Description**: Narrow corridor with exposed pipes. Three valve wheels labeled "HOT," "COLD," and "EXISTENTIAL." Sealed hatch at far end.

**Exits**: East to Implementers' Control Room (after valve puzzle)

**Objects**: **Three valve wheels** (must be set correctly), pipes (labeled), sealed hatch

**Special Properties**: Dark room; **PUZZLE** - Correct order: HOT → COLD → EXISTENTIAL opens hatch; wrong order sprays "existential despair" that rusts inventory

---

#### ROOM 26: Implementers' Control Room

**Description**: Heart of the empire's creation. Coin-operated console covered in switches. Wall safe open. **FROBSWANE™ cereal box** sits on high ledge.

**Exits**: West to Maintenance Corridor, Up to Final Archive Stacks

**Objects**: Console (coin-operated), wall safe (open), **brass lantern key** (in safe), **FROBSWANE™ cereal box** (CRITICAL ENDGAME ITEM), ladder

**Special Properties**: Dark room; **CRITICAL LOCATION** - Cereal box contains decoder ring and loops needed for throne puzzle

---

#### ROOM 27: Final Archive Stacks

**Description**: Endless shelving with thousands of 5¼" floppy disks, most cracked. Central table holds three items that can be assembled.

**Exits**: Down to Implementers' Control Room

**Objects**: Disk shelves, cracked disks, central table, **broken save-disk**, **data ribbon**, **map fragment** (assemble into punch-card)

**Special Properties**: Dark room; **PUZZLE** - Assemble three items into punch-card representing "save game" mechanics

---

#### ROOM 28: Throne Antechamber

**Description**: Long hallway approaching throne. Red carpet moth-eaten to form Morse code patterns. Dried red marker lies in corner.

**Exits**: South to previous area, North to Throne

**Objects**: Red carpet (Morse code: "...CONSUME PRODUCT..."), dried red marker (useless)

**Special Properties**: Dark room; Morse code provides hint; marker is red herring (dried up)

---

#### ROOM 29: Throne of FROBSWANE™

**Description**: Throne room with simple stone throne. Slot in armrest labeled "DEED SUBMISSION." Wall carvings are invisible unless viewed correctly.

**Exits**: South to Antechamber, Up to White House Attic (after throne rotates)

**Objects**: Stone throne (has deed slot), deed slot (device), wall carvings (invisible watermark text)

**Special Properties**: Dark room; **FINAL MAJOR PUZZLE** - Requires cereal-based ink revelation

**The Cereal Puzzle Solution**:
1. POUR ESPRESSO ON RING → charges decoder ring with violet LED
2. CRUSH LOOPS → make crumbs
3. SPIT ON LOOPS → create regenerating paste (3 uses)
4. LOOK THROUGH RING → reveal invisible throne deed loopholes on walls
5. PAINT CIRCLE WITH PASTE (3 times through ring) → watermark deed
6. INSERT DEED IN SLOT → throne rotates, reveals attic ladder

---

### ACT III: FINALE

#### ROOM 30: White House Attic

**Description**: You emerge in the attic via rotating throne. Looking down at diorama of living room. Whole house is tilting. Ladder cracking.

**Exits**: Down (ladder collapsing, fatal), Out (window, requires jump)

**Objects**: Cracking ladder, diorama view, attic window

**Special Properties**: Natural light; **TIMED SEQUENCE** - House collapsing; must JUMP/CLIMB OUT or die

---

#### ROOM 31: Prairie Epilogue / Mailbox Stinger

**Description**: Standing on prairie where White House was. Only perfect rectangle of empty space remains. Mailbox pristine, glowing green CRT.

**Exits**: None (game ending)

**Objects**: Pristine mailbox (glowing), **brass lantern** (floating, untouchable), **trading card** (in mailbox)

**Special Properties**: **ENDING SEQUENCE** - Decoder ring reveals trading card message; brass lantern dangles with tag "DO NOT TOUCH UNTIL SEQUEL"; game ends on ">PLOUGH ?_" cursor

**Trading Card Message** (revealed through decoder ring):
```
FROBSWANE 2: SUB-BASEMENT TRANSFER
Access phrase: PLOUGH
Required item: Milk
Coming to a parser near you.
```

---

## Complete Object List

### CRITICAL PUZZLE ITEMS

#### FrobozzCo Breeze-Matic Hand-Dryer
- **Type**: Device
- **Location**: Gift Kiosk (wall-mounted, must yank free)
- **Purpose**: Cleans Front Hall (state transformation puzzle)
- **Weight**: Medium

#### LED Frob-Lux Lamp
- **Type**: Light source
- **Location**: Cellar Landing
- **Purpose**: Illumination for dark rooms (800 turns)
- **Weight**: Light

#### Postal Codes & Lanyards
- **Type**: Components (combine into rope)
- **Location**: Former Maze Demolition Site
- **Purpose**: Assemble into 10-meter rope for dam crossing
- **Weight**: Light (individual), Medium (rope)

#### Espresso
- **Type**: Liquid/consumable
- **Location**: Dam Café (from Patent-Troll Barista)
- **Purpose**: 1) Drink for flashback, 2) Melt calcium on valve, 3) Charge decoder ring
- **Weight**: Light
- **Properties**: Hot, drinkable, pourable

#### FROBSWANE™ Cereal Box
- **Type**: Container
- **Location**: Implementers' Control Room
- **Purpose**: **CRITICAL ENDGAME** - Contains decoder ring and loops
- **Contains**: Decoder ring (1), cereal loops (~300)
- **Weight**: Light

#### Decoder Ring
- **Type**: Viewing tool
- **Location**: Inside cereal box
- **Purpose**: 1) Reveal invisible throne loopholes, 2) Decode trading card
- **Properties**: Must be charged with espresso to glow violet LED
- **Weight**: Light

#### Cereal Loops
- **Type**: Consumable/crafting material
- **Location**: Inside cereal box
- **Purpose**: Crush + spit = regenerating paste for painting watermark circles
- **Weight**: Light

#### Academic CV Components (4 items)
- **Business Card**: Prof. H. Perelman credentials
- **Academic Gown**: Rental gown with tag
- **Grant Letter**: FrobozzCo Heritage Foundation award
- **Insurance Waiver**: Pre-signed by "I. P. Freely"
- **Location**: Curriculum Office
- **Purpose**: Submit all 4 to pass Auditors' Niche puzzle gate
- **Weight**: Light (each)

---

### TREASURE ITEMS

#### Jeweled Egg
- **Type**: Treasure
- **Location**: Safety-Deposit Vault
- **Purpose**: Scoring item; must clean to reveal gems
- **Weight**: Light
- **Value**: High (ruby, sapphire, diamond inlays)

---

### LORE/FLAVOR ITEMS

#### GUE-Journal Paper
- **Location**: Living Room Alcove
- **Purpose**: Establishes Prof. Perelman's character and world skepticism
- **Contains**: Full editorial about GUE being real

#### Debt-Collection Letter
- **Location**: Rusted Grating (jammed in mechanism)
- **Purpose**: Humor, lore; compound interest number (847,293,201)

#### Six 8×10 Photographs
- **Location**: Excavated Filing Drawer (Archive 880-GLK)
- **Purpose**: **CRITICAL NARRATIVE** - Prove GUE was real
- **Contents**: Photos of White House, trophy case, dam, throne, cyclops, maze

#### Brass Lantern Key
- **Location**: Implementers' Control Room (in wall safe)
- **Purpose**: Sequel hook; key for "next adventure"

#### Trading Card
- **Location**: Prairie Epilogue mailbox
- **Purpose**: Reveals sequel information when viewed through decoder ring

#### Brass Lantern
- **Location**: Prairie Epilogue (falls from sky)
- **Purpose**: Sequel tease; untouchable, tagged "DO NOT TOUCH UNTIL SEQUEL"

---

### SCENERY/INTERACTIVE OBJECTS

#### Rental Hover-Mule
- **Type**: Vehicle (rideable, not takeable)
- **Location**: Prairie Overlook
- **Purpose**: Surface transportation; humor
- **Special**: Visor must be clicked shut; says "HELLO USER, PLEASE RIDE RESPONSIBLY" on every move

#### Mailbox (Start)
- **Location**: Mailbox Approach
- **Contains**: FROBSWANE™ coupon, parking ticket 948 GUE, expired Frob-Snack coupon

#### Mailbox (End)
- **Location**: Prairie Epilogue
- **Contains**: Trading card
- **Special**: Pristine, glowing green CRT

---

## Puzzle Design

### PUZZLE 1: Cleaning the Front Hall

**Location**: Front Hall (Room 5)  
**Difficulty**: Easy

**Description**: The Front Hall is filthy with decades of dust, cobwebs, and organic matter. The cellar stairs are blocked by debris.

**Barrier**: Cannot access cellar until hall is cleaned

**Required Items**:
- FrobozzCo Breeze-Matic hand-dryer (from Gift Kiosk)

**Required Knowledge**: That the hand-dryer can be used for more than drying hands

**Solution Steps**:
1. Go to Gift Kiosk
2. YANK DRYER / PULL DRYER (it's wall-mounted)
3. Return to Front Hall
4. USE DRYER / BLOW DRYER / TURN ON DRYER

**Success Result**: 
- Dryer blasts away all dust and cobwebs
- Hall becomes blindingly white
- Cellar stairs become accessible
- Room description permanently changes to "Post-Clean" state

**Failure States**:
- Trying to clean without dryer: "With what? Your graduate-student stipend doesn't include a cleaning service."
- Taking dryer without yanking: "It's bolted to the wall."

**Hints**:
1. "The hall is impossibly filthy. You'd need industrial equipment."
2. "That hand-dryer in the gift kiosk looks powerful..."
3. "Try pulling or yanking the hand-dryer to remove it from the wall."

**Fair Play**: Dryer is mentioned in room description, can be examined, and yanking items is standard parser vocabulary

---

### PUZZLE 2: Opening the Grating

**Location**: Rusted Grating (Room 9)  
**Difficulty**: Easy

**Description**: An iron grating blocks descent to the underground. A lever on the far side is jammed by a debt-collection letter wadded into the mechanism.

**Barrier**: Cannot proceed to underground empire

**Required Items**: None (just need to remove letter)

**Required Knowledge**: The lever won't work until obstruction is removed

**Solution Steps**:
1. EXAMINE LEVER (notice it's jammed)
2. REMOVE PAPER / TAKE LETTER
3. READ LETTER (optional, provides lore)
4. PULL LEVER

**Success Result**:
- Grating swings open with rusty scream
- Path to underground opens
- Letter provides humorous lore about property taxes

**Failure States**:
- PULL LEVER (before removing paper): "The lever won't move. The paper is blocking it."

**Hints**:
1. "The lever appears jammed by something."
2. "That paper in the mechanism might be the problem."
3. "Remove the obstruction first."

**Fair Play**: Lever is visible, paper is mentioned in examination, removing obstructions is logical

---

### PUZZLE 3: Assembling the Rope

**Location**: Former Maze Demolition Site / Mail-Sorting Vestibule (Rooms 10-11)  
**Difficulty**: Easy-Medium

**Description**: The dam crossing requires a rope. Scattered among the demolished maze rubble are postal codes and ID lanyards.

**Barrier**: Cannot cross dam without rope (fatal to jump)

**Required Items**:
- Postal codes (from demolition site)
- Lanyards (from demolition site)

**Required Knowledge**: Lanyards can be knotted together to form rope

**Solution Steps**:
1. Explore Former Maze Demolition Site
2. EXAMINE RUBBLE (see codes and lanyards)
3. TAKE CODES
4. TAKE LANYARDS
5. ASSEMBLE LANYARDS / KNOT LANYARDS / TIE LANYARDS

**Success Result**:
- Creates "10-meter rope made from knotted lanyards"
- Rope can be tied to arch and used to zip across dam

**Failure States**:
- Trying to cross without rope: Fatal or blocked
- Taking only one component: Can't assemble

**Hints**:
1. "You'll need something to cross that gap safely."
2. "Those lanyards look sturdy. They're made of synthetic material."
3. "Multiple lanyards knotted together could form a rope."

**Fair Play**: Items are mentioned in room description, combining items is standard IF convention, rope need is obvious from dam description

---

### PUZZLE 4: Obtaining Espresso & Using It

**Location**: Dam Café (Room 13) and Valve Platform (Room 14)  
**Difficulty**: Medium

**Description**: The valve wheel controlling the dam drainage is frozen solid with calcium deposits. Hot espresso can melt the calcium.

**Barrier**: Cannot drain reservoir to access bank lobby

**Required Items**:
- None initially (barista provides espresso)

**Required Knowledge**: 
1. How to interact with NPC (ask/order)
2. Hot liquids can melt calcium deposits

**Solution Steps**:
1. Enter Dam Café
2. ASK BARISTA ABOUT COFFEE / ORDER ESPRESSO
3. Take espresso
4. Go south to Valve Platform
5. POUR ESPRESSO ON WHEEL / USE ESPRESSO ON WHEEL
6. TURN WHEEL

**Success Result**:
- Calcium melts and falls away
- Valve turns, draining hidden reservoir
- Bank façade revealed below
- Path to bank becomes accessible

**Failure States**:
- Trying to turn wheel before espresso: "The wheel is frozen solid by mineral deposits."
- Using espresso elsewhere first: Might waste it (design decision: make espresso infinite or require restart)

**Hints**:
1. "The valve is encrusted with white calcium deposits."
2. "Something hot might melt that calcium."
3. "The barista's espresso is steaming hot..."

**Fair Play**: Calcium is described, espresso temperature is noted, pouring liquids on objects is standard parser action

**Additional**: Drinking espresso triggers 3-turn flashback sequence (optional, flavor)

---

### PUZZLE 5: Assembling the CV

**Location**: Curriculum Office (Room 19) to Auditors' Niche (Room 20)  
**Difficulty**: Medium

**Description**: The Free-Masonry Guild requires a complete CV to proceed. Four components are scattered in the office.

**Barrier**: Cannot access Echo Royal Puzzle without passing auditors

**Required Items**:
- Business card
- Academic gown
- Grant letter
- Insurance waiver

**Required Knowledge**: What constitutes a complete CV (listed on lectern in Room 18)

**Solution Steps**:
1. Read CV requirements on lectern in Free-Masonry Entry Hall
2. Go to Curriculum Office
3. TAKE CARD, TAKE GOWN, TAKE GRANT, TAKE WAIVER
4. Go to Auditors' Waiting Niche
5. PUT CARD IN SLOT
6. PUT GOWN IN SLOT
7. PUT GRANT IN SLOT
8. PUT WAIVER IN SLOT

**Success Result**:
- Each item triggers progressive acceptance messages
- After all four submitted: wall sinks, revealing path north
- Mechanical voice: "CREDENTIALS ACCEPTED. PROCEED TO ROYAL PUZZLE."

**Failure States**:
- Submitting incomplete CV: "INSUFFICIENT DOCUMENTATION" messages
- Missing an item: Cannot proceed

**Hints**:
1. "The lectern lists four CV requirements."
2. "The Curriculum Office probably has what you need."
3. "Submit all four components to the slot in the Auditors' Niche."

**Fair Play**: Requirements are explicitly listed, all items are in one room and mentioned in description, bureaucratic paperwork is thematic

---

### PUZZLE 6: Echo Royal Puzzle – Spelling F-R-O-B

**Location**: Echo Royal Puzzle – West Rotunda (Room 21)  
**Difficulty**: Medium

**Description**: Rotating wall panels display letters. The chamber echoes parser messages. Panels must spell "F-R-O-B" to extend bridge.

**Barrier**: Cannot proceed to deeper underground without solving

**Required Items**: None

**Required Knowledge**: 
1. FROBSWANE/FrobozzCo branding has been everywhere
2. Four-letter word needed
3. Rotating mechanisms can be manipulated

**Solution Steps**:
1. EXAMINE PANELS (see current letters)
2. ROTATE PANEL 1 (or TURN PANEL 1) until it shows F
3. ROTATE PANEL 2 until it shows R
4. ROTATE PANEL 3 until it shows O
5. ROTATE PANEL 4 until it shows B

**Success Result**:
- Tremendous CLANG echoes
- Brass bridge extends eastward
- Echoes change to: "Welcome, Implementer."

**Failure States**:
- Wrong word spelled: Nothing happens
- Partial progress: Bridge doesn't extend until all four correct

**Hints**:
1. "The walls rotate to show different letters."
2. "FROBSWANE™ branding has been on everything..."
3. "Try spelling F-R-O-B with the four panels."

**Fair Play**: Franchise name has appeared repeatedly, four panels suggest four-letter word, rotating devices is standard IF interaction

---

### PUZZLE 7: Valve Pipe Sequence

**Location**: Maintenance Corridor Alpha (Room 25)  
**Difficulty**: Medium-Hard

**Description**: Three valves labeled HOT, COLD, and EXISTENTIAL must be turned in correct order to open hatch.

**Barrier**: Cannot access Implementers' Control Room

**Required Items**: None

**Required Knowledge**: Trial-and-error or logical deduction about temperature/system balance

**Solution Steps**:
1. TURN HOT VALVE
2. TURN COLD VALVE
3. TURN EXISTENTIAL VALVE
(Order matters!)

**Success Result**:
- Pipes emit satisfied groan
- System balances
- Hatch clicks open

**Failure States**:
- Wrong order: Existential pipe sprays despair-mist that rusts random inventory item
- Can retry after failure

**Hints**:
1. "The pipes are labeled HOT, COLD, and EXISTENTIAL."
2. "Systems usually need to be balanced gradually..."
3. "Try extremes first (hot and cold), then the unknowable (existential)."

**Fair Play**: Labels are clear, turning valves is standard action, wrong attempts have non-fatal consequences, puzzle can be solved by experimentation

---

### PUZZLE 8: The Final Cereal Puzzle (Throne Deed)

**Location**: Throne of FROBSWANE™ (Room 29)  
**Difficulty**: Hard

**Description**: The throne will only accept a deed bearing FROBSWANE™ watermark circles, which can only be painted using cereal paste and viewed through a charged decoder ring.

**Barrier**: Cannot complete game and claim deed

**Required Items**:
- FROBSWANE™ cereal box (from Room 26)
- Decoder ring (from inside cereal box)
- Cereal loops (from inside cereal box)
- Espresso (from earlier, or get new cup)
- Throne deed (should have from earlier puzzle or found in stacks)

**Required Knowledge**:
1. Decoder rings can be charged
2. Cereal can be crushed and moistened
3. Watermarks are visible through special lenses
4. FROBSWANE™ requires franchise loyalty proof

**Solution Steps**:
1. OPEN CEREAL BOX
2. TAKE RING
3. TAKE LOOPS
4. POUR ESPRESSO ON RING (charges it with violet LED)
5. CRUSH LOOPS (make crumbs)
6. SPIT ON LOOPS (create regenerating paste - 3 uses)
7. LOOK THROUGH RING (reveals invisible wall text about watermark requirements)
8. PAINT CIRCLE WITH PASTE (while looking through ring) - repeat 3 times
9. INSERT DEED IN SLOT

**Success Result**:
- Throne accepts deed with mechanical pause
- Throne rotates 180 degrees
- Ladder to attic revealed
- Mechanical voice announces franchise license applied
- House begins shaking (start collapse sequence)

**Failure States**:
- INSERT DEED (without watermarks): "INSUFFICIENT BREAKFAST EVIDENCE. PLEASE FINISH YOUR CEREAL LIKE A BIG ACADEMIC."
- Missing any component: Cannot complete sequence
- Not looking through ring while painting: Circles won't be visible/valid

**Hints**:
1. "The throne slot rejects the deed. It says something about breakfast evidence."
2. "The FROBSWANE™ cereal box has been mentioned several times..."
3. "Decoder rings often reveal hidden messages."
4. "The walls might have invisible text..."
5. "Crushed cereal with moisture could form paste..."

**Fair Play**: 
- Cereal box placement in critical location signals importance
- Decoder ring is standard childhood nostalgia item
- FROBSWANE™ franchise obsession has been consistent theme
- Paste-making is logical (though creative)
- All required items are obtainable
- Wall text explicitly describes requirements when viewed correctly

**Design Note**: This is the climactic puzzle requiring synthesis of game's major themes: corporate franchising, nostalgia, breakfast cereal marketing, and bureaucratic proof.

---

## Puzzle Dependency Chart

```
START
├─> PUZZLE 1: Clean Hall (hand-dryer)
│   └─> Access to Cellar
│       └─> PUZZLE 2: Open Grating (remove debt letter)
│           └─> Access to Underground
│               ├─> PUZZLE 3: Assemble Rope (lanyards)
│               │   └─> PUZZLE 4: Drain Reservoir (espresso + valve)
│               │       └─> Access to Bank/Vault
│               │           └─> [Collect egg treasure, photographs for lore]
│               │
│               └─> PUZZLE 5: Assemble CV (4 components)
│                   └─> PUZZLE 6: Spell F-R-O-B (rotating panels)
│                       └─> PUZZLE 7: Valve Sequence (HOT/COLD/EXISTENTIAL)
│                           └─> Access to Control Room
│                               └─> Get CEREAL BOX (critical!)
│                                   └─> PUZZLE 8: Cereal Throne Puzzle
│                                       └─> VICTORY & COLLAPSE
│                                           └─> EPILOGUE
```

**Critical Path**: All puzzles are mandatory except photograph collection (lore-only)

**Parallel Paths**: Puzzles 3-4 (dam/bank) and Puzzles 5-7 (guild/rotunda) can be done in either order, but both chains must be completed to reach Control Room

---

## Character Design

### CHARACTER: Patent-Troll Barista, Esq.

**Role**: Reluctant Helper / Comic Relief / Corporate Satire

**Location**: Dam Gift-Shop / Café (Room 13)

**Physical Description**:
A green-skinned figure in an immaculate three-piece suit stands behind the espresso machine. His skin has the particular green of patent trolls, his pointed ears twitch at legal terminology, and his briefcase doubles as a tip jar. He polishes espresso cups with a legal brief while maintaining perfect barista posture.

**Personality**:
Professionally cordial with an undercurrent of litigation. He's aware he's the last holdout of FrobozzCo's corporate infrastructure, operating a café in an abandoned underground empire because "someone has to maintain franchise standards." He respects academics (barely) and waives royalty fees for them out of a vestigial sense of educational charity.

**Motivation**:
Maintain the FROBSWANE™ brand standards in the ruins of civilization; collect tips (even though no one's been by in decades); preserve the espresso-making craft

**Dialogue Topics**:
- **ASK ABOUT COFFEE**: "Royalty schedule 947-B applies to all caffeinated beverages. However, since you appear to be an academic of limited means, I waive the fee in the interest of scholarly advancement. Drink hearty."
- **ASK ABOUT FROBSWANE**: "FROBSWANE™ is the premier lifestyle brand for dungeon-adjacent living. We've trademarked everything from breakfast cereals to decoder rings. I'm required by corporate policy to mention that."
- **ASK ABOUT GUE**: "The Great Underground Empire? Ancient history. Literally. Now it's all franchise opportunities and intellectual property portfolios."
- **ASK ABOUT TROLLS**: "We prefer 'intellectual property enforcement specialists,' thank you."
- **GIVE MONEY**: "Tips are appreciated but not legally required. Unlike licensing fees."

**Special Behaviors**:
- **ORDER ESPRESSO / BUY COFFEE**: Serves espresso automatically
- **Examine beans**: Provides lore about "GUE-947 Arabica, litigation-salt roasted"
- **Return after drinking espresso**: "Ah, the flashback experience. Our beans do that. Nostalgia extract is quite potent."

**Related Puzzles**:
- Source of espresso (required for valve puzzle and decoder ring charging)
- Provides world-building about FROBSWANE™ corporate culture

**Can Be Defeated?**: No (friendly NPC, essential service provider)

---

### CHARACTER: Professor Hildegard Perelman (Player Character)

**Role**: Protagonist / Player Avatar

**Location**: Everywhere (player-controlled)

**Physical Description**:
While not directly described (player avatar), we can infer: An academic archaeologist of determined disposition, comfortable with field work despite limited funding, probably carries too many books, has perpetual dust on boots

**Personality** (expressed through game text and GUE-journal paper):
- Stubborn in the face of academic dismissal
- Passionately believes GUE was real
- Willing to excavate entire empire with "rental hover-mule and spite"
- Ph.D. in Obscure Cartography
- Dry sense of humor (evident in observations)
- Methodical but willing to use unconventional methods (hand-dryers, cereal paste)

**Motivation**:
Prove the Great Underground Empire was real, validate life's work, earn academic respect, document and "monetize" (per grant requirements) cultural heritage

**Character Arc**:
1. **Beginning**: Determined outsider with small grant, dismissed by colleagues
2. **Middle**: Accumulating evidence, discovering extent of corporate franchising
3. **Climax**: Proves GUE was real via photographs, but discovers FROBSWANE™ already owns everything
4. **End**: Pyrrhic victory—academic vindication but commercial exploitation

**Internal Dialogue** (via journal and triggered by photographs):
"My colleagues refuse to take the Great Underground Empire seriously. They call it 'marketing fiction,' 'Infocom propaganda,' 'TRS-80 fever dreams.' But I have found EVIDENCE... The GUE was REAL. And I will prove it, even if I have to excavate the entire empire with my own hands and a rental hover-mule."

After finding photographs: "This is proof. My life's work is a footnote to someone else's screenshot... My colleagues will still call me crazy. But I know now: my life's work isn't a footnote to someone else's fantasy. It's archaeology."

**Related Puzzles**:
All puzzles are solved through Prof. Perelman's perspective and actions

**Design Note**: Player character is deliberately named and characterized (unlike blank-slate Zork protagonist) to reinforce themes of academic struggle and archaeological ethics

---

### CHARACTER: The Hell-Mites (Colony)

**Role**: Environmental Hazard / Scenery NPC

**Location**: Bank Lobby & Safety-Deposit Vault (Rooms 15-16)

**Physical Description**:
A colony of hell-mites, each the size of a thumb. They nest in the deposit slots, their eggshells glinting in lamplight. They chittering quietly but ignore passersby unless disturbed.

**Personality**:
Insect-level intelligence but with a clear message: "Leave us alone and we leave you alone"

**Motivation**:
Protect colony, tend eggs, exist in abandoned bank

**Special Behaviors**:
- **EXAMINE MITES**: "A colony of hell-mites, each the size of a thumb. They ignore you as long as you ignore them."
- **ATTACK MITES / DISTURB COLONY**: Swarms player (death or serious damage)
- **Leave alone**: They continue about their business harmlessly

**Related Puzzles**:
- Provide compound-interest number on eggshells (flavor/lore connection to debt letter)
- Test player restraint (don't attack everything)
- Ecological commentary (they've adapted to ruins, unlike corporations)

**Can Be Defeated?**: Technically yes, but attacking them is fatal to player

---

## World Rules

### TIME SYSTEM

**Does time pass?**: Yes, turn-based

**Turn-based events**:
- LED lamp countdown (800 turns)
- Espresso flashback (3 turns)
- House collapse sequence (timed, several turns)

**Time-of-day changes**: No (underground, no day/night cycle)

**Special timing**: 
- Lamp battery is generous (800 turns sufficient for completion)
- No hunger/thirst timers
- No real-time pressure except climactic collapse

---

### INVENTORY SYSTEM

**Carrying capacity**: Unlimited items (parser standard)

**Weight restrictions**: No strict weight limit

**Container usage**: Yes
- Mailbox (contains coupons, ticket)
- Cereal box (contains ring, loops)
- Icebox (contains ice-cube key)
- Wall safe (contains brass lantern key)
- Various bags/containers can hold items

**Inventory management**: Standard parser - TAKE, DROP, PUT IN, GET FROM

---

### LIGHT & DARKNESS

**Dark areas**: Most underground rooms (Rooms 10-29)

**Light sources**:
- LED Frob-Lux lamp (primary, 800 turns)
- Surface/White House: natural light
- Dam Café: powered LED lighting
- Prairie Epilogue: sodium-orange sky + CRT glow

**Darkness danger**: 
- Cannot navigate in darkness ("It is pitch dark")
- No grue attacks (this is meta-commentary game, not actual Zork)
- Attempting to move in darkness: "You can't see where you're going"

---

### DEATH & FAILURE

**Can player die?**: Yes, in specific scenarios

**Death scenarios**:
1. Jumping into reservoir without rope (fatal fall)
2. Attacking hell-mite colony (swarm death)
3. Descending broken attic ladder instead of jumping out (collapse death)
4. Potentially: running out of lamp battery in critical dark area (though 800 turns is generous)

**Undo available?**: Yes (standard parser UNDO command assumed)

**Save/Restore**: Yes (standard parser SAVE/RESTORE assumed)

**Unwinnable states**: 
- **Potentially**: Using espresso in wrong location first (if only one cup available—design decision needed)
- **Potentially**: Losing critical items in inaccessible locations
- **Best practice**: Design to avoid unwinnable states; make espresso renewable or ensure player can backtrack

---

### SCORING SYSTEM

**Total possible points**: 350 points (example distribution)

**Points for puzzles**:
- Clean Front Hall: 20 points
- Open grating: 10 points
- Assemble rope: 15 points
- Drain reservoir: 25 points
- Collect jeweled egg: 30 points
- Find photographs: 40 points (critical lore)
- Submit CV: 30 points
- Spell F-R-O-B: 25 points
- Solve valve puzzle: 20 points
- Get cereal box: 15 points
- Complete throne puzzle: 50 points
- Escape collapse: 30 points
- Epilogue accessed: 40 points

**Points for exploration**: 
- Each new room: 2-3 points

**Ranking titles**:
- 0-50: "Tourist with a Rental Hover-Mule"
- 51-100: "Graduate Student (Unfunded)"
- 101-150: "Adjunct Archaeologist"
- 151-200: "Assistant Professor of Dubious Cartography"
- 201-250: "Associate Professor with Moderate Funding"
- 251-300: "Full Professor of GUE Studies"
- 301-349: "Endowed Chair of Interactive Fiction Archaeology"
- 350: "Implementer" (perfect score)

---

### SPECIAL MECHANICS

**State transformations**:
- Front Hall: Pre-clean → Post-clean (permanent)
- Reservoir: Full → Drained (after valve turned)
- Throne: Stationary → Rotated (after deed submission)
- White House: Standing → Collapsed (finale)

**Item transformations**:
- Ice cube → Melted → Brass key revealed
- Lanyards + Codes → Rope
- Save-disk + Ribbon + Map → Punch-card
- Cereal loops (crushed + spit) → Regenerating paste

**Charging mechanics**:
- Decoder ring: Uncharged → Charged (with espresso)
- Function changes: reveals watermark text only when charged

---

## Implementation Notes

### TECHNICAL CONSIDERATIONS

**Inform 6 Specific**:
- **Target Z-machine version**: Z5 (supports more rooms, objects, text)
- **Special library needs**: 
  - Standard Inform 6 library
  - Possibly extended verb library for YANK, CRUSH, SPIT, POUR ON
- **Custom verbs needed**:
  - YANK (for hand-dryer)
  - CRUSH (for cereal loops)
  - SPIT ON (for paste creation)
  - PAINT CIRCLE (for watermark application)
  - LOOK THROUGH (for decoder ring viewing)
  - CLICK (for visor)
  - ROTATE/TURN PANEL (for letter puzzle)
- **Complex mechanics**:
  - State transformation system (Front Hall)
  - Viewing filter (decoder ring reveals text)
  - Multi-component assembly (rope, CV, punch-card, paste)
  - NPC dialogue (barista)
  - Flashback sequence (espresso CRT effect)

---

### PARSER VOCABULARY

**Synonyms to include**:

Objects:
- HAND-DRYER / DRYER / BLOWER / BREEZE-MATIC
- LAMP / LIGHT / FLASHLIGHT / LED
- ROPE / LINE / ZIP-LINE
- COFFEE / ESPRESSO / CUP
- RING / DECODER / DECODER-RING
- CEREAL / LOOPS / BREAKFAST
- BOX / PACKAGE / CARTON

Actions:
- YANK / PULL / TEAR / RIP (for dryer)
- CLEAN / BLOW / USE DRYER
- KNOT / TIE / ASSEMBLE / COMBINE (for rope)
- POUR / DUMP / APPLY / USE (for espresso)
- CRUSH / SMASH / GRIND (for loops)
- PAINT / DRAW / MARK (for circles)
- ROTATE / TURN / SPIN (for panels)
- CLICK / CLOSE / SHUT (for visor)

**Special commands**:
- RIDE MULE (vehicle command)
- ORDER ESPRESSO (NPC interaction)
- LOOK THROUGH RING (special viewing)
- SUBMIT CV (multi-item action)

**Disambiguation strategy**:
- "Which valve do you mean: HOT, COLD, or EXISTENTIAL?"
- "Which panel: 1, 2, 3, or 4?"
- "Do you want to pour the espresso on the WHEEL, the RING, or something else?"

---

### TESTING REQUIREMENTS

**Critical path walkthrough**:
Must test complete solution path from start to epilogue

**Alternative solutions**:
- Check if multiple puzzle approaches work
- Verify rope can be assembled in different order
- Test CV submission in various sequences

**Edge cases**:
- What if player drinks espresso before using on valve? (Need spare cup or respawn?)
- What if player uses paste all 3 times incorrectly?
- What if player drops critical item in inaccessible location?
- What happens if lamp runs out mid-game? (Should be impossible with 800 turns)
- Can player break sequence by accessing areas out of order?

**State tracking**:
- Verify Front Hall state persists after transformation
- Ensure throne rotation is permanent
- Check that collapsed house can't be re-entered

**NPC behavior**:
- Barista responds correctly to all dialogue options
- Hell-mites attack only when disturbed
- Hover-mule greeting repeats appropriately

**Scoring verification**:
- All actions award correct points
- Perfect score is achievable
- Rank titles display at appropriate thresholds

---

## Flavor & Polish

### WRITING STYLE

**Perspective**: Second person ("You stand in...")

**Tense**: Present tense ("The hall is filthy..." not "The hall was filthy...")

**Tone**: Dry academic humor with corporate satire

**Vocabulary level**: Moderate to Advanced
- Uses field-specific terminology (archaeology, corporate jargon)
- Doesn't talk down to player
- Assumes familiarity with Zork/Infocom conventions

---

### RESPONSE FLAVOR

**Standard responses**: Witty and atmospheric

Examples:
- TAKE CROWN: "You take a foam crown. You feel neither royal nor comfortable."
- EXAMINE MULE: "A rental hover-mule in questionable condition, half-inflated and sagging to one side."
- SMELL ESPRESSO: "Roasted arabica, litigation-salt, and something ineffable—possibly nostalgia extract."

**Error messages**: Helpful but humorous

Examples:
- "I don't know the verb 'XYZZY' in this context. This isn't THAT Zork game."
- "You can't go that way. (Though in the original maze, you absolutely could have.)"
- "That's not something you can FROB. Despite the game's title."

**Success messages**: Understated with dry humor

Examples:
- "The hall is now aggressively clean."
- "You are now the proud owner of a FrobozzCo Breeze-Matic."
- "The throne accepts your cereal-based authentication."

---

### ATMOSPHERIC TOUCHES

**Room descriptions**: Rich detail balancing minimalism and atmosphere

Strategy:
- Opening sentence: immediate environment
- Second sentence: atmospheric detail or major feature
- Third sentence: exits or key objects
- Avoid over-describing; trust parser EXAMINE for depth

**Object descriptions**: Detailed when examined, concise when listed

Example:
- Listed: "You can see a jeweled egg here."
- Examined: "A jeweled egg of exquisite craftsmanship, though currently caked with decades of grime and hell-mite droppings. Beneath the filth, you can see it's encrusted with ruby, sapphire, and diamond inlays."

**Special messages**: Easter eggs and meta-references

Examples:
- XYZZY (anywhere): "Nothing happens. (Did you expect something?)"
- PLUGH: "That's a word for a different adventure."
- DIAGNOSE: "You are in perfect health, though your academic career is in critical condition."
- PRAY: "The Implementers are not listening. They left this place long ago."
- SWEAR: "You mutter something about corporate franchising and academic funding."
- SING: "Your singing echoes through the ruins. Somewhere, a hell-mite chittersapprovingly."

---

## Walkthrough & Hints

### OPTIMAL WALKTHROUGH

**ACT I: SURFACE**

```
> CLICK VISOR
> RIDE MULE
> E
> E
> YANK DRYER
> S
> OPEN MAILBOX
> TAKE ALL FROM MAILBOX
> IN
> USE DRYER
> W
> OPEN ICEBOX
> TAKE KEY
> E
> E
> EXAMINE JOURNAL
> TAKE JOURNAL
> W
> D
> TAKE LAMP
> TURN ON LAMP
> E
> TAKE LETTER
> READ LETTER
> PULL LEVER
> E
```

**ACT II: UNDERGROUND (Part 1 - Rope & Dam)**

```
> TAKE LANYARDS
> TAKE CODES
> ASSEMBLE LANYARDS
> E
> E
> TIE ROPE TO ARCH
> RIDE ROPE
> N
> ORDER ESPRESSO
> S
> POUR ESPRESSO ON WHEEL
> TURN WHEEL
> (Navigate to bank - path opens)
> (Explore bank, collect egg, photographs)
> READ PHOTOGRAPHS (triggers journal entry)
```

**ACT II: UNDERGROUND (Part 2 - Guild & Puzzles)**

```
> (Navigate to Free-Masonry Entry Hall)
> EXAMINE LECTERN
> E
> TAKE CARD
> TAKE GOWN
> TAKE GRANT
> TAKE WAIVER
> W
> N
> PUT CARD IN SLOT
> PUT GOWN IN SLOT
> PUT GRANT IN SLOT
> PUT WAIVER IN SLOT
> N
> ROTATE PANEL 1 (until F)
> ROTATE PANEL 2 (until R)
> ROTATE PANEL 3 (until O)
> ROTATE PANEL 4 (until B)
> E
> D
> (Watch film - automatic)
> N
> D
> TURN HOT VALVE
> TURN COLD VALVE
> TURN EXISTENTIAL VALVE
> E
```

**ACT II: UNDERGROUND (Part 3 - Endgame Prep)**

```
> TAKE CEREAL BOX
> EXAMINE SAFE
> TAKE BRASS KEY (lantern key for sequel)
> UP
> (Navigate to Final Archive Stacks if desired)
> ASSEMBLE DISK AND RIBBON AND FRAGMENT (optional)
> (Navigate to Throne Antechamber)
> N
```

**ACT III: THRONE & FINALE**

```
> OPEN CEREAL BOX
> TAKE RING
> TAKE LOOPS
> POUR ESPRESSO ON RING (if you have espresso left; otherwise get new cup)
> CRUSH LOOPS
> SPIT ON LOOPS
> LOOK THROUGH RING
> PAINT CIRCLE WITH PASTE
> PAINT CIRCLE WITH PASTE
> PAINT CIRCLE WITH PASTE
> INSERT DEED IN SLOT
> UP
> JUMP (or CLIMB OUT)
> OPEN MAILBOX
> TAKE CARD
> LOOK THROUGH RING AT CARD
> (Read ending text)
```

**Estimated Optimal Time**: 
- Speed-run: ~45 minutes
- Normal play: 2-3 hours
- Full exploration: 3-4 hours

---

### MAJOR BRANCHES

**Alternative Puzzle Orders**:

1. **Dam/Bank before Guild**: Optimal path (as above)
2. **Guild before Dam/Bank**: Works equally well; just rearrange middle section
3. **Partial exploration**: Player can explore bank/guild in either order, both must be completed

**Optional Content**:
- Reading all lore items (debt letter, journal, photographs)
- Collecting rejected CV scrolls (flavor text)
- Finding all GUE theory graffiti
- Examining all franchise merchandise
- Drinking espresso for flashback (recommended for atmosphere)
- Assembling punch-card in stacks (lore, may not be mechanically required)

**Consequences**:
- No moral choices (linear story)
- No multiple endings (single ending with sequel hook)
- Scoring varies based on thoroughness

---

### IN-GAME HINT SYSTEM

**Option 1: Integrated Hints**

Examining key objects provides progressive hints:

```
> EXAMINE VALVE WHEEL
"A large industrial valve wheel, completely encrusted with white calcium deposits. It won't budge. [Something hot might melt the calcium.]"

> EXAMINE RING (after charging)
"The decoder ring glows with violet LED light. Through its window, you might be able to see things written in special ink. [Try LOOK THROUGH RING.]"
```

**Option 2: HINT Command**

```
> HINT
Current puzzle: Crossing the dam safely

Hints available:
1. [Subtle hint]
2. [Medium hint]
3. [Direct hint]

Type HINT 1, HINT 2, or HINT 3
```

**Option 3: NPC Helper**

Barista could provide hints if asked about specific topics:

```
> ASK BARISTA ABOUT VALVE
"Calcium deposits? Hot liquid dissolves them. Espresso is quite hot. Just saying."

> ASK BARISTA ABOUT THRONE
"I hear the throne room requires franchise loyalty proof. Breakfast consumption records, perhaps?"
```

**Recommendation**: Use integrated hints (Option 1) as primary system, keep HINT command available as backup

---

## Playtesting Goals

### BALANCE CHECKS

- ✅ All puzzles solvable without external help (via integrated hints)
- ✅ No dead ends or unwinnable states (verify espresso is renewable or puzzle sequence prevents softlock)
- ✅ Difficulty curve feels right (easy surface → medium underground → hard finale)
- ✅ Exploration is rewarded (scoring for new rooms, lore items provide context)
- ✅ Red herrings are fair (dried marker, bronze wheels, rejected scrolls are clearly useless)
- ✅ NPCs behave consistently (barista responses, hell-mites predictable)
- ✅ No guess-the-verb frustrations (all critical verbs have synonyms)
- ✅ All treasures are findable (jeweled egg is obtainable, scoring items present)

### QUALITY CHECKS

- ✅ No spelling/grammar errors (requires proofreading pass)
- ✅ Room descriptions are vivid (atmospheric detail without over-writing)
- ✅ Puzzles are logical (all solutions follow from available information)
- ✅ Story is engaging (academic struggle + corporate satire + Zork nostalgia)
- ✅ Pacing works well (3-act structure, escalating complexity)
- ✅ Tone is consistent (dry humor, meta-commentary, affectionate parody)
- ✅ Themes are clear (nostalgia vs. commercialization, archaeology vs. branding)

### SPECIFIC TESTING SCENARIOS

**Sequence Breaking**:
- Can player access underground before cleaning hall? (No—cellar blocked)
- Can player reach throne without CV? (No—auditors block)
- Can player cross dam without rope? (No—fatal or blocked)

**Item Management**:
- What if player drops espresso and can't find it? (Make important items persistent/highlighted)
- Can critical items be lost forever? (Design to prevent this)
- Does paste regenerate correctly? (Test 3-use limit)

**Scoring Accuracy**:
- Does perfect playthrough reach 350 points?
- Are all actions that should score actually scoring?
- Do rank titles display correctly?

**Atmosphere & Tone**:
- Is meta-humor landing or just confusing?
- Are franchise jokes funny or annoying after 2 hours?
- Does emotional arc (determination → discovery → pyrrhic victory) work?

**Technical Stability**:
- Parser handles all reasonable synonyms?
- No crashes or unexpected behavior?
- Save/restore works correctly?
- Undo functions properly?

---

## Appendices

### APPENDIX A: Room Map (ASCII)

```
SURFACE LEVEL:
                    [Prairie]
                        |
                    [Parking]
                        |
                    [Kiosk]
                        |
                   [Mailbox]
                        |
   [Kitchen]--[Front Hall]--[Alcove]
                  |    |
            [Cellar] [Up-blocked]
                  |
              [Grating]

UNDERGROUND LEVEL 1:
              [Grating]
                  |
             [Demolition]
                  |
             [Vestibule]
                  |
             [Dam West]---(rope)---[Dam East/Café]
                                         |
                                    [Valve]
                                         |
                                     [Bank]
                                         |
                                     [Vault]
                                         |
                                  [Filing Drawer]

UNDERGROUND LEVEL 2:
                 [Guild Entry]
                 /    |    \
          [Office] [Niche] [Other]
                      |
                 [Rotunda W]---(bridge)---[Rotunda E]
                                               |
                                          [Auditorium]
                                               |
                                            [Booth]
                                               |
                                         [Maint Alpha]
                                               |
                                           [Control]
                                          /        \
                                    [Stacks]    [Other]

UNDERGROUND LEVEL 3 (FINALE):
                          [Antechamber]
                                |
                            [Throne]
                                |
                             (rotates)
                                |
                             [Attic]
                                |
                            (collapse)
                                |
                           [Epilogue]
```

### APPENDIX B: Object Quick Reference

| Object | Location | Type | Purpose |
|--------|----------|------|---------|
| Hover-mule | Prairie Overlook | Vehicle | Transportation/flavor |
| Hand-dryer | Gift Kiosk | Device | Clean Front Hall |
| Ice-cube key | Kitchen | Item | Cellar access (?) |
| LED Lamp | Cellar Landing | Light | Illuminate dark rooms |
| Debt letter | Rusted Grating | Lore | Open grating, humor |
| Lanyards | Demolition Site | Component | Make rope |
| Postal codes | Demolition Site | Component | Make rope |
| Espresso | Dam Café | Liquid | Valve, ring, flashback |
| Jeweled egg | Bank Vault | Treasure | Scoring |
| Photographs | Filing Drawer | Lore | Prove GUE reality |
| Business card | Curriculum Office | CV component | Pass auditors |
| Academic gown | Curriculum Office | CV component | Pass auditors |
| Grant letter | Curriculum Office | CV component | Pass auditors |
| Waiver | Curriculum Office | CV component | Pass auditors |
| Cereal box | Control Room | Container | CRITICAL endgame |
| Decoder ring | Cereal box | Tool | Reveal watermarks |
| Cereal loops | Cereal box | Material | Make paste |
| Brass lantern key | Control Room | Sequel hook | Future game |
| Trading card | Epilogue mailbox | Sequel hook | Sequel info |

### APPENDIX C: Puzzle Dependency Chart

```
SURFACE PUZZLES:
Clean Hall (dryer) → Access Cellar
Open Grating (letter) → Access Underground

UNDERGROUND BRANCH A:
Assemble Rope (lanyards) → Cross Dam → Drain Reservoir (espresso+valve) → Access Bank

UNDERGROUND BRANCH B:
Assemble CV (4 items) → Pass Auditors → Spell F-R-O-B → Solve Valves → Access Control Room

CONVERGENCE:
Get Cereal Box (from Control Room) → Complete Throne Puzzle → Escape Collapse → Win

CRITICAL PATH: All puzzles mandatory except photograph collection
```

### APPENDIX D: NPC Interaction Matrix

| NPC | ASK ABOUT | GIVE | SHOW | ATTACK |
|-----|-----------|------|------|--------|
| Patent-Troll Barista | Coffee, FROBSWANE, GUE, trolls | Money (accepts tips) | Any (neutral) | Refuses service |
| Hell-mites | N/A | N/A | N/A | Swarm attack (fatal) |
| Hover-mule | N/A | N/A | N/A | "The mule ignores you." |

### APPENDIX E: Scoring Breakdown

**Total Possible**: 350 points

**Major Puzzles**:
- Clean Front Hall: 20 pts
- Open Grating: 10 pts
- Assemble Rope: 15 pts
- Drain Reservoir: 25 pts
- Submit CV: 30 pts
- Spell F-R-O-B: 25 pts
- Solve Valve Sequence: 20 pts
- Complete Throne Puzzle: 50 pts
- Escape Collapse: 30 pts

**Treasures & Lore**:
- Collect Jeweled Egg: 30 pts
- Find Photographs: 40 pts

**Exploration**:
- First-time room entries: 2-3 pts each (varies)
- Total exploration: ~55 pts

**Ranks**:
- 0-50: "Tourist with Rental Hover-Mule"
- 51-100: "Graduate Student (Unfunded)"
- 101-150: "Adjunct Archaeologist"
- 151-200: "Assistant Professor of Dubious Cartography"
- 201-250: "Associate Professor with Moderate Funding"
- 251-300: "Full Professor of GUE Studies"
- 301-349: "Endowed Chair of IF Archaeology"
- 350: "Implementer"

---

## END OF DESIGN DOCUMENT

**Document Version**: 1.0  
**Created**: [Current Date]  
**Game**: FROBSWANE: A Post-Underground Excavation  
**Designer**: Based on ultra-verbose room bible  
**Status**: Ready for Implementation

---

**Next Steps**:
1. Review and refine puzzle solutions
2. Write full object descriptions
3. Implement in Inform 6
4. Playtest critical path
5. Add atmospheric details and Easter eggs
6. Balance scoring system
7. Polish parser responses
8. Final proofreading

**Notes for Implementer**:
- Pay special attention to cereal puzzle implementation (most complex)
- Ensure espresso is renewable to prevent softlocks
- Test state transformations thoroughly (Front Hall, throne rotation)
- Implement decoder ring viewing filter carefully
- Make sure flashback sequence timing works correctly
- Balance lamp turns to be generous but create mild urgency

This game is a love letter to Infocom, particularly Zork, while examining what it means when beloved cultural artifacts become commercial properties. The tone should be affectionate even when satirical, nostalgic even when critical, and always, always respectful of the player's intelligence and time.

Good luck, Implementer. May your lamp never run out.

---

**THE END**
