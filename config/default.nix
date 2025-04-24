{
  # Import all your configuration modules here
   imports = [ 

      ./plugins.nix

      ./modules/comment.nix

      ./modules/extra_colorschemes.nix
      ./modules/colorscheme.nix

      ./modules/web-devicons.nix
      ./modules/bufferline.nix
      ./modules/neotree.nix

      ./modules/transparent.nix

      ./modules/telescope.nix
      ./modules/lint.nix
      ./modules/lsp.nix
      ./modules/treesitter.nix
      ./modules/lualine.nix
      ./modules/cmp.nix
      ./modules/inlay_hints.nix

      # ./keymapping.nix
      ./modules/mapleader.nix
      ./modules/which-key.nix
      ./modules/keymap-loader.nix

      ./modules/ui_option.nix
      ./modules/editor_option.nix


   ];

  
}
