" Maintainer: Aaron Hinojosa (github@67hz)
" Version: 1.3.4

set background=dark
set t_Co=256

" FIXME leading zeros should not be ignored
fu g:ToColor(guifg, ctermfg, guibg='NONE', ctermbg = 'NONE')
  if (a:guibg != 'NONE')
    guibg = '#' . a:guibg
  endif

  " todo use :h mathchaddpos instead
  return 'guifg=#' . a:guifg . ' guibg=' . a:guibg . ' gui=NONE ctermfg=' . a:ctermfg . ' ctermbg=' . a:ctermbg . ' cterm=NONE'
endfu

let g:colors_name = 'cobra'
let bgcolor = &background
highlight clear SignColumn

let colors = #{
      \ Black: [585858, 240],
      \ JetBlack: [080808, 237],
      \}

let Black = g:ToColor(585858, 240)
"let JetBlack = g:ToColor(080808, 237) breaks from leading zero
let JetBlack = "guifg=#080808 guibg=NONE gui=NONE ctermfg=237 ctermbg=NONE cterm=NONE"
let Lime = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=119 ctermbg=NONE cterm=NONE"
let Peach = "guifg=#ffd787 guibg=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE"
let LightPeach = "guifg=#ffffaf guibg=NONE gui=NONE ctermfg=229 ctermbg=NONE cterm=NONE"
let LightestPeach = "guifg=#ffffd7 guibg=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE"
let Red = "guifg=#ff5f5f guibg=NONE gui=NONE ctermfg=203 ctermbg=NONE cterm=NONE"
let CamoPurple = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE"
let CamoPurpleDark = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=91 ctermbg=NONE cterm=NONE"
let CamoPurpleFaded = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=61 ctermbg=NONE cterm=NONE"
let CamoHotPinkDark = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=89 ctermbg=NONE cterm=NONE"
let CamoSilver = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE"
let CamoLightSilver = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE"
let CamoBrown = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=94 ctermbg=NONE cterm=NONE"
let CamoOrange = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE"
let Brown = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=178 ctermbg=NONE cterm=NONE"
let FadedOrange = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE"
let Orange = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE"
let NeonOrange = "guifg=#ffaf00 guibg=NONE gui=NONE ctermfg=226 ctermbg=NONE cterm=NONE"
let Green = "guifg=#87af5f guibg=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE"
let SpotGreen = "guifg=#00af5f guibg=NONE gui=NONE ctermfg=35 ctermbg=NONE cterm=NONE"
let Gray = "guifg=#bcbcbc guibg=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE"
let Blue = "guifg=#5fafdf guibg=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE"
let DarkBlue = "guifg=#005fff guibg=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE"
let Pink = "guifg=#ff5faf guibg=NONE gui=NONE ctermfg=205 ctermbg=NONE cterm=NONE"
let HotPink = "guifg=#ff00ff guibg=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE"
let DarkPurple = "guibg=NONE gui=NONE ctermfg=55 ctermbg=NONE cterm=NONE"
let MintBlue = "guibg=NONE gui=NONE ctermfg=51 ctermbg=NONE cterm=NONE"
let FadedRed = "guibg=NONE gui=NONE ctermfg=52 ctermbg=NONE cterm=NONE"
let BrightWhiteOnRed = "guibg=#ff0000 gui=NONE ctermfg=231 ctermbg=196 cterm=NONE"
let BrightRed = "guibg=#ff0000 gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE"
let Purple = "guifg=#af87ff guibg=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE"
let HotPurple = "guibg=#000000 gui=NONE ctermfg=99 ctermbg=NONE cterm=NONE"
let CoolPurple = "guibg=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE"
let Crimson = "guibg=NONE gui=NONE ctermfg=89 ctermbg=NONE cterm=NONE"
let CoolBlue = "guibg=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE"
let MidBlue = "guibg=NONE gui=NONE ctermfg=33 ctermbg=NONE cterm=NONE"
let LightBlue = "guibg=NONE gui=NONE ctermfg=33 ctermbg=NONE cterm=NONE"
let DarkRed = "guibg=NONE gui=NONE ctermfg=124 ctermbg=NONE cterm=NONE"
let CoolRed = "guibg=NONE gui=NONE ctermfg=210 ctermbg=NONE cterm=NONE"
let DarkTeal = "guibg=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE"
let Teal = "guibg=NONE gui=NONE ctermfg=29 ctermbg=NONE cterm=NONE"
let FadedTeal = "guibg=NONE gui=NONE ctermfg=159 ctermbg=NONE cterm=NONE"

let LightTeal = "guibg=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE"
let DarkGreen = "guibg=NONE gui=NONE ctermfg=22 ctermbg=NONE cterm=NONE"
let Silver = "guifg=#8a8a8a guibg=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE"
let SilverWhite = "guifg=#dadada guibg=NONE gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE"
let LightSilver = "guibg=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE"
let White = "guifg=#eeeeee guibg=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE"
let Yellow= "guifg=#dd7f00 guibg=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE"
let CoolYellow = "guibg=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE"

"""
" Now set 'em
""
exe "hi Boolean "         .CamoHotPinkDark
exe "hi Character "       .Green
exe "hi Debug "           .Black
exe "hi Define "          .Purple
exe "hi Exception "       .Peach
exe "hi Float "           .Pink
exe "hi Identifier "      .LightestPeach
exe "hi Ignore "          .Blue
exe "hi Include "         .CamoPurpleFaded
exe "hi Keyword "         .Blue
exe "hi Label "           .LightPeach
exe "hi LineNr "          .JetBlack
exe "hi CursorLineNr "    .CamoPurpleDark
exe "hi Macro "           .Peach
exe "hi Normal "          .LightPeach
exe "hi Noise "           .White
exe "hi Operator "        .Peach
exe "hi PreCondit "       .Purple
exe "hi PreProc "         .Purple
exe "hi Repeat "          .LightTeal
exe "hi Special "         .CamoPurpleDark
exe "hi SpecialChar "     .Pink
exe "hi SpecialComment "  .CamoBrown
exe "hi Comment "         .CamoSilver

" ex: const
exe "hi StorageClass "    .CamoOrange

exe "hi Structure "       .HotPink

" ex: numeric_limits, vector, ...
exe "hi TypeDef "         .CamoPurple

exe "hi Type "            .SilverWhite

exe "hi Function "        .Green

exe "hi Constant "        .FadedTeal

exe "hi Modifier "        .Yellow

exe "hi Conditional "     .LightTeal

exe "hi Delimiter "       .LightestPeach

" return, lexical_cast, dox briefs
exe "hi Statement "       .CamoPurple

exe "hi Number "          .Green

exe "hi String "          .CoolPurple

exe "hi Tag "             .LightestPeach
exe "hi Todo "            .SilverWhite

" Error color
exe "hi SpellBad "        .Red

hi CursorLine   guifg=NONE      guibg=#1c1c1c   gui=NONE      ctermfg=NONE      ctermbg=234       cterm=NONE
hi ColorColumn  guifg=#ff0000   guibg=#1c1c1c   gui=NONE      ctermfg=203       ctermbg=234       cterm=NONE
hi Visual guifg=NONE guibg=#ffffff ctermfg=234 ctermbg=255

hi Underlined   guifg=NONE      guibg=NONE      gui=underline ctermfg=NONE      ctermbg=NONE      cterm=underline

" IndentGuides
exe "hi IndentGuidesOdd " .DarkBlue
exe "hi IndentGuidesOdd " .LightestPeach

hi Directory guifg=#ffff87 ctermfg=57

" set tab colors
hi TabLineSel ctermfg=red ctermbg=black
hi Title ctermfg=LightBlue ctermbg=none

" status line
hi StatusLine ctermfg=236 ctermbg=51
hi StatusLineNC ctermfg=236 ctermbg=99
hi VertSplit ctermfg=black ctermbg=black

" Popup menu
hi Pmenu ctermfg=36 ctermbg=236
hi PmenuSbar ctermfg=lightblue ctermbg=none
hi PmenuThumb ctermfg=red ctermbg=black
hi PmenuSel ctermbg=lightblue ctermfg=black

" Code Folding
hi Folded ctermbg=black  ctermfg=235

" YCM
exe "hi YcmErrorSign " .Red
exe "hi YcmErrorSection " .CamoLightSilver
exe "hi YcmWarningSection " .CoolRed
exe "hi WarningSign " .Yellow
exe "hi YcmErrorLine " .Silver
exe "hi YcmWarningLine " .HotPurple
exe "hi ycmwarningline ctermbg=NONE"

fu g:CobraLightBg()
  " set lighter gray bg
  exe "hi Normal ctermbg=235"
endfu

fu g:CobraRestoreBg()
  exe "hi Normal ctermbg=NONE"
endfu

set cursorline

" vim:foldmethod=marker:foldlevel=0

"""
" LICENSE
" Same as Vim. See ':h license'
"""
