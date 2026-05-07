🦷 Dodge the Creepy Candies

A 2D arcade survival game built with "Godot Engine 4.6", where you play as an adorable tooth trying to survive waves of creepy candy enemies!

---

🎮 Gameplay

Dodge the incoming candy mobs for as long as you can! Every second you survive adds to your score. Don't let the creeps touch you — one hit and it's game over!

- "Move" in all four directions to avoid enemies
- "Survive" as long as possible to rack up your score
- "Enemies" spawn from the edges and swarm toward you

---

🕹️ Controls

| Action | Key |
|--------|-----|
| Move Up | `W` / `Arrow Up` |
| Move Down | `S` / `Arrow Down` |
| Move Left | `A` / `Arrow Left` |
| Move Right | `D` / `Arrow Right` |

---

📁 Project Structure

```
dodge-the-creeps/
├── Scenes/
│   ├── main.tscn       # Main game scene
│   ├── player.tscn     # Player (tooth) scene
│   ├── mob.tscn        # Enemy mob scene
│   └── hud.tscn        # HUD / UI scene
├── Scripts/
│   ├── main.gd         # Game loop, score, mob spawning
│   ├── player.gd       # Player movement & animation
│   ├── mob.gd          # Mob behavior & speed
│   └── hud.gd          # Score display & messages
├── Audio/
│   ├── House In a Forest Lo...  # Background music
│   └── gameover.wav             # Game over sound
├── Fonts/
│   └── Xolonium-Regular.ttf    # UI font
├── World Scene/
│   └── Background.png          # Game background
└── project.godot
```

---

✨ Features

- 🦷 Animated player tooth character with walk and up/down animations
- 🍬 Randomly spawning candy enemies with varied speeds
- 🎵 Background music and game over sound effect
- 📊 Live score tracking
- 💀 Game over screen with restart functionality
- 📱 Screen boundary clamping — player can't go off screen

---

🛠️ Built With

- [Godot Engine 4.6](https://godotengine.org/) — Free and open source game engine
- GDScript — Python-like scripting language built into Godot
- Custom pixel art sprites

---

🚀 How to Run

1. Download and install [Godot Engine 4.x](https://godotengine.org/download)
2. Clone this repository:
   ```bash
   git clone https://github.com/marielsemillano/Semillano.git
   ```
3. Open Godot → "Import Project" → select the `project.godot` file
4. Press "F5" or click the ▶ Play button to run the game

---

👩‍💻 Developer

"Mariel Semillano"
- GitHub: [@marielsemillano](https://github.com/marielsemillano)

---

📄 License

This project was made for learning purposes following the [Godot Engine documentation tutorial](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/index.html) with custom assets and modifications.
