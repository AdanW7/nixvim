# {  pkgs, ... }:
{
# Snippet engine
plugins.luasnip = { enable = true; };

plugins = {
  # Core nvim-cmp engine
  cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      experimental = { ghost_text = true; };
      sources = [
        { name = "nvim_lsp"; }
        { name = "buffer"; keyword_length = 1; }
        { name = "luasnip"; keyword_length = 2; }
        { name = "path"; }
        { name = "copilot"; }
      ];
      formatting = {
        fields = [ "kind" "abbr" "menu" ];
        expandable_indicator = true;
      };
      window = {
        completion    = { border = "rounded"; };
        documentation = { border = "rounded"; };
      };
    };
  };

};

extraConfigLua = ''
  -- Lua setup for nvim-cmp, blink-cmp, and luasnip
  local cmp       = require('cmp')
  local luasnip   = require('luasnip')

  cmp.setup({
    snippet = {
      expand = function(args)
        luasnip.lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { 'i', 's' }),
      ['<C-j>']      = cmp.mapping.select_next_item(),
      ['<C-k>']      = cmp.mapping.select_prev_item(),
      ['<C-e>']      = cmp.mapping.abort(),
      ['<C-Space>']  = cmp.mapping.complete(),
      ['<CR>']       = cmp.mapping.confirm({ select = false }),
    },
  })

-- vim.keymap.set("n", "<leader>i", function()
--   -- Simple global toggle that should work across versions
--   vim.cmd("lua vim.lsp.inlay_hint.toggle()")
-- end, { desc = "Toggle Inlay Hints" })

'';

}
