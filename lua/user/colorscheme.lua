vim.cmd [[
try
  colorscheme cobalt2 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
