-- This file was automatically generated for the LuaDist project.

package = "rapidjson"
version = "0.5.0-1"
local v = version:gsub("%-%d", "")
-- LuaDist source
source = {
  tag = "0.5.0-1",
  url = "git://github.com/LuaDist-testing/rapidjson.git"
}
-- Original source
-- source = {
--   url = "git://github.com/xpol/lua-rapidjson",
--   tag = "v"..v
-- }
description = {
  summary = "Json module based on the very fast RapidJSON.",
  detailed = "A json module for Lua 5.1/5.2/5.3 and LuaJIT based on the very fast RapidJSON.",
   homepage = "https://github.com/xpol/lua-rapidjson",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
  type = "cmake",
  variables = {
    BUILD_SHARED_LIBS = "ON",
    CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
    LUA_RAPIDJSON_VERSION = v
  },
  platforms = { windows = { variables = {
    LUA_LIBRARIES = "$(LUA_LIBDIR)/$(LUALIB)"
  }}}
}