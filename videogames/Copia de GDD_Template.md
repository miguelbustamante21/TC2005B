# **JazzSmash**

## _Game Design Document_

---

##### **Copyright notice / author information / boring legal stuff nobody likes**

##
## _Index_

---

- [**JazzSmash**](#jazzsmash)
  - [_Game Design Document_](#game-design-document)
        - [**Copyright notice / author information / boring legal stuff nobody likes**](#copyright-notice--author-information--boring-legal-stuff-nobody-likes)
  - [_Index_](#index)
  - [_Game Design_](#game-design)
    - [**Summary**](#summary)
    - [**Gameplay**](#gameplay)
    - [**Mindset**](#mindset)
  - [_Technical_](#technical)
    - [**Screens**](#screens)
    - [**Controls**](#controls)
    - [**Mechanics**](#mechanics)
  - [_Level Design_](#level-design)
    - [**Themes**](#themes)
    - [**Game Flow**](#game-flow)
  - [_Development_](#development)
    - [**Abstract Classes / Components**](#abstract-classes--components)
    - [**Derived Classes / Component Compositions**](#derived-classes--component-compositions)
  - [_Graphics_](#graphics)
    - [**Style Attributes**](#style-attributes)
    - [**Graphics Needed**](#graphics-needed)
  - [_Sounds/Music_](#soundsmusic)
    - [**Style Attributes**](#style-attributes-1)
    - [**Sounds Needed**](#sounds-needed)
    - [**Music Needed**](#music-needed)
  - [_Schedule_](#schedule)

## _Game Design_

---

### **Summary**

The aim of Jazz Smash is a replayable, addictive, and visual experience, with a focus on educating the player on rhythm practice and some the basic aspects of drumming. 

### **Gameplay**

The gameplay is based on endlessrunner games such as Muse Dash or Geometry Dash, the main objective of the game is to reach the highest score in 3 musical levels, the player must follow the rythm of the notes in order to complete the stage reaching the end of the map. To earn points and increase the final score the user has to tap the enemies at the right time of the bpm. 

### **Mindset**

Jazz Smash aims to have the player tense up during certain game sections, particularly in a hard level, however the player is expected to feel satisfaction when destroying drum set parts correctly. Depending on the level the player selects, it might invoke a hurried feel, or a more tranquil vibe.

## _Technical_

---

### **Screens**

1. Title Screen
2. Menu screen
    1. Play
        1. Level select screen
    2. Practice
        1. Level select screen
3. Game
    1. Pause screen
    2. Score screen (level end)

_(example)_

### **Controls**

Menu controls: the only way to navigate through the menu will be clicking the different buttons of the screen using the mouse.

Game controls: the position of the keys is inspired by the order and style of the drums in a drum set. The player is not going to be able to choose wich keys to use.

    a: Hi-hat
    w: Crash cymbal
    d: Snare drum
    spacebar: Bass drum
    l: Floor tom
    i: Ride Cymbal
    j: Tom-tom

### **Mechanics**

Combat - in order to attack, the player must tap the keys that match the drum set parts, this is the only way to make the character move and destroy the objetives. The drum kit parts will be destroyed when the hitbox of the crosshair breaks them within a certain distance between the player and the enemy. If the player fails to break a drum part, a "Miss" message and sound will be executed, which will affect accuracy and score. 
##
Score - score will be determined based on how many drum kit parts the player breaks, and fails to break. It will be saved and displayed at the end of the level. Also if the player fails a certain amount of attacks, will be forced to restart the level.
##
Accuracy - the player's accuracy when hitting drum kit parts will be calculated based on how close the part was to the crosshair when it's broken. A margin of error will be established in order to determine the accuracy of the attack.
##
Speed - depending on which level the player selects (Easy, Normal, Hard, Whiplash), the song's tempo will be directly related to the toughness of the level. 
##
Spawning - the enemies will spawn according to the bpm of the song, which depends sloley on the level that the player selects. Drum kit parts will spawn in "clusters" or "chunks", representing a repeatable section of the song. Chunks will be [DEFINIR COMO SE VA A LEER LA CANCION]
##

## _Level Design_

---

_(Note : These sections can safely be skipped if they&#39;re not relevant, or you&#39;d rather go about it another way. For most games, at least one of them should be useful. But I&#39;ll understand if you don&#39;t want to use them. It&#39;ll only hurt my feelings a little bit.)_

### **Themes**

1. Easy level: will have a relaxed feel, with a soft/content jazz beat. The ambient will consist of a typical bar stage with a low audience. The player will only interact with the drum kit parts by destroying them.

(sketch del nivel)

2. Normal level: will have an upbeat/active, happy feel, which will not stress the player, but challenge him in certain sections of the song. The ambient will consist of a typical bar stage with a visibly active audience. The player will only interact with the drum kit parts by destroying them.

(sketch del nivel)

3. Hard level: will have an exhuberant/energetic feel, with a fast and more complex beat sequence. The ambient will consist of a small bar, with a packed audience. The player will only interact with the drum kit parts by destroying them.

(sketch del nivel)

4. Whiplash: will have frantic/serious feel, with a nearly impossible beat sequence. The player will only interact with the drum kit parts by destroying them. The ambient will consist of an empty dark bar, with a single audience member cheering the player. The player will only interact with the drum kit parts by destroying them.

(sketch del nivel)

### **Game Flow**

1. Level starts with a drumstick beat as a "countdown", while displaying the words "Ready?" and "Go!".
2. Drum kit parts start flowing down the screen into the player/drum set.
3. The player destroys the drum kit parts following the song bpm and part sequence.
4. When the song ends, a message is displayed with the words "Finish!".
5. The players score and accuracy are displayed at the end of the level.

_(example)_

## _Development_

---

### **Abstract Classes / Components**

1. BasePhysics
    1. BasePlayer
    2. BaseEnemy
    3. BaseObject
2. BaseObstacle
3. BaseInteractable

_(example)_

### **Derived Classes / Component Compositions**

1. BasePlayer
    1. PlayerMain
    2. PlayerUnlockable
2. BaseEnemy
    1. EnemyWolf
    2. EnemyGoblin
    3. EnemyGuard (may drop key)
    4. EnemyGiantRat
    5. EnemyPrisoner
3. BaseObject
    1. ObjectRock (pick-up-able, throwable)
    2. ObjectChest (pick-up-able, throwable, spits gold coins with key)
    3. ObjectGoldCoin (cha-ching!)
    4. ObjectKey (pick-up-able, throwable)
4. BaseObstacle
    1. ObstacleWindow (destroyed with rock)
    2. ObstacleWall
    3. ObstacleGate (watches to see if certain buttons are pressed)
5. BaseInteractable
    1. InteractableButton

_(example)_

## _Graphics_

---

### **Style Attributes**

What kinds of colors will you be using? Do you have a limited palette to work with? A post-processed HSV map/image? Consistency is key for immersion.

What kind of graphic style are you going for? Cartoony? Pixel-y? Cute? How, specifically? Solid, thick outlines with flat hues? Non-black outlines with limited tints/shades? Emphasize smooth curvatures over sharp angles? Describe a set of general rules depicting your style here.

Well-designed feedback, both good (e.g. leveling up) and bad (e.g. being hit), are great for teaching the player how to play through trial and error, instead of scripting a lengthy tutorial. What kind of visual feedback are you going to use to let the player know they&#39;re interacting with something? That they \*can\* interact with something?

### **Graphics Needed**

1. Characters
    1. Human-like
        1. Goblin (idle, walking, throwing)
        2. Guard (idle, walking, stabbing)
        3. Prisoner (walking, running)
    2. Other
        1. Wolf (idle, walking, running)
        2. Giant Rat (idle, scurrying)
2. Blocks
    1. Dirt
    2. Dirt/Grass
    3. Stone Block
    4. Stone Bricks
    5. Tiled Floor
    6. Weathered Stone Block
    7. Weathered Stone Bricks
3. Ambient
    1. Tall Grass
    2. Rodent (idle, scurrying)
    3. Torch
    4. Armored Suit
    5. Chains (matching Weathered Stone Bricks)
    6. Blood stains (matching Weathered Stone Bricks)
4. Other
    1. Chest
    2. Door (matching Stone Bricks)
    3. Gate
    4. Button (matching Weathered Stone Bricks)

_(example)_


## _Sounds/Music_

---

### **Style Attributes**

Again, consistency is key. Define that consistency here. What kind of instruments do you want to use in your music? Any particular tempo, key? Influences, genre? Mood?

Stylistically, what kind of sound effects are you looking for? Do you want to exaggerate actions with lengthy, cartoony sounds (e.g. mario&#39;s jump), or use just enough to let the player know something happened (e.g. mega man&#39;s landing)? Going for realism? You can use the music style as a bit of a reference too.

 Remember, auditory feedback should stand out from the music and other sound effects so the player hears it well. Volume, panning, and frequency/pitch are all important aspects to consider in both music _and_ sounds - so plan accordingly!

### **Sounds Needed**

1. Effects
    1. Soft Footsteps (dirt floor)
    2. Sharper Footsteps (stone floor)
    3. Soft Landing (low vertical velocity)
    4. Hard Landing (high vertical velocity)
    5. Glass Breaking
    6. Chest Opening
    7. Door Opening
2. Feedback
    1. Relieved &quot;Ahhhh!&quot; (health)
    2. Shocked &quot;Ooomph!&quot; (attacked)
    3. Happy chime (extra life)
    4. Sad chime (died)

_(example)_

### **Music Needed**

1. Slow-paced, nerve-racking &quot;forest&quot; track
2. Exciting &quot;castle&quot; track
3. Creepy, slow &quot;dungeon&quot; track
4. Happy ending credits track
5. Rick Astley&#39;s hit #1 single &quot;Never Gonna Give You Up&quot;

_(example)_


## _Schedule_

---

_(define the main activities and the expected dates when they should be finished. This is only a reference, and can change as the project is developed)_

1. develop base classes
    1. base entity
        1. base player
        2. base enemy
        3. base block
  2. base app state
        1. game world
        2. menu world
2. develop player and basic block classes
    1. physics / collisions
3. find some smooth controls/physics
4. develop other derived classes
    1. blocks
        1. moving
        2. falling
        3. breaking
        4. cloud
    2. enemies
        1. soldier
        2. rat
        3. etc.
5. design levels
    1. introduce motion/jumping
    2. introduce throwing
    3. mind the pacing, let the player play between lessons
6. design sounds
7. design music

_(example)_