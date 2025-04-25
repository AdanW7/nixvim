{ lib, ... }:

let
  keymaps = import ./../keymapping.nix;

  # Format each line into a Lua keymap entry
  lines = builtins.filter (x: x != "") (builtins.map (km:
    if km ? description then
      ''
      ["${km.key}"] = { "${km.action}", "${km.description}" }
      ''
    else
      ""
  ) keymaps);

  # Join the lines without trailing comma
  specLua = "{\n" + lib.concatStringsSep ",\n" lines + "\n}";

in
{
  plugins.which-key = {
    enable = true;
    settings = {
      plugins.presets = {
        operators = false;
        motions = false;
        text_objects = false;
        windows = false;
        nav = false;
        z = false;
        g = false;
      };
      spec.__raw = specLua;
    };
  };

  _module.args.whichKeyKeymaps = keymaps;
}
