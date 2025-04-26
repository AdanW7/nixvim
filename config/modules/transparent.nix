# the purpose of this file is to make the main nvim windows clear, when in use and when inactive
{ ... }: {
   extraConfigLua = ''
      vim.cmd [[
         highlight Normal ctermbg=none guibg=none
         highlight NonText ctermbg=none guibg=none
         highlight NormalNC guibg=none ctermbg=none
      ]]
   '';
}
