vim.cmd([[autocmd BufNewFile,BufRead tsconfig.json setlocal filetype=jsonc]])
vim.cmd([[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]])
