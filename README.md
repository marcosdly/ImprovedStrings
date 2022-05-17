# Improved Strings

### Features

1. A lot of _new_ awesome methods to interact with strings.
2. All the built-in Lua methods, but with more recognizable names.
3. Good documentation.
4. Most methods are written in a single Lua file, so you can copy them into closed Lua environments.

### Details

1. Some "new" methods (like `replace()` and `replaceAll()`) act like the some built-in ones (e.g. `string.gsub()`), but are not categorized as such because they, in fact, have their functionality modified in some way or split into multiple method with specific uses (for better code readability).

## TODO

### From built-in

- [ ] `toLowerCase()` -- `string.lower()`
- [ ] `toUpperCase()` -- `string.upper()`
- [ ] `reverse()` -- `string.reverse()`
- [ ] `repeat()` -- `string.rep()`
- [ ] `slice()` -- `string.sub()`
- [ ] `concat()` -- `..`

### New ones

- [ ] `charAt()`
- [ ] `charCodeAt()`
- [ ] `charCodeIteratorFrom()`
- [ ] `includes()`
- [ ] `indexOf()`
- [ ] `lastIndexOf()`
- [ ] `endsWith()`
- [ ] `startsWith()`
- [ ] `match()`
- [ ] `matchAll()`
- [ ] `paddingEnd()`
- [ ] `paddingStart()`
- [ ] `split()`
- [ ] `trim()`
- [ ] `trimEnd()`
- [ ] `trimStart()`
- [ ] `replace()`
- [ ] `replaceAll()`