{...}: {
  # opts = {
  #
  #   tabstop = 3;
  #   softtabstop = 3;
  #   shiftwidth = 3;
  #   expandtab = true;
  #
  #   clipboard = "unnamedplus";
  #
  #   number = true;
  #   relativenumber = false;
  #
  #   ignorecase = true;  # Makes search case-insensitive
  #   smartcase = true;   # But if uppercase letters are used, the search becomes case-sensitive
  # };
  
  # make files need tabs not spaces specifically
  # autoCmd = [
  #   {
  #     event = "FileType";
  #     pattern = "make";
  #     callback = ''
  #       function()
  #         vim.bo.expandtab = false
  #         vim.bo.tabstop = 8
  #         vim.bo.shiftwidth = 8
  #       end
  #     '';
  #   }
  # ];
}
