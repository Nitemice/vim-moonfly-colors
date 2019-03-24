" Dark Vim/Neovim color scheme.
"
" Note: Inspiration taken from: monokai, sunburst xoria256 and One Dark themes.
"
" URL:     github.com/bluz71/vim-moonfly-colors
" License: MIT (https://opensource.org/licenses/MIT)

highlight clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="moonfly"

" By default, highlight cursor line numbers.
" By default, don't color the cursor.
" By default, use the moonfly color palette in the `:terminal`.
" By default, don't underline or highlight matching parentheses.
let g:moonflyCursorLineNr   = get(g:, "moonflyCursorLineNr", 1)
let g:moonflyCursorColor    = get(g:, "moonflyCursorColor", 0)
let g:moonflyTerminalColors = get(g:, "moonflyTerminalColors", 1)
let g:moonflyMatchParen     = get(g:, "moonflyMatchParen", "none")

let s:black       = { "hex": "#080808", "term": 232 }
let s:white       = { "hex": "#c6c6c6", "term": 251 }
let s:grey0       = { "hex": "#373c40", "term": 0 }
let s:grey249     = { "hex": "#b2b2b2", "term": 249 }
let s:grey247     = { "hex": "#9e9e9e", "term": 247 }
let s:grey237     = { "hex": "#3a3a3a", "term": 237 }
let s:grey236     = { "hex": "#303030", "term": 236 }
let s:grey235     = { "hex": "#262626", "term": 235 }
let s:grey234     = { "hex": "#1c1c1c", "term": 234 }
let s:grey233     = { "hex": "#121212", "term": 233 }
let s:wheat       = { "hex": "#cfcfb0", "term": 11 }
let s:khaki       = { "hex": "#e3c78a", "term": 3 }
let s:orange      = { "hex": "#de935f", "term": 7 }
let s:coral       = { "hex": "#f09479", "term": 8 }
let s:light_green = { "hex": "#85dc85", "term": 14 }
let s:green       = { "hex": "#8cc85f", "term": 2 }
let s:emerald     = { "hex": "#42cf89", "term": 10 }
let s:blue        = { "hex": "#80a0ff", "term": 4 }
let s:blue111     = { "hex": "#87afff", "term": 111 }
let s:light_blue  = { "hex": "#78c2ff", "term": 12 }
let s:turquoise   = { "hex": "#7ee0ce", "term": 6 }
let s:purple      = { "hex": "#ae81ff", "term": 13 }
let s:violet      = { "hex": "#e2637f", "term": 15 }
let s:magenta     = { "hex": "#ce76e8", "term": 5 }
let s:crimson     = { "hex": "#f74782", "term": 9 }
let s:red         = { "hex": "#ff5454", "term": 1 }

" By default, set the background to 'black'.
" By default, highlight cursor line numbers in 'blue'.
let s:bg         = get(g:, "moonflyBackgroundColor", s:black)
let s:cursorline = get(g:, "moonflyCursorLineColor", s:blue)

" Specify the the colors used by the inbuilt terminal of Neovim and Vim.
if g:moonflyTerminalColors
    if has("nvim")
        let g:terminal_color_0  = s:grey0.hex
        let g:terminal_color_1  = s:red.hex
        let g:terminal_color_2  = s:green.hex
        let g:terminal_color_3  = s:khaki.hex
        let g:terminal_color_4  = s:blue.hex
        let g:terminal_color_5  = s:magenta.hex
        let g:terminal_color_6  = s:turquoise.hex
        let g:terminal_color_7  = s:orange.hex
        let g:terminal_color_8  = s:coral.hex
        let g:terminal_color_9  = s:crimson.hex
        let g:terminal_color_10 = s:emerald.hex
        let g:terminal_color_11 = s:wheat.hex
        let g:terminal_color_12 = s:light_blue.hex
        let g:terminal_color_13 = s:purple.hex
        let g:terminal_color_14 = s:light_green.hex
        let g:terminal_color_15 = s:violet.hex
    else
        let g:terminal_ansi_colors = [
                \ s:grey0.hex, s:red.hex, s:green.hex, s:khaki.hex,
                \ s:blue.hex, s:magenta.hex, s:turquoise.hex, s:orange.hex,
                \ s:coral.hex, s:crimson.hex, s:emerald.hex, s:wheat.hex,
                \ s:light_blue.hex, s:purple.hex, s:light_green.hex, s:violet.hex
                \]
    endif
endif

" Background and text.
exec "highlight Normal ctermbg=" . s:bg.term . " guibg=" . s:bg.hex . "  ctermfg=" . s:white.term . " guifg=" . s:white.hex

" Color of mode text, -- INSERT --
exec "highlight ModeMsg ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex . " gui=none"

" Comments.
exec "highlight Comment ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex

" Functions.
exec "highlight Function ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex

" Strings.
exec "highlight String ctermfg=" . s:wheat.term . " guifg=" . s:wheat.hex

" Identifiers.
exec "highlight Identifier ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex

" Color of titles, e.g in HTML files and Tagbar.
exec "highlight Title ctermfg=" . s:orange.term . " guifg=" . s:orange.hex . " gui=none"

" const, static.
exec "highlight StorageClass ctermfg=" . s:coral.term . " guifg=" . s:coral.hex

" void, intptr_t.
exec "highlight Type ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex . " gui=none"

" Numbers.
exec "highlight Constant ctermfg=" . s:purple.term . " guifg=" . s:purple.hex

" ifdef/endif.
exec "highlight PreProc ctermfg=" . s:violet.term . " guifg=" . s:violet.hex

" Status, split and tab lines.
exec "highlight StatusLine ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:white.term . " guifg=" . s:white.hex . " cterm=none gui=none"
exec "highlight StatusLineNC ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex . " cterm=none gui=none"
exec "highlight VertSplit ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:grey236.term . " guifg=" . s:grey236.hex
exec "highlight Tabline ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex . " cterm=none gui=none"
exec "highlight TablineSel ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:blue.term . " guifg=" . s:blue.hex . " cterm=none gui=none"
exec "highlight TablineFill ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:grey236.term . " guifg=" . s:grey236.hex
exec "highlight StatusLineTerm ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:white.term . " guifg=" . s:white.hex . " cterm=none gui=none"
exec "highlight StatusLineTermNC ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex . " cterm=none gui=none"

" case in switch statement.
exec "highlight Label ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex

" end-of-line '$', end-of-file '~'
exec "highlight NonText ctermfg=" . s:orange.term . " guifg=" . s:orange.hex . " gui=none"

" sizeof
exec "highlight Operator ctermfg=" . s:violet.term . " guifg=" . s:violet.hex

" for, while.
exec "highlight Repeat ctermfg=" . s:orange.term . " guifg=" . s:orange.hex

" Search.
exec "highlight Search cterm=reverse gui=reverse ctermbg=bg guibg=bg ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight IncSearch ctermbg=bg guibg=bg ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex

" '\n' sequences.
exec "highlight Special ctermfg=" . s:violet.term . " guifg=" . s:violet.hex

" if, else.
exec "highlight Statement ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex . " gui=none"

" Visual selection.
exec "highlight Visual ctermbg=" . s:grey0.term . " guibg=" . s:grey0.hex
exec "highlight VisualNOS ctermbg=" . s:grey0.term . " guibg=" . s:grey0.hex . " ctermfg=fg guifg=fg cterm=none gui=none"
exec "highlight VisualInDiff ctermbg=" . s:grey0.term . " guibg=" . s:grey0.hex . " ctermfg=" . s:white.term . " guifg=" . s:white.hex

" Exceptions.
exec "highlight Exception ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex

" Errors, warnings and s:whitespace-eol.
exec "highlight Error ctermbg=bg guibg=bg ctermfg=" . s:red.term . " guifg=" . s:red.hex
exec "highlight ErrorMsg ctermbg=bg guibg=bg ctermfg=" . s:red.term . " guifg=" . s:red.hex
exec "highlight WarningMsg ctermbg=bg guibg=bg ctermfg=" . s:orange.term . " guifg=" . s:orange.hex

" struct, union, enum, typedef.
exec "highlight Structure ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex

" Auto-text-completion menu.
exec "highlight Pmenu ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=fg guifg=fg"
exec "highlight PmenuSel ctermbg=" . s:green.term . " guibg=" . s:green.hex . " ctermfg=" . s:grey236.term . " guifg=" . s:grey236.hex
exec "highlight PmenuThumb ctermbg=" . s:khaki.term . " guibg=" . s:khaki.hex
exec "highlight WildMenu ctermbg=" . s:green.term . " guibg=" . s:green.hex . " ctermfg=" . s:grey236.term . " guifg=" . s:grey236.hex

" Spelling errors.
exec "highlight SpellBad ctermbg=bg ctermfg=" . s:red.term . " cterm=underline guibg=bg guifg=" . s:red.hex . " gui=underline guisp=" . s:red.hex
exec "highlight SpellCap ctermbg=bg ctermfg=" . s:blue.term . " cterm=underline guibg=bg guifg=" . s:blue.hex . " gui=underline guisp=" . s:blue.hex
exec "highlight SpellRare ctermbg=bg ctermfg=" . s:violet.term . " cterm=underline guibg=bg guifg=" . s:violet.hex . " gui=underline guisp=" . s:violet.hex
exec "highlight SpellLocal ctermbg=bg ctermfg=" . s:light_blue.term . " cterm=underline guibg=bg guifg=" . s:light_blue.hex . " gui=underline guisp=" . s:light_blue.hex

" Misc.
exec "highlight Question ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex . " gui=none"
exec "highlight MoreMsg ctermfg=" . s:red.term . " guifg=" . s:red.hex . " gui=none"
exec "highlight LineNr ctermbg=" . s:grey234.term . " guibg=" . s:grey234.hex . " ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
if g:moonflyCursorColor
    exec "highlight Cursor ctermfg=bg ctermbg=" . s:blue.term . " guifg=bg guibg=" . s:blue.hex
else
    exec "highlight Cursor ctermfg=bg ctermbg=" . s:grey247.term . " guifg=bg guibg=" . s:grey247.hex
endif
exec "highlight lCursor ctermfg=bg ctermbg=" . s:grey247.term . " guifg=bg guibg=" . s:grey247.hex
if g:moonflyCursorLineNr
    exec "highlight CursorLineNr ctermbg=" . s:cursorline.term . " guibg=" . s:cursorline.hex . " ctermfg=" . s:blue.term . " guifg=" . s:blue.hex . " gui=none"
else
    exec "highlight CursorLineNr ctermbg=" . s:grey234.term . " guibg=" . s:grey234.hex . " ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex . " gui=none"
endif
exec "highlight CursorColumn ctermbg=" . s:grey234.term . " guibg=" . s:grey234.hex . " cterm=none"
exec "highlight CursorLine ctermbg=" . s:grey234.term . " guibg=" . s:grey234.hex . " cterm=none"
exec "highlight Folded ctermbg=" . s:grey234.term . " guibg=" . s:grey234.hex . " ctermfg=" . s:light_green.term . " guifg=". s:light_green.hex
exec "highlight FoldColumn ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight SignColumn ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight Todo ctermbg=" . s:khaki.term . " guibg=" . s:khaki.hex . " ctermfg=bg guifg=bg"
exec "highlight SpecialKey ctermbg=bg guibg=bg ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
if g:moonflyMatchParen =~ "both"
    exec "highlight MatchParen ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex . " cterm=underline gui=underline"
elseif g:moonflyMatchParen =~ "underline"
    exec "highlight MatchParen ctermbg=bg guibg=bg ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex . " cterm=underline gui=underline"
elseif g:moonflyMatchParen =~ "highlight"
    exec "highlight MatchParen ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
else
    exec "highlight MatchParen ctermbg=bg guibg=bg ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
endif
exec "highlight Ignore ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight Underlined ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex . " cterm=none gui=none"
exec "highlight QuickFixLine ctermbg=" . s:grey237.term . " guibg=" . s:grey237.hex . " cterm=none"
exec "highlight Delimiter ctermfg=" . s:wheat.term . " guifg=" . s:wheat.hex

" Neovim only highlight groups.
exec "highlight Whitespace ctermfg=" . s:grey235.term . " guifg=" . s:grey235.hex
exec "highlight TermCursor ctermbg=" . s:grey247.term . " guibg=" . s:grey247.hex . "  ctermfg=bg guifg=bg cterm=none gui=none"

" Color column (after line 80).
exec "highlight ColorColumn ctermbg=" . s:grey233.term . " guibg=" . s:grey233.hex

" Conceal color, as used by indentLine plugin.
exec "highlight Conceal ctermbg=bg guibg=bg ctermfg=" . s:grey235.term . " guifg=" . s:grey235.hex

" C/C++
"
" goto, break, return, continue.
exec "highlight cStatement ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
" new, delete, this, using.
exec "highlight cppStatement ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
" [static/const/dynamic]_cast.
exec "highlight cppCast ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
" public, private.
exec "highlight cppAccess ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
" operator.
exec "highlight cppOperator ctermfg=" . s:green.term . " guifg=" . s:green.hex
" inline, virtual, explicit, export, bool.
exec "highlight cppType ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
" class, typename, template, namespace.
exec "highlight cppStructure ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
" true or false.
exec "highlight cppBoolean ctermfg=" . s:purple.term . " guifg=" . s:purple.hex

" Shell scripts
exec "highlight shStatement ctermfg=fg guifg=fg"
exec "highlight shCommandSub ctermfg=fg guifg=fg"
exec "highlight shSet ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight shShellVariables ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight shVariable ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight shAlias ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight shSetList ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex

" Python
exec "highlight pythonBuiltin ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight pythonClassVar ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight pythonCoding ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight pythonException ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight pythonImport ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight pythonOperator ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight pythonRepeat ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight pythonRun ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight pythonStatement ctermfg=" . s:magenta.term . " guifg=" s:magenta.hex

" Ruby
exec "highlight erubyDelimiter ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight rspecGroupMethods ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight rubyAccess ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight rubyAttribute ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight rubyBlockParameter ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight rubyBoolean ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight rubyCallback ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight rubyClass ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight rubyControl ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight rubyDefine ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight rubyEntities ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight rubyException ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight rubyExceptional ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight rubyInstanceVariable ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight rubyInterpolationDelimiter ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight rubyMacro ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight rubyModule ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight rubyPseudoVariable ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight rubyResponse ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight rubyRoute ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight rubySharpBang ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight rubyStringDelimiter ctermfg=" . s:wheat.term . " guifg=" . s:wheat.hex

" Crystal
exec "highlight crystalAccess ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight crystalAttribute ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight crystalBlockParameter ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight crystalBoolean ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight crystalClass ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight crystalControl ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight crystalDefine ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight crystalException ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight crystalExceptional ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight crystalInstanceVariable ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight crystalModule ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight crystalPseudoVariable ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight crystalSharpBang ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight crystalStringDelimiter ctermfg=" . s:wheat.term . " guifg=" . s:wheat.hex

" Elixir
exec "highlight eelixirDelimiter ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight elixirBlockDefinition ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight elixirBoolean ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight elixirDefine ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight elixirDocTest ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight elixirExUnitAssert ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight elixirExUnitMacro ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight elixirKernelFunction ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight elixirKeyword ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight elixirModuleDefine ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight elixirPrivateDefine ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight elixirStringDelimiter ctermfg=" . s:wheat.term . " guifg=" . s:wheat.hex
exec "highlight elixirVariable ctermfg=" . s:coral.term . " guifg=" . s:coral.hex

" JavaScript, 'pangloss/vim-javascript' plugin
exec "highlight jsClassDefinition ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight jsClassKeyword ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight jsFrom ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight jsFuncBlock ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight jsFuncCall ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight jsFunction ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight jsGlobalObjects ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight jsModuleAs ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight jsObjectKey ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight jsObjectValue ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight jsOperator ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight jsStorageClass ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight jsTemplateBraces ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight jsTemplateExpression ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight jsThis ctermfg=" . s:green.term . " guifg=" . s:green.hex

" CoffeeScript
exec "highlight coffeeBoolean ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight coffeeException ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight coffeeGlobal ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
exec "highlight coffeeKeyword ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight coffeeObjAssign ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight coffeeSpecialIdent ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight coffeeSpecialVar ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight coffeeStatement ctermfg=" . s:coral.term . " guifg=" . s:coral.hex

" TypeScript
exec "highlight typescriptBraces ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight typescriptDOMObjects ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight typescriptExceptions ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight typescriptFuncKeyword ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight typescriptGlobalObjects ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight typescriptIdentifier ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight typescriptNull ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight typescriptOpSymbols ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight typescriptOperator ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight typescriptParens ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight typescriptReserved ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight typescriptStorageClass ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex

" PureScript
exec "highlight purescriptClass ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight purescriptModuleParams ctermfg=" . s:coral.term . " guifg=" . s:coral.hex

" Go
exec "highlight goBuiltins ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight goConditional ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight goDeclaration ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight goDeclType ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight goDirective ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight goFloats ctermfg=" . s:purple.term . " guifg=" . s:purple.hex
exec "highlight goFunction ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight goFunctionCall ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight goImport ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight goLabel ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight goMethod ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight goMethodCall ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight goPackage ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight goRepeat ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight goSignedInts ctermfg=" . s:purple.term . " guifg=" . s:purple.hex
exec "highlight goStatement ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight goStruct ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight goStructDef ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight goUnsignedInts ctermfg=" . s:purple.term . " guifg=" . s:purple.hex

" Rust
exec "highlight rustCharacterInvalid ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight rustCharacterInvalidUnicode ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight rustCommentBlockDoc ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight rustCommentBlockDocError ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight rustCommentLineDoc ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight rustCommentLineDocError ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight rustConstant ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight rustEscapeError ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight rustFuncName ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight rustIdentifier ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight rustInvalidBareKeyword ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight rustKeyword ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight rustLifetime ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight rustMacro ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight rustMacroVariable ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight rustModPath ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight rustObsoleteExternMod ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight rustObsoleteStorage ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight rustReservedKeyword ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight rustSelf ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight rustStructure ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight rustTrait ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight rustType ctermfg=" . s:coral.term . " guifg=" . s:coral.hex

" Java
exec "highlight javaBraces ctermfg=" . s:white.term . " guifg=" . s:white.hex
exec "highlight javaClassDecl ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight javaCommentTitle ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight javaConstant ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight javaDebug ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight javaMethodDecl ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight javaOperator ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight javaScopeDecl ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight javaStatement ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex

" Clojure
exec "highlight clojureDefine ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight clojureKeyword ctermfg=" . s:purple.term . " guifg=" . s:purple.hex
exec "highlight clojureMacro ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight clojureParen ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight clojureSpecial ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex

" Scala
exec "highlight scalaCapitalWord ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight scalaCommentCodeBlock ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight scalaInstanceDeclaration ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight scalaKeywordModifier ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight scalaSpecial ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex

" Haskell
exec "highlight haskellDecl ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight haskellDeclKeyword ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight haskellIdentifier ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight haskellLet ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight haskellOperators ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight haskellType ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight haskellWhere ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex

" Elm
exec "highlight elmLetBlockDefinition ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight elmTopLevelDecl ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight elmType ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex

" Lua
exec "highlight luaBraces ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight luaBuiltin ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight luaFuncCall ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight luaSpecialTable ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex

" PHP
exec "highlight phpClass ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight phpClasses ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight phpType ctermfg=" . s:blue.term . " guifg=" . s:blue.hex

" HTML
exec "highlight htmlArg ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight htmlBoldItalic ctermbg=" . s:black.term . " guibg=" . s:black.hex . "  ctermfg=" . s:coral.term . " guifg=" . s:coral.hex " cterm=none gui=none"
exec "highlight htmlBoldUnderlineItalic ctermbg=" . s:black.term . " guibg=" . s:black.hex . "  ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight htmlItalic ctermbg=" . s:black.term . " guibg=" . s:black.hex . "  ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex " cterm=none gui=none"
exec "highlight htmlLink ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight htmlEndTag ctermfg=" . s:purple.term . " guifg=" . s:purple.hex
exec "highlight htmlTag ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight htmlTagN ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight htmlTagName ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight htmlUnderlineItalic ctermbg=" . s:black.term . " guibg=" . s:black.hex . "  ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex

" XML
exec "highlight xmlAttrib ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight xmlEndTag ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight xmlTag ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight xmlTagName ctermfg=" . s:blue.term . " guifg=" . s:blue.hex

" Markdown, 'plasticboy/vim-markdown' plugin
exec "highlight mkdLineBreak ctermbg=bg guibg=bg"
exec "highlight mkdListItem ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight mkdURL ctermfg=" . s:purple.term . " guifg=" . s:purple.hex

" vimdiff/nvim -d
exec "highlight DiffAdd ctermbg=" . s:emerald.term . " guibg=" . s:emerald.hex . " ctermfg=bg guifg=bg"
exec "highlight DiffChange ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex
exec "highlight DiffDelete ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex " gui=none"
exec "highlight DiffText ctermbg=" . s:blue.term . " guibg=" . s:blue.hex . " ctermfg=bg guifg=bg gui=none"

" Git commits
exec "highlight gitCommitBranch ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight gitCommitDiscardedFile ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight gitCommitDiscardedType ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight gitCommitHeader ctermfg=" . s:purple.term . " guifg=" . s:purple.hex
exec "highlight gitCommitSelectedFile ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight gitCommitSelectedType ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight gitCommitUntrackedFile ctermfg=" . s:violet.term . " guifg=" . s:violet.hex

" Vimscript
exec "highlight vimBracket ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight vimCommand ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight vimEnvvar ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight vimFuncName ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight vimFuncSID ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight vimFunction ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight vimNotation ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight vimOption ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight vimParenSep ctermfg=" . s:white.term . " guifg=" . s:white.hex
exec "highlight vimSep ctermfg=" . s:white.term . " guifg=" . s:white.hex
exec "highlight vimUserFunc ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex

" Tagbar plugin
exec "highlight TagbarFoldIcon ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight TagbarVisibilityPublic ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight TagbarVisibilityProtected ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight TagbarVisibilityPrivate ctermfg=" . s:light_green.term . " guifg=" . s:light_green.hex
exec "highlight TagbarKind ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex

" NERDTree plugin
exec "highlight NERDTreeClosable ctermfg=" . s:coral.term . " guifg=" . s:coral.hex
exec "highlight NERDTreeCWD ctermfg=" . s:magenta.term . " guifg=" . s:magenta.hex
exec "highlight NERDTreeDir ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight NERDTreeDirSlash ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight NERDTreeExecFile ctermfg=" . s:wheat.term . " guifg=" . s:wheat.hex
exec "highlight NERDTreeFile ctermfg=" . s:white.term . " guifg=" . s:white.hex
exec "highlight NERDTreeGitStatusDirDirty ctermfg=" . s:purple.term . " guifg=" . s:purple.hex
exec "highlight NERDTreeGitStatusModified ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight NERDTreeGitStatusRenamed ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight NERDTreeGitStatusStaged ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight NERDTreeGitStatusUntracked ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight NERDTreeHelp ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight NERDTreeLinkDir ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight NERDTreeLinkFile ctermfg=" . s:blue.term . " guifg=" . s:blue.hex
exec "highlight NERDTreeOpenable ctermfg=" . s:green.term . " guifg=" . s:green.hex
exec "highlight NERDTreePart ctermfg=" . s:grey0.term . " guifg=" . s:grey0.hex
exec "highlight NERDTreePartFile ctermfg=" . s:grey0.term . " guifg=" . s:grey0.hex
exec "highlight NERDTreeUp ctermfg=" . s:coral.term . " guifg=" . s:coral.hex

" Neomake plugin
exec "highlight NeomakeError ctermfg=" . s:red.term . " guifg=" . s:red.hex
exec "highlight NeomakeErrorSign ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:red.term . " guifg=" . s:red.hex
exec "highlight NeomakeWarning ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight NeomakeWarningSign ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight NeomakeInfo ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight NeomakeInfoSign ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight NeomakeMessage ctermfg=" . s:purple.term . " guifg=" . s:purple.hex
exec "highlight NeomakeMessageSign ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:purple.term . " guifg=" . s:purple.hex

" ALE plugin
exec "highlight ALEError ctermfg=" . s:red.term . " guifg=" . s:red.hex
exec "highlight ALEErrorSign ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:red.term . " guifg=" . s:red.hex
exec "highlight ALEWarning ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight ALEWarningSign ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:khaki.term . " guifg=" . s:khaki.hex
exec "highlight ALEInfo ctermfg=" . s:orange.term . " guifg=" . s:orange.hex
exec "highlight ALEInfoSign ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex . " ctermfg=" . s:orange.term . " guifg=" . s:orange.hex

" FZF plugin
exec "highlight fzf1 ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex . " ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex
exec "highlight fzf2 ctermfg=" . s:blue111.term . " guifg=" . s:blue111.hex . " ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex
exec "highlight fzf3 ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex . " ctermbg=" . s:grey236.term . " guibg=" . s:grey236.hex
exec "highlight fzfNormal ctermfg=" . s:grey249.term . " guifg=" . s:grey249.hex
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'Normal'],
  \  'bg+':     ['bg', 'LineNr'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'Type'],
  \  'border':  ['fg', 'CursorLineNr'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'MatchParen'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

" Misc
exec "highlight bufExplorerHelp ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight bufExplorerSortBy ctermfg=" . s:grey247.term . " guifg=" . s:grey247.hex
exec "highlight CleverFDefaultLabel ctermfg=" . s:crimson.term . " guifg=" . s:crimson.hex
exec "highlight CtrlPMatch ctermfg=" . s:purple.term . " guifg=" . s:purple.hex
exec "highlight Directory ctermfg=" . s:emerald.term . " guifg=" . s:emerald.hex
exec "highlight HighlightedyankRegion ctermbg=" . s:grey0.term . " guibg=" . s:grey0.hex
exec "highlight jsonKeyword ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight netrwClassify ctermfg=" . s:violet.term . " guifg=" . s:violet.hex
exec "highlight netrwDir ctermfg=" . s:light_blue.term . " guifg=" . s:light_blue.hex
exec "highlight snipLeadingSpaces ctermbg=bg guibg=bg ctermfg=fg guifg=fg"
exec "highlight tagName ctermfg=" . s:turquoise.term . " guifg=" . s:turquoise.hex
