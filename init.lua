local grid = require "grid"

local mash = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "shift"}

-- requires: grid, core.fnutils, core.alert

local function opendictionary()
  core.application.launchorfocus("Dictionary")
end

core.hotkey.bind(mash, 'D', opendictionary)

core.hotkey.bind(mash, ';', function() grid.snap(core.window.focusedwindow()) end)
core.hotkey.bind(mash, "'", function() core.fnutils.map(core.window.visiblewindows(), grid.snap) end)

core.hotkey.bind(mash, '=', function() grid.adjustwidth( 1) end)
core.hotkey.bind(mash, '-', function() grid.adjustwidth(-1) end)

core.hotkey.bind(mashshift, 'H', function() core.window.focusedwindow():focuswindow_west() end)
core.hotkey.bind(mashshift, 'L', function() core.window.focusedwindow():focuswindow_east() end)
core.hotkey.bind(mashshift, 'K', function() core.window.focusedwindow():focuswindow_north() end)
core.hotkey.bind(mashshift, 'J', function() core.window.focusedwindow():focuswindow_south() end)

core.hotkey.bind(mash, 'M', function() core.window.focusedwindow():maximize() end)


core.hotkey.bind(mash, 'N', grid.pushwindow_nextscreen)
core.hotkey.bind(mash, 'P', grid.pushwindow_prevscreen)

core.hotkey.bind(mash, 'J', grid.pushwindow_down)
core.hotkey.bind(mash, 'K', grid.pushwindow_up)
core.hotkey.bind(mash, 'H', grid.pushwindow_left)
core.hotkey.bind(mash, 'L', grid.pushwindow_right)

core.hotkey.bind(mash, 'U', grid.resizewindow_taller)
core.hotkey.bind(mash, 'O', grid.resizewindow_wider)
core.hotkey.bind(mash, 'I', grid.resizewindow_thinner)
