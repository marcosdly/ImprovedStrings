local modify   = require "test.modifyTest"
local match    = require "test.matchTest"
local iterator = require "test.iteratorTest"

local baseResultString = [[
:: TEST #%s
Test: %q
Description: %q
Expected: %s %q
Obtained: %s %q
Result:   %s
:: ENDTEST
]]

local errorString = "\n" .. [[
ERROR: Test does not returns a table.
DETAILS: {
    Field: %q
}
]]

local function doTest(file, testSectionName)
    local testNumber = 1

    print(string.format(">> TEST SECTION: %s\n", testSectionName))

    for func in pairs(file) do
        local form
        if type(file[func]) == "function" and type(file[func]()) == "table" then
            form = file[func]()
        elseif type(file[func]) == "table" then
            form = file[func]
        else
            error(string.format(errorString, func))
        end

        local result
        if form.expected == form.obtained then
            result = "PASSED"
        else
            result = "FAILED"
        end

        print(string.format(
            baseResultString, -- Base String

            -- Information
            testNumber,
            form.title,
            form.desc,
            type(form.expected),
            form.expected,
            type(form.obtained),
            form.obtained,
            result
        ))
        testNumber = testNumber + 1
    end
    print("<< END TEST SECTION\n")
end

doTest(modify, "modifyTest.lua")
doTest(match, "matchTest.lua")
doTest(iterator, "iteratorTest.lua")
