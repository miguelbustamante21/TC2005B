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
Spawning - the enemies will spawn according to the bpm of the song, which depends on the level that the player selects. Drum kit parts will spawn [VER COMO REPLICAR GUITAR HERO PARA EXPLICAR SPAWNING]

##

## _Level Design_

---

### **Themes**

1. Easy level: will have a relaxed feel, with a soft/content jazz beat. The ambient will consist of a typical bar stage with a low audience. The player will only interact with the drum kit parts by destroying them.

_(example)_

2. Normal level: will have an upbeat/active, happy feel, which will not stress the player, but challenge him in certain sections of the song. The ambient will consist of a typical bar stage with a visibly active audience. The player will only interact with the drum kit parts by destroying them.

_(example)_

3. Hard level: will have an exhuberant/energetic feel, with a fast and more complex beat sequence. The ambient will consist of a small bar, with a packed audience. The player will only interact with the drum kit parts by destroying them.

_(example)_

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

As the game is set inside a jazz lounge, the game will employ colors commonly found in jazz clubs, as well as the main stage. By using a dark pallete to simulate a dark or night environment, a mellow or elegeant ambiance will be invoked.

As we're dealing with a pixel-art artstyle, the game will contain as few colors as possible, while providing a clear distinction between assets.

As mentioned, the game will employ a pixel-art graphic style, using color gadients for assets in order to simulate volume and lighning. Curvature will also be simulated with as few pixels as possible, while maintaining a low level of detail.
##
### **Visual feedback**

Keystrokes corresponding to whichever drum kit part will result in a simple animation with the player swinging drum sticks, and animations for each of the part(s) exploding upon a successful attack. This will result in a score counter increasing or decreasing in case the player fails the attack. At the end of the level, the player will be able to see his final score, as well as his overall accuracy.

Having practice levels to choose from will also let the player experience the game without a score constraint, and learn the keystrokes for the corresponding level.

### **Graphics Needed**

1. Characters
    1. Playable
        1. Main character cat (facing the audience, beating the drums based on player input)
    2. Non playable
        1. Audience (drinking, moving to the beat, cheering)
2. Drum kit sprites
    1. Hi-hat (idle, exploding)
    2. Crash cymbal (idle, exploding)
    3. Snare drum (idle, exploding)
    4. Bass drum (idle, exploding)
    5. Floor tom (idle, exploding)
    6. Ride Cymbal (idle, exploding)
    7. Tom-tom (idle, exploding)
3. Ambient
    1. Drum kit sprite (in front of the character)
    2. Background (including floor, stage curtain, and the club)
    3. Attack combo message
    4. Attack miss message
4. Other
    1. Splash screen art
    2. Menu art
    3. Menu buttons
    4. Mouse cursor
    5. Pause menu art
    6. Pause menu buttons
    7. Level end data display art

_(example)_


## _Sounds/Music_

---

### **Style Attributes**
JazzSmash will utilize several public domain jazz songs. The jazz utilized will invoke the sensation of ellegance and sophistication that can be found in the style of music. 

Starting the different levels, there will be a Drummer stick beat to remind the player that he is a Drummer preparing to play the piece. 

The music will be the most predominant sound played during the level. As the sound will correlate with the instruments shown during the level. 
### **Sounds Needed**

1. Feedback
    1. Start &quot;Drum strike&quot; (game start)
    2. Miss Sound &quot;Thud&quot; (missed attack)
    3. Clap (successful level end)
    4. Small random drumming sequence (right after losing)
    5. Booing and jeering (game over)
    6. Button click sound (any button except the menu "play" button)
    7. Small drumming sequence (menu "play" button)

_(example)_

### **Music Needed**

1. Level 1 music (slow paced, relaxed)
2. Level 2 music (upbeat, happy)
3. Level 3 music (fast, energetic)
5. Main menu music

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