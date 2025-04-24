{pkgs, ...}: {
  plugins = {

  };

  extraPlugins = with pkgs.vimPlugins;
  [
    # glow-nvim # allows preview of markdown
    # clipboard-image-nvim
  ];
}
