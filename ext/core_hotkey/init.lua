local hotkey = require "ext.core_hotkey.internal"

--- core.hotkey.bind(mods, key, pressedfn, releasedfn) -> hotkey
--- Shortcut for: return core.hotkey.new(mods, key, pressedfn, releasedfn):enable()
function hotkey.bind(...)
  return hotkey.new(...):enable()
end

core.resetters["core.hotkey"] = hotkey.disableall

return hotkey
