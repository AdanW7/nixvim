{ ... }: {
   extraConfigLua = ''
      vim.cmd [[
         highlight Normal ctermbg=none guibg=none
         highlight NonText ctermbg=none guibg=none
         highlight NormalNC guibg=none ctermbg=none
         highlight StatusLine guibg=NONE ctermbg=NONE
         highlight StatusLineNC guibg=NONE ctermbg=NONE

         highlight! NeoTreeNormal guibg=NONE ctermbg=NONE
         highlight! NeoTreeNormalNC guibg=NONE ctermbg=NONE
         highlight! NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
         highlight! NeoTreeFloatBorder guibg=NONE ctermbg=NONE
         highlight! NeoTreeFloatTitle guibg=NONE ctermbg=NONE

      ]]
   '';
}
