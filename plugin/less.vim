if exists('g:loaded_less') || v:version < 700
  finish
endif

call submode#enter_with('less', 'n', '', '<C-f>', '<C-f>')
call submode#enter_with('less', 'n', '', '<C-b>', '<C-b>')
call submode#leave_with('less', 'n', '', '<Esc>')
call submode#map('less', 'n', '', '<Space>', '<C-f>')
call submode#map('less', 'n', '', 'j', '<C-f>')
call submode#map('less', 'n', '', 'k', '<C-b>')

let g:loaded_less = 1
