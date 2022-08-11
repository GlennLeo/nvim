local status_ok, config = pcall(require, "mini.surround")
if not status_ok then
  return
end

config.setup({
  -- Add custom surroundings to be used on top of builtin ones. For more
  -- information with examples, see `:h MiniSurround.config`.
  custom_surroundings = nil,

  -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
  highlight_duration = 500,

  -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    add = 'msa', -- Add surrounding in Normal and Visual modes
    delete = 'msd', -- Delete surrounding
    find = 'msf', -- Find surrounding (to the right)
    find_left = 'msF', -- Find surrounding (to the left)
    highlight = 'msh', -- Highlight surrounding
    replace = 'msr', -- Replace surrounding
    update_n_lines = 'msn', -- Update `n_lines`
  },

  -- Number of lines within which surrounding is searched
  n_lines = 20,

  -- How to search for surrounding (first inside current line, then inside
  -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
  -- 'cover_or_nearest'. For more details, see `:h MiniSurround.config`.
  search_method = 'cover',
})
