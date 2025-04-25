{

   opts = {

      tabstop = 3;
      softtabstop = 3;
      shiftwidth = 3;
      expandtab = true;

      clipboard = "unnamedplus";

      number = true;
      relativenumber = false;

      ignorecase = true;  # Makes search case-insensitive
      smartcase = true;   # But if uppercase letters are used, the search becomes case-sensitive

      list = true;

   };

   extraConfigLua = ''
      vim.opt.listchars:append("lead:·")
   '';

}
