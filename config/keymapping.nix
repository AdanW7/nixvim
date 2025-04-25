[

   {
      key = "<leader>w";
      action = ":w<CR>";
      mode = "n"; 
      options = {
         silent = true;
         noremap = true;
         desc = "Save Current File";
      };
   }

   {
      key = "<leader>q";
      action = ":q<CR>";
      mode = "n"; 
      options = {
         silent = true;
         noremap = true;
         desc = "Quit Current Window";
      };
   }

   {
      mode = "n";
      key = "<leader>h";
      action = ":nohlsearch<CR>";
      options = {
         silent = true;
         noremap = true;
         desc = "Clear highlight";
      };
   }


   # Neo-tree bindings
   {
      mode = "n";
      action = "<cmd>Neotree toggle<CR>";
      key = "<leader>e";
      options = {
         silent = true;
         noremap = true;
         desc = "Toggle Neotree";
      };
   }

   # Telescope bindings
   {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>fw";
      options = {
         silent = true;
         desc = "Grep";
      };
   }

   {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>ff";
      options = {
         silent = true;
         desc = "Find Files";
      };

   }

   {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>fg";
      options = {
         silent = true;
         desc = "Git Commits";
      };
   }

   {
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>fh";
      options = {
         silent = true;
         desc = "Old Files";
      };
   }

   {
      action = "<cmd>Telescope colorscheme<CR>";
      key = "<leader>ch";
      options = {
         silent = true;
         desc = "ColorScheme";
      };
   }

   {
      action = "<cmd>Telescope man_pages<CR>";
      key = "<leader>fm";
      options = {
         silent = true;
         desc = "Man Pages";
      };
   }


   # comment out current line
   {
      key = "<leader>/";
      action = "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>";
      mode = "n";
      options = {
         silent = true;
         noremap = true;
         desc = "Comment Out Current Lines";
      };
      
   }

   # comment out highlighted lines
   {
      key = "<leader>/";
      action = "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>";
      mode = "v";
      options = {
         silent = true;
         noremap = true;
         desc = "Comment Out Highlighted Lines";
      };

   }

   # deindent
   {
      mode = "v";
      key = "<";
      action = "<gv";
   }
   #indent
   {
      mode = "v";
      key = ">";
      action = ">gv";
   }

   # window movement
   {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      desc = "Move to Left Window";

   }
   {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      desc = "Move to Lower Window";
   }
   {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      desc = "Move to Above Window";
   }
   {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      desc = "Move to Right Window";
   }


]
