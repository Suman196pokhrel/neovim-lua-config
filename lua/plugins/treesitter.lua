return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config= function()
        vim.keymap.set('n','<C-n>',':Neotree filesystem reveal left<CR>',{})
    end
}
