{
  # Import all your configuration modules here
   imports = [ 
      ./globals.nix
      ./options.nix
      ./plugins.nix

      ./modules/comment.nix

      # ./modules/extra_colorschemes.nix
      # ./modules/colorscheme.nix
      ./modules/colorscheme

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

      ./modules/keybind
      # ./modules/keybind/which-key.nix
      # ./modules/keybind/keymap-loader.nix

   ];

  
}
