{
  # Import all your configuration modules here
   imports = [ 
      ./globals.nix
      ./options.nix
      ./plugins.nix

      ./modules/comment.nix

      ./modules/extra_colorschemes.nix
      ./modules/colorscheme.nix

      ./modules/web-devicons.nix
      ./modules/bufferline.nix
      ./modules/neotree.nix

      ./modules/transparent.nix
      
      ./modules/autopairs.nix
      ./modules/telescope.nix
      ./modules/lint.nix
      ./modules/lsp.nix
      ./modules/treesitter.nix
      ./modules/gitsigns.nix
      ./modules/lualine.nix
      ./modules/cmp.nix

      # ./keymapping.nix # dont enable this, this exists as a list that is imported directly into which-key
      # ./modules/mapleader.nix
      # ./modules/which-key.nix
      ./modules/keybind/which-key.nix
      # ./modules/keymap-loader.nix
      ./modules/keybind/keymap-loader.nix.nix

      # ./modules/ui_option.nix
      # ./modules/editor_option.nix


   ];

  
}
