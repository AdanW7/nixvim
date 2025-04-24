

# {
#
#    plugins.which-key = {
#       enable = true;
#
#       registrations = {
#           "<leader>h" = "Clear search highlight";
#           "<leader>ff" = "Find file";
#       };
#    };
#
# }
# { lib, ... }:
#
# let
#   # keymaps = import ./../keymapping.nix;
#    keymaps = import ./../keymapping.nix { };
#
#   # Convert keymaps to which-key registrations
#   registrations = builtins.listToAttrs (builtins.map
#     (km: {
#       name = km.key;
#       value = km.description or "";
#     })
#     (builtins.filter (km: km ? description) keymaps));
# in
# {
#    plugins.which-key = {
#       enable = true;
#       inherit registrations;
#    };
#
#    # Export keymaps so the main config can import and use them
#    _module.args.whichKeyKeymaps = keymaps;
# }
# { lib, whichKeyKeymaps, ... }:
#
# let
#   registrations = builtins.listToAttrs (builtins.map
#     (km: {
#       name = km.key;
#       value = km.description or "";
#     })
#     (builtins.filter (km: km ? description) whichKeyKeymaps));
# in
# {
#   plugins.which-key = {
#     enable = true;
#     inherit registrations;
#   };
# }
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
