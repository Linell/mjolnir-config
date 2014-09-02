mjolnir.application = require "mjolnir.application"
mjolnir.window      = require "mjolnir.window"
mjolnir.hotkey      = require "mjolnir.hotkey"
mjolnir.fnutils     = require "mjolnir.fnutils"
grid          = require "grid"



local mash = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "shift"}

local function opendictionary()
  mjolnir.application.launchorfocus("Dictionary")
end

mjolnir.hotkey.bind(mash, 'D', opendictionary)

mjolnir.hotkey.bind(mash, ';', function() grid.snap(mjolnir.window.focusedwindow()) end)
mjolnir.hotkey.bind(mash, "'", function() mjolnir.fnutils.map(mjolnir.window.visiblewindows(), grid.snap) end)

mjolnir.hotkey.bind(mash, '=', function() grid.adjustwidth( 1) end)
mjolnir.hotkey.bind(mash, '-', function() grid.adjustwidth(-1) end)

mjolnir.hotkey.bind(mashshift, 'H', function() mjolnir.window.focusedwindow():focuswindow_west() end)
mjolnir.hotkey.bind(mashshift, 'L', function() mjolnir.window.focusedwindow():focuswindow_east() end)
mjolnir.hotkey.bind(mashshift, 'K', function() mjolnir.window.focusedwindow():focuswindow_north() end)
mjolnir.hotkey.bind(mashshift, 'J', function() mjolnir.window.focusedwindow():focuswindow_south() end)

mjolnir.hotkey.bind(mash, 'M', grid.maximize_window)

mjolnir.hotkey.bind(mash, 'N', grid.pushwindow_nextscreen)
mjolnir.hotkey.bind(mash, 'P', grid.pushwindow_prevscreen)

mjolnir.hotkey.bind(mash, 'J', grid.pushwindow_down)
mjolnir.hotkey.bind(mash, 'K', grid.pushwindow_up)
mjolnir.hotkey.bind(mash, 'H', grid.pushwindow_left)
mjolnir.hotkey.bind(mash, 'L', grid.pushwindow_right)

mjolnir.hotkey.bind(mash, 'U', grid.resizewindow_taller)
mjolnir.hotkey.bind(mash, 'O', grid.resizewindow_wider)
mjolnir.hotkey.bind(mash, 'I', grid.resizewindow_thinner)
