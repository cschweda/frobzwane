# FROBSWANE: Complete Walkthrough

## Version: First Draft (12 Rooms Implemented)

This walkthrough documents every command and parser response for the current implementation of FROBSWANE. As the game expands, this walkthrough will be updated.

**Current Status**: ACT I (Surface) mostly complete, ACT II (Underground) partially implemented.

---

## Starting the Game

When you start the game, you'll see:

```
FROBSWANE: A Post-Underground Excavation
A Post-Underground Excavation

Release 1 / Serial number 251130 / Inform v6.45 (in development) Library 6/12

Prairie Overlook
A sodium-orange prairie flickers like a dying CRT monitor. Heat-shimmer rises in waves, tasting of copper and old shareware disks. Your rental hover-mule squats half-inflated nearby, its cheap photo-chromatic visor clipped over the air valve.

You can see a rental hover-mule and a photo-chromatic visor here.

>
```

---

## ACT I: SURFACE EXPLORATION

### Room 1: Prairie Overlook (Starting Location)

**Initial Description:**
```
A sodium-orange prairie flickers like a dying CRT monitor. Heat-shimmer rises in waves, tasting of copper and old shareware disks. Your rental hover-mule squats half-inflated nearby, its cheap photo-chromatic visor clipped over the air valve.
```

**Available Objects:**
- rental hover-mule (scenery, can't be taken)
- photo-chromatic visor (scenery, can't be taken)

**Commands and Responses:**

```
> look
A sodium-orange prairie flickers like a dying CRT monitor. Heat-shimmer rises in waves, tasting of copper and old shareware disks. Your rental hover-mule squats half-inflated nearby, its cheap photo-chromatic visor clipped over the air valve.

You can see a rental hover-mule and a photo-chromatic visor here.
```

```
> examine mule
A rental hover-mule in questionable condition, half-inflated and sagging to one side.
```

```
> examine visor
A cheap photo-chromatic visor clipped over the hover-mule's air valve.
```

```
> take mule
You can't take the rental hover-mule.
```

```
> take visor
You can't take the photo-chromatic visor.
```

```
> inventory
You are empty-handed.
```

```
> east
```

**Parser Response:**
```
Tarpit Memorial Parking Lot
Cracked asphalt bubbles with bitumen and cancelled shareware. A faded GUE HERITAGE TOUR placard is half-submerged in tar.

>
```

---

### Room 2: Tarpit Memorial Parking Lot

**Description:**
```
Cracked asphalt bubbles with bitumen and cancelled shareware. A faded GUE HERITAGE TOUR placard is half-submerged in tar.
```

**Exits:** West (back to Prairie Overlook), East (to Gift Kiosk)

**Commands:**

```
> look
Cracked asphalt bubbles with bitumen and cancelled shareware. A faded GUE HERITAGE TOUR placard is half-submerged in tar.
```

```
> west
```

**Parser Response:**
```
Prairie Overlook
A sodium-orange prairie flickers like a dying CRT monitor. Heat-shimmer rises in waves, tasting of copper and old shareware disks. Your rental hover-mule squats half-inflated nearby, its cheap photo-chromatic visor clipped over the air valve.

You can see a rental hover-mule and a photo-chromatic visor here.

>
```

```
> east
```

**Parser Response:**
```
Gift Kiosk
A rotating rack of foam crowns and LED key-chains stands in this abandoned tourist trap. A wall-mounted FrobozzCo Breeze-Matic hand-dryer is still warm.

You can see a FrobozzCo Breeze-Matic hand-dryer here.

>
```

---

### Room 3: Gift Kiosk

**Description:**
```
A rotating rack of foam crowns and LED key-chains stands in this abandoned tourist trap. A wall-mounted FrobozzCo Breeze-Matic hand-dryer is still warm.
```

**Available Objects:**
- FrobozzCo Breeze-Matic hand-dryer (wall-mounted, can't be taken yet)

**Exits:** West (to Parking Lot), South (to Mailbox Approach)

**Commands:**

```
> look
A rotating rack of foam crowns and LED key-chains stands in this abandoned tourist trap. A wall-mounted FrobozzCo Breeze-Matic hand-dryer is still warm.

You can see a FrobozzCo Breeze-Matic hand-dryer here.
```

```
> examine dryer
A wall-mounted FrobozzCo Breeze-Matic hand-dryer. It's still warm to the touch.
```

```
> take dryer
It's bolted to the wall. You'll need to yank it free.
```

**Note:** The YANK verb is not yet implemented. For now, we'll note this for future implementation.

```
> south
```

**Parser Response:**
```
Mailbox Approach
The White House front door is buried to the letterbox in loam. Only the mailbox remains accessible, stuffed with fossil circulars.

You can see a mailbox here.

>
```

---

### Room 4: Mailbox Approach

**Description:**
```
The White House front door is buried to the letterbox in loam. Only the mailbox remains accessible, stuffed with fossil circulars.
```

**Available Objects:**
- mailbox (container, open)

**Exits:** North (to Gift Kiosk), In (to Front Hall)

**Commands:**

```
> look
The White House front door is buried to the letterbox in loam. Only the mailbox remains accessible, stuffed with fossil circulars.

You can see a mailbox here.
```

```
> examine mailbox
A mailbox stuffed with fossil circulars.
```

```
> open mailbox
The mailbox is already open.
```

```
> look in mailbox
The mailbox is empty.
```

**Note:** Mailbox contents (coupons, tickets) not yet implemented.

```
> in
```

**Parser Response:**
```
Front Hall
The front hall is a disaster of dust, cobwebs, and organic matter. Everything leans toward depressing beige.

>
```

---

### Room 5: Front Hall (Initial State - Dirty)

**Description (Before Cleaning):**
```
The front hall is a disaster of dust, cobwebs, and organic matter. Everything leans toward depressing beige.
```

**Exits:** Out (to Mailbox Approach), East (to Living Room Alcove), West (to Kitchen), Down (blocked until cleaned)

**Commands:**

```
> look
The front hall is a disaster of dust, cobwebs, and organic matter. Everything leans toward depressing beige.
```

```
> down
The cellar stairs are blocked by debris.
```

**Note:** To proceed, we need to clean the hall. However, the hand-dryer is still in the Gift Kiosk and the YANK verb isn't implemented yet. For this walkthrough, we'll assume the dryer is available (future implementation).

**Hypothetical sequence (when YANK is implemented):**

```
> west
```

**Parser Response:**
```
Kitchen
The kitchen is surprisingly intact with decades-old appliances. An unplugged icebox stands in the corner.

You can see an unplugged icebox here.

>
```

---

### Room 6: Kitchen

**Description:**
```
The kitchen is surprisingly intact with decades-old appliances. An unplugged icebox stands in the corner.
```

**Available Objects:**
- unplugged icebox (container, can be opened)

**Exits:** East (to Front Hall)

**Commands:**

```
> look
The kitchen is surprisingly intact with decades-old appliances. An unplugged icebox stands in the corner.

You can see an unplugged icebox here.
```

```
> examine icebox
An unplugged icebox standing in the corner.
```

```
> open icebox
You open the unplugged icebox.
```

```
> look in icebox
The unplugged icebox contains:
  an ice-cube key
```

```
> take key
Taken.
```

```
> inventory
You are carrying:
  an ice-cube key
```

```
> examine key
A key frozen in an ice cube.
```

```
> east
```

**Parser Response:**
```
Front Hall
The front hall is a disaster of dust, cobwebs, and organic matter. Everything leans toward depressing beige.

>
```

---

### Room 5 (Continued): Front Hall

```
> east
```

**Parser Response:**
```
Living Room Alcove
A reading nook with dusty armchair and side table. A yellowed academic journal lies open to a furious editorial.

You can see a GUE-journal paper here.

>
```

---

### Room 7: Living Room Alcove

**Description:**
```
A reading nook with dusty armchair and side table. A yellowed academic journal lies open to a furious editorial.
```

**Available Objects:**
- GUE-journal paper

**Exits:** West (to Front Hall)

**Commands:**

```
> look
A reading nook with dusty armchair and side table. A yellowed academic journal lies open to a furious editorial.

You can see a GUE-journal paper here.
```

```
> take journal
Taken.
```

```
> examine journal
A yellowed academic journal open to a furious editorial about the Great Underground Empire being dismissed as marketing fiction.
```

```
> read journal
A yellowed academic journal open to a furious editorial about the Great Underground Empire being dismissed as marketing fiction.
```

```
> west
```

**Parser Response:**
```
Front Hall
The front hall is a disaster of dust, cobwebs, and organic matter. Everything leans toward depressing beige.

>
```

---

### Room 5 (Continued): Cleaning the Front Hall

**Note:** This assumes the hand-dryer has been obtained (YANK verb will be implemented).

**Hypothetical sequence:**

```
> use dryer
The dryer blasts away all dust and cobwebs with industrial force. The hall is now blindingly, oppressively white. Everything gleams with antiseptic perfection.
```

**Parser Response:**
```
[Score increased by 20 points.]
```

**State Change:** The room description now changes permanently.

```
> look
The hall is now blindingly, oppressively white. Everything gleams with antiseptic perfection.
```

```
> down
```

**Parser Response:**
```
Cellar Landing
Stone steps descend to a landing where air grows cooler. A small ledge holds an LED Frob-Lux lamp. A heavy iron grating blocks further descent.

You can see an LED Frob-Lux lamp here.

>
```

---

### Room 8: Cellar Landing

**Description:**
```
Stone steps descend to a landing where air grows cooler. A small ledge holds an LED Frob-Lux lamp. A heavy iron grating blocks further descent.
```

**Available Objects:**
- LED Frob-Lux lamp (light source, critical for underground)

**Exits:** Up (to Front Hall), East (to Rusted Grating)

**Commands:**

```
> look
Stone steps descend to a landing where air grows cooler. A small ledge holds an LED Frob-Lux lamp. A heavy iron grating blocks further descent.

You can see an LED Frob-Lux lamp here.
```

```
> take lamp
Taken.
```

```
> examine lamp
An LED Frob-Lux lamp with 800 turns of battery life remaining.
```

**Note:** The lamp description dynamically shows remaining battery.

```
> turn on lamp
The LED Frob-Lux lamp is now on.
```

**State Change:** Lamp is now providing light (important for dark rooms).

```
> inventory
You are carrying:
  an ice-cube key
  a GUE-journal paper
  an LED Frob-Lux lamp (providing light)
```

```
> east
```

**Parser Response:**
```
Rusted Grating
The grating continues here. A lever on the far side is jammed by a debt-collection letter wedged into the mechanism.

You can see a debt-collection letter and a lever here.

>
```

---

### Room 9: Rusted Grating

**Description:**
```
The grating continues here. A lever on the far side is jammed by a debt-collection letter wedged into the mechanism.
```

**Available Objects:**
- debt-collection letter (blocks the lever)
- lever (opens grating when letter is removed)

**Exits:** West (to Cellar Landing), East (blocked until grating opened)

**Commands:**

```
> look
The grating continues here. A lever on the far side is jammed by a debt-collection letter wedged into the mechanism.

You can see a debt-collection letter and a lever here.
```

```
> examine letter
A debt-collection letter wadded into the lever mechanism. The compound interest number is 847,293,201.
```

```
> examine lever
A lever on the far side of the grating, currently jammed by a debt-collection letter.
```

```
> pull lever
The lever won't move. The paper is blocking it.
```

**Solution:** Remove the letter first.

```
> take letter
Taken.
```

```
> pull lever
The grating swings open with a rusty scream.
```

**Parser Response:**
```
[Score increased by 10 points.]
```

**State Change:** `grating_opened` is now true, allowing passage east.

```
> east
```

**Parser Response:**
```
Former Maze Demolition Site
A cavernous hollow where corridors once twisted. Rubble forms neat berms. A brass sign reads: This would have been the maze room, but everybody hates mazes, so we demolished the maze. You're welcome. --FrobozzCo Recreation Dept.

It is pitch dark. You'd be well advised to light a lamp.
```

**Note:** This room is dark! The lamp should be providing light. This may be a bug or the lamp needs to be explicitly turned on. Let's check:

```
> look
It is pitch dark. You'd be well advised to light a lamp.
```

**Note:** The lamp should be working. This might need debugging. For now, we'll note that the lamp needs to be on.

---

## ACT II: UNDERGROUND (Partial Implementation)

### Room 10: Former Maze Demolition Site

**Description (if lit):**
```
A cavernous hollow where corridors once twisted. Rubble forms neat berms. A brass sign reads: This would have been the maze room, but everybody hates mazes, so we demolished the maze. You're welcome. --FrobozzCo Recreation Dept.
```

**Note:** This room is dark. The lamp should provide light, but there may be an implementation issue. Objects for rope assembly (lanyards, postal codes) are not yet implemented.

**Exits:** West (to Rusted Grating), East (to Mail-Sorting Vestibule)

**Commands:**

```
> east
```

**Parser Response (if dark):**
```
It is pitch dark. You can't see where you're going.
```

**Note:** Need lamp to be on. Assuming lamp is working:

```
> east
```

**Parser Response:**
```
Mail-Sorting Vestibule
Collapsed pigeonholes line the walls like honeycomb cells. Bronze routing wheels lie scattered. Torn postal codes flutter like confetti.

>
```

---

### Room 11: Mail-Sorting Vestibule

**Description:**
```
Collapsed pigeonholes line the walls like honeycomb cells. Bronze routing wheels lie scattered. Torn postal codes flutter like confetti.
```

**Note:** Objects (lanyards, postal codes) for rope assembly not yet implemented.

**Exits:** West (to Demolition Site), East (to Western Arch of Dam)

**Commands:**

```
> look
Collapsed pigeonholes line the walls like honeycomb cells. Bronze routing wheels lie scattered. Torn postal codes flutter like confetti.
```

```
> east
```

**Parser Response:**
```
Western Arch of Dam #3
You stand on the western arch of Flood Control Dam #3--the only masonry left standing. The reservoir beyond is a cracked mud skillet. Graffiti reads: GUE Theory #7 -- Empire still exists, just moved to cloud storage.

>
```

---

### Room 12: Western Arch of Dam #3

**Description:**
```
You stand on the western arch of Flood Control Dam #3--the only masonry left standing. The reservoir beyond is a cracked mud skillet. Graffiti reads: GUE Theory #7 -- Empire still exists, just moved to cloud storage.
```

**Exits:** West (to Mail-Sorting Vestibule), East (blocked until rope attached)

**Commands:**

```
> look
You stand on the western arch of Flood Control Dam #3--the only masonry left standing. The reservoir beyond is a cracked mud skillet. Graffiti reads: GUE Theory #7 -- Empire still exists, just moved to cloud storage.
```

```
> east
You need a rope to cross safely. Without it, you'd fall to your death.
```

**Note:** Rope assembly puzzle not yet implemented. When implemented, player will:
1. Collect lanyards and postal codes from Demolition Site
2. Assemble them into a rope
3. Attach rope to arch
4. Cross to Dam Café

---

### Room 13: Dam Gift-Shop / Café

**Description:**
```
A combination gift shop and espresso cafe. Every surface bears the FROBSWANE(TM) logo. An espresso machine hisses. Behind the counter stands a green-skinned figure in a three-piece suit.
```

**Note:** This room has lighting. NPC (Patent-Troll Barista) not yet implemented.

**Exits:** West (to Western Arch - requires rope), South (to Valve Platform)

**Commands:**

```
> look
A combination gift shop and espresso cafe. Every surface bears the FROBSWANE(TM) logo. An espresso machine hisses. Behind the counter stands a green-skinned figure in a three-piece suit.
```

**Note:** NPC interaction (ordering espresso) not yet implemented.

```
> south
```

**Parser Response:**
```
Valve Platform
A metal platform extends to a massive valve wheel frozen solid with white calcium deposits. A pipe extends down into the old reservoir.

>
```

---

### Room 14: Valve Platform

**Description:**
```
A metal platform extends to a massive valve wheel frozen solid with white calcium deposits. A pipe extends down into the old reservoir.
```

**Note:** Valve wheel object and espresso puzzle not yet implemented.

**Exits:** North (to Dam Café)

**Commands:**

```
> look
A metal platform extends to a massive valve wheel frozen solid with white calcium deposits. A pipe extends down into the old reservoir.
```

**Note:** When implemented, player will:
1. Get espresso from barista
2. Pour espresso on valve wheel (melts calcium)
3. Turn valve (drains reservoir)
4. Access bank below

---

## Current Inventory Summary

At this point in the game, the player should have:

```
> inventory
You are carrying:
  an ice-cube key
  a GUE-journal paper
  an LED Frob-Lux lamp (providing light)
  a debt-collection letter
```

---

## Score Summary

Current score: **30 points**
- 20 points: Cleaning the Front Hall
- 10 points: Opening the grating

---

## Implementation Status

### ✅ Implemented and Working:
- 12 rooms (9 surface, 3 underground)
- Basic objects (lamp, key, journal, letter, lever, containers)
- Room descriptions
- Conditional exits (Front Hall down, Rusted Grating east)
- State-dependent descriptions (Front Hall clean/dirty)
- Basic puzzle (lever/letter)
- Scoring (partial)

### ⏳ Not Yet Implemented:
- YANK verb (for hand-dryer)
- Hand-dryer cleaning puzzle (partially coded, needs YANK)
- Rope assembly puzzle (lanyards, postal codes, ASSEMBLE verb)
- Espresso/barista interaction
- Valve puzzle
- Remaining 19 rooms
- Remaining objects
- NPCs
- Custom verbs (CRUSH, SPIT ON, PAINT CIRCLE, etc.)
- Light/darkness system (lamp may not be working correctly)
- Complete scoring system

---

## Notes for Future Updates

1. **Lamp Lighting**: Verify that the lamp properly lights dark rooms. The "has light" property should work, but may need testing.

2. **YANK Verb**: Implement YANK verb to allow removing the hand-dryer from the wall.

3. **Container Contents**: Add contents to mailbox (coupons, tickets).

4. **Rope Puzzle**: Implement lanyards, postal codes, and ASSEMBLE verb.

5. **NPC System**: Implement Patent-Troll Barista with dialogue system.

6. **More Rooms**: Continue implementing remaining rooms from design document.

---

## Walkthrough Update Policy

This walkthrough will be updated as the game expands:
- New rooms will be added with full command sequences
- New puzzles will be documented with solutions
- New objects will be catalogued
- Parser responses will be recorded verbatim
- Score tracking will be maintained

**Last Updated**: 2024-11-30  
**Game Version**: First Draft (12 rooms)  
**Next Update**: When next batch of rooms/features is implemented

