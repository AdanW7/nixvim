{
   plugins.lualine = {
      enable = true;
      settings = {
         alwaysDivideMiddle = true;
         globalstatus = true;
         ignoreFocus = [ "neo-tree" ];
         extensions = [ "fzf" ];
         options = {
            theme = "auto";
         };
      };
   };
}
