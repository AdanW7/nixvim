
{ lib, pkgs, config, ... }:

let
  cfg = config.extraColorschemes;

in {
  options.extraColorschemes = {
    sonokai.enable = lib.mkEnableOption "Enable the Sonokai colorscheme";
    material.enable = lib.mkEnableOption "Enable the Material colorscheme";
  };

  config = lib.mkMerge [
    (lib.mkIf cfg.sonokai.enable {
      extraPlugins = [ pkgs.vimPlugins.sonokai ];
      # vimscript way
      # extraConfigVim = ''
      #   colorscheme sonokai
      # '';

      #lua way
      extraConfigLua = ''
        vim.cmd("colorscheme sonokai")
      '';
    })

    (lib.mkIf cfg.material.enable {
      extraPlugins = [ pkgs.vimPlugins.material-nvim ];
      # extraConfigVim = ''
      #   colorscheme material
      # '';
      extraConfigLua = ''
        vim.cmd("colorscheme material")
      '';

    })
  ];
}
