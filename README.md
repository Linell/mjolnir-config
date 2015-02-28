## Mjolnir Configuration

[Mjolnir](https://github.com/mjolnir-io/mjolnir) is a lightweight automation and 
productivity app for OS X. It's the spiritual successor of Hydra, my previous 
window manager. 

---

### Installation

Make sure that you've got Mjolnir installed. Try to make sure you can run a simple init.lua
before you continue, just to ensure everything is ship shape. Once you're ready, 

```bash
git clone https://github.com/Linell/mjolnir-config.git ~/.mjolnir
cd ~/.mjolnir
luarocks install mjolnir.application
luarocks install mjolnir.window
luarocks install mjolnir.hotkey
luarocks install mjolnir.fnutils
luarocks install mjolnir.alert
luarocks install mjolnir.bg.grid
luarocks install mjolnir.lb.spotify
luarocks install mjolnir._asm.sys.audiodevice
luarocks install mjolnir._asm.ui.sound
```

Now go up to the hammer icon in your menu, click it, and select 'Reload Config'.

You should get a fancy "Mjolnir, at your service" message and cool alert noise. Boom, 
installation complete.

### Usage

You should definitely check out `init.lua` for the full "how to use" experience. That's where
all of the usage is defined, after all. For a brief breakdown though, here's what does what:

* "mash" refers to pressing <kbd>⌘ + ⌥ + ⌃ </kbd> at once.
* "mashshift" refers to pressing <kbd>⌘ + ⌥ + ⇧ </kbd> at once.

| Key Combination                 | Description                                                                                            |
| ------------------------------- | ------------------------------------------------------------------------------------------------------ |
| mash + <kbd>D</kbd>             | Opens the OS X dictionary.                                                                             |
| mash + <kbd>;</kbd>             | Snaps the focused window to the grid.                                                                  |
| mash + <kbd>'</kbd>             | Snaps *all* visible windows to the grid.                                                               |
| mash + <kbd>=</kbd>             | Adds a column to the width of the grid.                                                                |
| mash + <kbd>-</kbd>             | Removes a column from the width of the grid.                                                           |
| mashshift + <kbd>=</kbd>        | Adds a row to the height of the grid.                                                                  |
| mashshift + <kbd>-</kbd>        | Removes a row from the height of the grid.                                                             |
| mashshift + <kbd>←</kbd>        | Focuses on the window to the left of the current window.                                               |
| mashshift + <kbd>→</kbd>        | Focuses on the window to the right of the current window.                                              |
| mashshift + <kbd>↑</kbd>        | Focuses on the window above the current window.                                                        |
| mashshift + <kbd>↓</kbd>        | Focuses on the window below the current window.                                                        |
| mash + <kbd>M</kbd>             | Maximize the current window.                                                                           |
| mashshift + <kbd>M</kbd>        | Minimize the current window.                                                                           |
| mash + <kbd>F</kbd>             | Make the current window fullscreen.                                                                    |
| mashshift + <kbd>F</kbd>        | Make the current window *not* fullscreen.                                                              |
| mash + <kbd>N</kbd>             | Pushes the current window to the next monitor.                                                         |
| mash + <kbd>P</kbd>             | Pushes the current window to the previous monitor.                                                     |
| mash + <kbd>U</kbd>             | Makes the current window taller. Only works if there is room for the window to get bigger downward.    |
| mash + <kbd>O</kbd>             | Makes the current window wider. Only works if there is room for the window to get bigger to the right. |
| mash + <kbd>I</kbd>             | Makes the window thinner, from right to left.                                                          |
| mash + <kbd>Y</kbd>             | Makes the window shorter, from bottom to top.                                                          |
| mashshift + <kbd>spacebar</kbd> | Display currently playing song in Spotify.                                                             |
| mashshift + <kbd>P</kbd>        | Start playing Spotify.                                                                                 |
| mashshift + <kbd>O</kbd>        | Pause Spotify.                                                                                         |
| mashshift + <kbd>N</kbd>        | Skip to next song on Spotify.                                                                          |
| mashshift + <kbd>I</kbd>        | Skip to previous song on Spotify.                                                                      |
| mashshift + <kbd>]</kbd>        | Increase volume by increment of 5                                                                      |
| mashshift + <kbd>[</kbd>        | Decrease volume by increment of 5                                                                      |
| mashshift + <kbd>T</kbd>        | Shows the current date and time.                                                                       |

Hopefully that'll help you get a jump start on what everything does!

