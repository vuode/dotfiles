local options = {
-- Side panel

  number = true, -- Display line number
  relativenumber = true, -- Display numbers relative to current line
  signcolumn = 'yes', -- Display column for error indicators

-- Indentation

  autoindent = true, -- Use indentation from the file
  expandtab = true, -- Insert spaces instead of tab
  shiftwidth = 2, -- Use 2 spaces as indent
  tabstop = 2, -- Display \t as 2 chars

-- Replace invisible chars

  list = true, -- Custom chars for symbols
  listchars = 'tab:|·,trail:·,nbsp:⎵', -- Define chars for list

-- System

  clipboard = 'unnamed', -- Use system clipboard (depend on wl-clipboard)
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

