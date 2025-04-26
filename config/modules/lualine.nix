{
  plugins.lualine = {
    enable = true;
    settings = {
      alwaysDivideMiddle = true;
      globalstatus = true;
      ignoreFocus = [ "neo-tree" ];
      extensions = [ "fzf" ];
      sections = {
        lualine_a = [ "mode" ];
        lualine_b = [ "branch" "diff" "diagnostics" ];
        lualine_c = [ "filename" ];
        lualine_x = [
          "encoding"
          "fileformat"
          "filetype"
         {
            raw = true;
            lua = "LualineLsp()";
          }
        ];
        lualine_y = [ "progress" ];
        lualine_z = [ "location" ];
      };
    };
  };

   extraConfigLua = ''
      function LualineLsp()
         local bufnr = vim.api.nvim_get_current_buf()
         local clients = vim.lsp.get_active_clients()

         if not clients or vim.tbl_isempty(clients) then
            return ""
         end

         local lsp_names = {}

         for _, client in ipairs(clients) do
            if client.attached_buffers and client.attached_buffers[bufnr] then
               table.insert(lsp_names, client.name)
            end
         end

         if #lsp_names == 0 then
            return ""
         end

         return " " .. table.concat(lsp_names, " | ")
      end
   '';
}
