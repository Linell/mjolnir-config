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

* "mash" refers to pressing command, option, and control at once.
* "mashshift" refers to pressing command, option, and shift at once.

| Key Combination             | Description                                                                                            |
| --------------------------- | ------------------------------------------------------------------------------------------------------ |
| mash + D                    | Opens the OS X dictionary.                                                                             |
| mash + ;                    | Snaps the focused window to the grid.                                                                  |
| mash + '                    | Snaps *all* visible windows to the grid.                                                               |
| mash + =                    | Adds a column to the width of the grid.                                                                |
| mash + -                    | Removes a column from the width of the grid.                                                           |
| mashshift + =               | Adds a row to the height of the grid.                                                                  |
| mashshift + -               | Removes a row from the height of the grid.                                                             |
| mashshift + left arrow key  | Focuses on the window to the left of the current window.                                               |
| mashshift + right arrow key | Focuses on the window to the right of the current window.                                              |
| mashshift + up arrow key    | Focuses on the window above the current window.                                                        |
| mashshift + down arrow key  | Focuses on the window below the current window.                                                        |
| mash + M                    | Maximize the current window.                                                                           |
| mashshift + M               | Minimize the current window.                                                                           |
| mash + F                    | Make the current window fullscreen.                                                                    |
| mashshift + F               | Make the current window *not* fullscreen.                                                              |
| mash + N                    | Pushes the current window to the next monitor.                                                         |
| mash + P                    | Pushes the current window to the previous monitor.                                                     |
| mash + U                    | Makes the current window taller. Only works if there is room for the window to get bigger downward.    |
| mash + O                    | Makes the current window wider. Only works if there is room for the window to get bigger to the right. |
| mash + I                    | Makes the window thinner, from right to left.                                                          |
| mash + Y                    | Makes the window shorter, from bottom to top.                                                          |
| mashshift + spacebar        | Display currently playing song in Spotify.                                                             |
| mashshift + P               | Start playing Spotify.                                                                                 |
| mashshift + O               | Pause Spotify.                                                                                         |
| mashshift + N               | Skip to next song on Spotify.                                                                          |
| mashshift + I               | Skip to previous song on Spotify.                                                                      |
| mashshift + ]               | Increase volume by increment of 5                                                                      |
| mashshift + [               | Decrease volume by increment of 5                                                                      |
| mashshift + T               | Shows the current date and time.                                                                       |

Hopefully that'll help you get a jump start on what everything does!

