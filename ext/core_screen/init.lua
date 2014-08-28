--- === core.screen ===
---
--- Manipulate screens (i.e. monitors).
---
--- You usually get a screen through a window (see `core.window.screen`). But you can get screens by themselves through this module, albeit not in any defined/useful order.
---
--- Hydra's coordinate system assumes a grid that is the union of every screen's rect (see `core.screen.frame_including_dock_and_menu`).
---
--- Every window's position (i.e. `topleft`) and size are relative to this grid, and they're usually within the grid. A window that's semi-offscreen only intersects the grid.


local screen = require "ext.core_screen.internal"

--- core.screen:frame_including_dock_and_menu() -> rect
--- Returns the screen's rect in absolute coordinates, including the dock and menu.
function screen:frame_including_dock_and_menu()
  local primary_screen = screen.allscreens()[1]
  local f = self:frame()
  f.y = primary_screen:frame().h - f.h - f.y
  return f
end

--- core.screen:frame_without_dock_or_menu() -> rect
--- Returns the screen's rect in absolute coordinates, without the dock or menu.
function screen:frame_without_dock_or_menu()
  local primary_screen = screen.allscreens()[1]
  local f = self:visibleframe()
  f.y = primary_screen:frame().h - f.h - f.y
  return f
end

--- core.screen:next() -> screen
--- Returns the screen 'after' this one (I have no idea how they're ordered though); this method wraps around to the first screen.
function screen:next()
  local screens = screen.allscreens()
  local i = core.fnutils.indexof(screens, self) + 1
  if i > # screens then i = 1 end
  return screens[i]
end

--- core.screen:previous() -> screen
--- Returns the screen 'before' this one (I have no idea how they're ordered though); this method wraps around to the last screen.
function screen:previous()
  local screens = screen.allscreens()
  local i = core.fnutils.indexof(screens, self) - 1
  if i < 1 then i = # screens end
  return screens[i]
end

local function first_screen_in_direction(screen, numrotations)
  if #screen.allscreens() == 1 then
    return nil
  end

  -- assume looking to east

  -- use the score distance/cos(A/2), where A is the angle by which it
  -- differs from the straight line in the direction you're looking
  -- for. (may have to manually prevent division by zero.)

  -- thanks mark!

  local otherscreens = core.fnutils.filter(screen.allscreens(), function(s) return s ~= screen end)
  local startingpoint = core.geometry.rectmidpoint(screen:frame_including_dock_and_menu())
  local closestscreens = {}

  for _, s in pairs(otherscreens) do
    local otherpoint = core.geometry.rectmidpoint(s:frame_including_dock_and_menu())
    otherpoint = core.geometry.rotateccw(otherpoint, startingpoint, numrotations)

    local delta = {
      x = otherpoint.x - startingpoint.x,
      y = otherpoint.y - startingpoint.y,
    }

    if delta.x > 0 then
      local angle = math.atan2(delta.y, delta.x)
      local distance = core.geometry.hypot(delta)
      local anglediff = -angle
      local score = distance / math.cos(anglediff / 2)
      table.insert(closestscreens, {s = s, score = score})
    end
  end

  table.sort(closestscreens, function(a, b) return a.score < b.score end)

  if #closestscreens > 0 then
    return closestscreens[1].s
  else
    return nil
  end
end

--- core.screen:toeast()
--- Get the first screen to the east of this one, ordered by proximity.
function screen:toeast()  return first_screen_in_direction(self, 0) end

--- core.screen:towest()
--- Get the first screen to the west of this one, ordered by proximity.
function screen:towest()  return first_screen_in_direction(self, 2) end

--- core.screen:tonorth()
--- Get the first screen to the north of this one, ordered by proximity.
function screen:tonorth() return first_screen_in_direction(self, 1) end

--- core.screen:tosouth()
--- Get the first screen to the south of this one, ordered by proximity.
function screen:tosouth() return first_screen_in_direction(self, 3) end

return screen
