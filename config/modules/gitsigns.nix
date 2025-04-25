{
   plugins.gitsigns = {
      enable = true; 
      settings = {
         current_line_blame = true;
         current_line_blame_formatter = "   <author>, <committer_time:%R> • <summary>";
         signs = {
            add          = {
               text = " ";
            };
            change       = { 
               text = " ";
            };
            delete       = { 
               text = " ";
            };
            topdelete    = { 
               text = " ";
            };
            changedelete = { 
               text = "󱂥 ";
            };
            untracked    = { 
               text = "󱂧 ";
            };
         };
         signs_staged = {
            add          = {
               text = " ";
            };
            change       = { 
               text = " ";
            };
            delete       = { 
               text = " ";
            };
            topdelete    = { 
               text = " ";
            };
            changedelete = { 
               text = "󱂥 ";
            };
            untracked    = { 
               text = "󱂧 ";
            };
         };
      };
   };
}
