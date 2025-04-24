# the following is lua code that will toggle lsp inlay_hints
{ ... }: {
  extraConfigLua = ''
    function _G.toggle_inlay_hints()
      local bufnr = vim.api.nvim_get_current_buf()
      if vim.lsp.inlay_hint then
        if vim.lsp.inlay_hint.is_enabled(bufnr) then
          vim.lsp.inlay_hint.enable(false, { bufnr = bufnr })
        else
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
        end
      end
    end
  '';
}
