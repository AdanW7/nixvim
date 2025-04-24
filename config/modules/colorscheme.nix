{ config, lib, pkgs, ... }:

let
  # Import the extra color schemes configuration
  extraColorschemes = import ./modules/extra_colorschemes.nix { inherit lib pkgs config; };

in {
  # Enable only the chosen colorscheme

  # method for built in themes
  # colorschemes = {
  #   # ayu.enable = true;
  #   base16.enable = true;
  #   # catppuccin.enable = true;
  #   # cyberdream.enable = true;
  #   # dracula.enable = true;
  #   # dracula-nvim.enable = true;
  #   # everforest.enable = true;
  #   # github-theme.enable = true;
  #   # gruvbox.enable = true;
  #   # kanagawa.enable = true;
  #   # melange.enable = true;
  #   # modus.enable = true;
  #   # monokai-pro.enable = true;
  #   # nightfox.enable = true;
  #   # nord.enable = true;
  #   # one.enable = true;
  #   # onedark.enable = true;
  #   # oxocarbon.enable = true;
  #   # palette.enable = true;
  #   # poimandres.enable = true;
  #   # rose-pine.enable = true;
  #   # tokyonight.enable = true;
  #   # vscode.enable = true;
  # };

  # method of non standard themes declared in extra_colorschemes.nix
  extraColorschemes.sonokai.enable = true;  
  # extraColorschemes.material.enable = true;  
}
