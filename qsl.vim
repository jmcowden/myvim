" Vim syntax file
" Language: QSL
" Maintainer: Jason Cowden
" Latest Revision: January 2017

if exists("b:current_syntax")
    finish
endif


syn region qslBlock start="{\n\@!" end="}" contains=qslKeyword,qslComment,qslString,qslAttr,qslFunc,qslLogic
syn region qslInterlude start="^{\n" end="^}" contains=qslComment,qslString,qslFunc,qslAttr,qslLogic
syn region qslVars start="\[" end="\]" contains=qslKeyword,qslComment,qslString,qslAttr,qslFunc,qslLogic
syn region qslVars start="<" end=">" contains=qslKeyword,qslComment,qslString,qslAttr,qslFunc,qslLogic

syn keyword qslKeyword above autoadvance below chartext color colorpicker colorder colrank cols colsum contained
syn keyword qslKeyword columns default_text displaymax dk dk_text dont_know dropdown dyngrid end contained
syn keyword qslKeyword exit extracss extrajs fixed goto hide_progress input_width contained
syn keyword qslKeyword language left max maxlength module multiple nav_back nav_next offset contained
syn keyword qslKeyword order page placement popup contained
syn keyword qslKeyword position prompt random ranges rank ranktitle required right roworder rowrank contained
syn keyword qslKeyword rows rowsample rowsum rule sample scale show_value single_required slots  contained
syn keyword qslKeyword splitlabels state status survey text thermometer timeout topic varlabel contained
syn keyword qslKeyword widget_all_required width wrap_length xor contained
syn keyword qslLogic for if or in not and elif else contained

" variable attributes
syn match qslAttr "\.\(code\|text\|value\|response_text\)" contained

" gryphon object keywords
syn match qslAttr "\<gryphon\>\.\(visa\|os\|browser\|cookie_id\|cookied\|perc_skipped\|num_skipped\|num_asked\|ip\)\+" contained

" panman object keywords
syn match qslAttr "\<panman\>\.\(qualified\|username\|pixel\|pmxid\|email\|is_panelist\|source\)\+" contained

" gryphon object methods
syn match qslFunc "\<gryphon\>\.\(num_skipped_except\|headers\|contained\)\+" contained

" panman object methods
syn match qslFunc "\<panman\>\.\(referral_parameters\|grant\|took_survey\|assign_treatment\)\+" contained

" array methods 
syn keyword qslFunc count append find has_any pop split strip contained 

" functions
syn keyword qslFunc random assign_treatment best_match bottom_n counter_increment counter_value date decimal fuzzy_matcher contained
syn keyword qslFunc get_page_timing int islice len load_csv pow random random_shuffle random_shuffles contained
syn keyword qslFunc random_sample random_samples rankings set slice sqrt str temp top_n unique contained

" multi-word keywords
syn match qslKeyword "\<single\>\( \|-colorpicker\)*" contained
syn match qslKeyword "\<grid\>\( \|-open\|-check\)*" contained
syn match qslKeyword "\<pdl\>\( \|-update\|-ask\)*" contained
syn match qslKeyword "\<open\>\( \|-int\(range\)*\|-real\(range\)*\)*" contained

syn region qslString start='"' end='"' contained

syn match qslComment "#.*$"

" can't quite make this work how i'd like it to
" syn region qslVarspace start="\[" end=" " contains=qslVarname
" syn match qslVarname "[a-zA-Z]\+[_0-9]*" contained

let b:current_syntax = "qsl"
hi def link qslKeyword      Statement
hi def link qslAttr         Statement
hi def link qslLogic        Statement
hi def link qslComment      Comment
hi def link qslString       String
hi def link qslFunc         Function
"hi def link qslVarname      Number

