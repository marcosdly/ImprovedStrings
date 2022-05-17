package = "ImprovedStrings"
version = "1.0"
source = {
    url = "git://github.com/marcosdly/ImprovedStrings",
    tag = "v1.0",
}
description = {
    summary = "New methods for string manipulation in Lua.",
    detailed = [[
      ImprovedStrings provides new methods for string
      manipulation, as well as renamed or enhanced ones
      as alternatives for the built-in string methods.
    ]],
    homepage = "https://github.com/marcosdly/ImprovedStrings",
    license = "GPL 2.0"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ImprovedStrings = "ImprovedStrings.lua"
    },
    copy_directories = { "doc" }
}
