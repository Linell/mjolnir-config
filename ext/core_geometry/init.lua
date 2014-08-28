--- === core.geometry ===
---
--- Mathy stuff.

local geometry = require "ext.core_geometry.internal"

--- core.geometry.rotateccw(point, aroundpoint, ntimes = 1) -> point
--- Rotates a point around another point N times.
function geometry.rotateccw(point, aroundpoint, ntimes)
  local p = {x = point.x, y = point.y}
  for i = 1, ntimes or 1 do
    local px = p.x
    p.x = (aroundpoint.x - (p.y - aroundpoint.y))
    p.y = (aroundpoint.y + (px - aroundpoint.x))
  end
  return p
end

--- core.geometry.hypot(point) -> number
--- Returns hypotenuse of a line defined from 0,0 to point.
function geometry.hypot(p)
  return math.sqrt(p.x * p.x + p.y * p.y)
end

--- core.geometry.rect(x, y, w, h) -> rect
--- Convenience function for creating a rect-table.
function geometry.rect(x, y, w, h)
  return {x = x, y = y, w = w, h = h}
end

--- core.geometry.point(x, y) -> point
--- Convenience function for creating a point-table.
function geometry.point(x, y)
  return {x = x, y = y}
end

--- core.geometry.size(w, h) -> size
--- Convenience function for creating a size-table.
function geometry.size(w, h)
  return {w = w, h = h}
end

return geometry
