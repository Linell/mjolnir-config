local grid = require "grid"

local mash = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "shift"}

-- requires: grid, mj.fnutils, mj.alert

local function opendictionary()
  mj.application.launchorfocus("Dictionary")
end

mj.hotkey.bind(mash, 'D', opendictionary)

mj.hotkey.bind(mash, ';', function() grid.snap(mj.window.focusedwindow()) end)
mj.hotkey.bind(mash, "'", function() mj.fnutils.map(mj.window.visiblewindows(), grid.snap) end)

mj.hotkey.bind(mash, '=', function() grid.adjustwidth( 1) end)
mj.hotkey.bind(mash, '-', function() grid.adjustwidth(-1) end)

mj.hotkey.bind(mashshift, 'H', function() mj.window.focusedwindow():focuswindow_west() end)
mj.hotkey.bind(mashshift, 'L', function() mj.window.focusedwindow():focuswindow_east() end)
mj.hotkey.bind(mashshift, 'K', function() mj.window.focusedwindow():focuswindow_north() end)
mj.hotkey.bind(mashshift, 'J', function() mj.window.focusedwindow():focuswindow_south() end)

mj.hotkey.bind(mash, 'M', function() mj.window.focusedwindow():maximize() end)
mj.hotkey.bind(mashshift, 'M', function() mj.window.focusedwindow():minimize() end)


mj.hotkey.bind(mash, 'N', grid.pushwindow_nextscreen)
mj.hotkey.bind(mash, 'P', grid.pushwindow_prevscreen)

mj.hotkey.bind(mash, 'J', grid.pushwindow_down)
mj.hotkey.bind(mash, 'K', grid.pushwindow_up)
mj.hotkey.bind(mash, 'H', grid.pushwindow_left)
mj.hotkey.bind(mash, 'L', grid.pushwindow_right)

mj.hotkey.bind(mash, 'U', grid.resizewindow_taller)
mj.hotkey.bind(mash, 'O', grid.resizewindow_wider)
mj.hotkey.bind(mash, 'I', grid.resizewindow_thinner)
