local M = {}

M.options = {
  poll_interval = 2000,   -- check Spotify every 2 seconds (ms)
  position = 'bottom-left',  -- options: 'top-right', 'top-left', 'bottom-right', 'bottom-left'
  window = {
    width = 30,
    expanded_height = 16, -- tall: album art + track info
    compact_height = 3,   -- slim: name, artist, progress/time
    expand_duration = 1500, -- ms before shrinking down
    expand_on_track_change = true, -- show tall view when song changes
  },
    highlights = {
    background = 'NormalFloat', -- control window background
    border = 'FloatBorder', -- control border color
    text = 'NormalFloat', -- control text color
  }
}

function M.apply(opts)
  M.options = vim.tbl_deep_extend('force', M.options, opts or {})
end

return M
