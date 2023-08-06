-- Configurations
vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.showmode = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.statusline:append( " %{toupper(g:currentmode[mode()])} " )
vim.opt.statusline:append( "%2*" )
vim.opt.statusline:append( " %F" )
vim.opt.statusline:append( "%=" )
vim.opt.statusline:append( "%R " )
vim.opt.statusline:append( "%M " )
vim.opt.statusline:append( "%Y " )
vim.opt.statusline:append( "%*" )
vim.opt.statusline:append( " %c:" )
vim.opt.statusline:append( "%l/" )
vim.opt.statusline:append( "%L " )
vim.opt.statusline:append( "[%p%%] " )

vim.g.currentmode = {
    t = 'terminal',
    c = 'command',
    n = 'normal',
    i = 'insert',
    R = 'replace',
    v = 'v-sel',
    V = 'v-line',
}

-- Netrw configurations
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_hide = 0
vim.g.netrw_wiw = 20
vim.g.netrw_bufsettings = 'noma nomod nonu nobl nowrap ro rnu'

-- Auto commands
vim.api.nvim_create_autocmd({ 'InsertEnter' }, {
    pattern = "*",
    command = "hi Statusline ctermfg = yellow"
})

vim.api.nvim_create_autocmd({ 'InsertLeave' }, {
    pattern = "*",
    command = "hi Statusline ctermfg = blue"
})

vim.api.nvim_create_autocmd({ 'TermEnter' }, {
    pattern = "*",
    command = "hi Statusline ctermfg = green"
})

vim.api.nvim_create_autocmd({ 'TermLeave' }, {
    pattern = "*",
    command = "hi Statusline ctermfg = blue"
})

-- Custom keybindings
vim.keymap.set( 'n', ',b', "<cmd>Hexplore<cr>" )
vim.keymap.set( 'n', ', ', "<cmd>split<cr>" )
vim.keymap.set( 'n', ',x', "<cmd>term<cr>" )
vim.keymap.set( 'n', ',s', "<cmd>set spell<cr>" )
vim.keymap.set( 'n', ',a', "<cmd>set nospell<cr>" )

-- Colors and styling
vim.cmd.hi({ 'Comment', "cterm = italic" })
vim.cmd.hi({ 'Directory', "cterm = bold", "ctermfg = blue" })
vim.cmd.hi({ 'Statusline', "ctermfg = blue" })
vim.cmd.hi({ 'User2', "ctermbg = darkgray" })
vim.cmd.hi({ 'StatuslineNC', "cterm = reverse,bold", "ctermfg = darkgray", "ctermbg = darkgray" })
vim.cmd.hi({ 'Cursorline', "cterm = none" })
vim.cmd.hi({ 'CursorlineNR', "cterm = bold", "ctermfg = blue" })
vim.cmd.hi({ 'LineNR', "ctermfg = gray" })
