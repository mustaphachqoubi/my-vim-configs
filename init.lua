require('mustaphachqoubi.base')
require('mustaphachqoubi.highlights')
require('mustaphachqoubi.maps')
require('mustaphachqoubi.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('mustaphachqoubi.macos')
end
if is_linux == 1 then
  require('mustaphachqoubi.linux')
end
if is_win == 1 then
  require('mustaphachqoubi.windows')
end
if is_wsl == 1 then
  require('mustaphachqoubi.wsl')
end
