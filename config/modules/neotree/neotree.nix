{
   plugins.neo-tree = {
      enable = true;
      enableDiagnostics = true;
      enableGitStatus = true;
      enableModifiedMarkers = true;
      enableRefreshOnWrite = true;

      closeIfLastWindow = true;
      popupBorderStyle = "rounded"; # Type: null or one of “NC”, “double”, “none”, “rounded”, “shadow”, “single”, “solid” or raw lua code

      buffers = {
         bindToCwd = false;
         followCurrentFile = {
            enabled = true;
         };
      };

      window = {
         width = 40;
         height = 15;
         autoExpandWidth = false;
         mappings = {
            l = "open";
            h = "close_node";
         };
      };
   };
   # extraConfigLua = ''
   #    vim.cmd([[
   #      highlight! NeoTreeNormal guibg=NONE ctermbg=NONE
   #      highlight! NeoTreeNormalNC guibg=NONE ctermbg=NONE
   #      highlight! NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
   #      highlight! NeoTreeFloatBorder guibg=NONE ctermbg=NONE
   #      highlight! NeoTreeFloatTitle guibg=NONE ctermbg=NONE
   #    ]])
   #  '';
}
