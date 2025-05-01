# { lib, pkgs, ... }: {
 {
   opts = {
       completeopt = "menuone,noselect";
   };
   plugins = {
      # lspconfig = {
      #    enable = true;
      # };
   
   lsp-format = {
      enable = true;
    };
    lsp = {
      enable = true;
      inlayHints = true;
      # settings = {
      #    diagnostics = {
      #       virtualText = true; #  show inline error messages
      #       signs = true;       #  show signs in gutter
      #       underline = true;   #  underline error lines
      #       updateInInsert = false; #  optional: less noise while typing
      #       severitySort = true;    #  sort by severity
      #    };
      # };

      servers = {
        nixd = {
          enable = true;
          autostart = true;
        };
        yamlls = {
          enable = true;
          autostart = true;
          settings = {
            schemaStore = {
              enable = false;
              url = "";
            };
          };
        };
        gopls = { # Golang
          enable = true;
          autostart = true;
        };
       
         lua_ls = {
            enable = true;
            extraOptions = {
              settings = {
                Lua = {
                  completion = {
                    callSnippet = "Replace";
                  };
                  diagnostics = {
                    globals = [ "vim" ];
                  };

                  telemetry = {
                    enabled = false;
                  };
                  hint = {
                    enable = true;
                  };
                };
              };
            };
          };
       
        # Rust
        rust_analyzer = {
          enable = true;
          autostart = true;
          installRustc = true;
          installCargo = true;
        };
        ts_ls = { # TS/JS
          enable = true;
          autostart = true;
        };
        cssls = { # CSS
          enable = true;
          autostart = true;
        };
        # tailwindcss = { # TailwindCSS
        #   enable = true;
        #   autostart = true;
        # };
        html = { # HTML
          enable = true;
          autostart = true;
        };
        # astro = { # AstroJS
        #   enable = true;
        #   autostart = true;
        # };
        # phpactor = { # PHP
        #   enable = true;
        #   autostart = true;
        # };
        # svelte = { # Svelte
        #   enable = false;
        #   autostart = true;
        # };
        # vuels = { # Vue
        #   enable = false;
        #   autostart = true;
        # };
        pyright = { # Python
          enable = true;
          autostart = true;
        };
        # nil_ls = { # Nix
        #   enable = true;
        #   autostart = true;
        # };
        # dockerls = { # Docker
        #   enable = true;
        #   autostart = true;
        # };
        bashls = { # Bash
          enable = true;
          autostart = true;
        };
        clangd = { # C/C++
          enable = true;
          autostart = true;
          extraOptions = {
             cmd = [
               "clangd"
               "--background-index"
               "--clang-tidy"
               "--header-insertion=iwyu"
               "--completion-style=detailed"
               "--function-arg-placeholders"
               # "--fallback-style=llvm"
             ];
             init_options = {
               clangdFileStatus = true;
               usePlaceholders = true;
               completeUnimported = true;
             };
             flags = {
               allow_incremental_sync = false; 
               debounce_text_changes = 150;    
             };
          };
        };
        # csharp_ls = { # C#
        #   enable = true;
        #   autostart = true;
        # };
        markdown_oxide = { # Markdown
          enable = true;
          autostart = true;
        };
        texlab = { # LaTeX
          enable = true;
          autostart = true;
        };
         zls = {
               enable = true;
               autostart = true;
               settings = {
                  filetypes = [
                     "zig"
                     "zon"
                  ];
               };
            };
      };
      keymaps = {
          silent = true;
          lspBuf = {
            gd = {
              action = "definition";
              desc = "Goto Definition";
            };
            gr = {
              action = "references";
              desc = "Goto References";
            };
            gD = {
              action = "declaration";
              desc = "Goto Declaration";
            };
            gI = {
              action = "implementation";
              desc = "Goto Implementation";
            };
            gT = {
              action = "type_definition";
              desc = "Type Definition";
            };

            K = {
              action = "hover";
              desc = "Hover";
            };

            "<leader>cS" = {
              action = "workspace_symbol";
              desc = "Workspace Symbol";
            };
            "<leader>cs" = {
               desc = "Document Symbols";
               action = "document_symbol";
             };

            "<leader>cr" = {
              action = "rename";
              desc = "Rename";
            };
            "<leader>ca" = {
              action = "code_action";
              desc = "Code Action";
            };
            "<C-k>" = {
              action = "signature_help";
              desc = "Signature Help";
            };
          };
            diagnostic = {
              "<leader>cd" = {
                action = "open_float";
                desc = "Line Diagnostics";
              };
              "[d" = {
                action = "goto_next";
                desc = "Next Diagnostic";
              };
              "]d" = {
                action = "goto_prev";
                desc = "Previous Diagnostic";
              };
              # "<leader>dd" = {
              #   action = ":Telescope diagnostics bufnr=0<CR>";
              #   desc = "Document Diagnostics";
              # };
              # "<leader>dw" = {
              #   action = ":Telescope diagnostics<CR>";
              #   desc = "Workspace Diagnostics";
              # };
            };
        };
        onAttach = ''
          vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(args)
              local client = vim.lsp.get_client_by_id(args.data.client_id)
              if client.server_capabilities.inlayHintProvider then
                vim.lsp.inlay_hint.enable(false)
              end
              vim.bo[args.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
            end,
          })
        '';
      };
    };
    extraConfigLua = ''
          local _border = "rounded"

          require('lspconfig.ui.windows').default_options = {
            border = _border
          }

          vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
            vim.lsp.handlers.hover, {
              border = _border
            }
          )

          vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
            vim.lsp.handlers.signature_help, {
              border = _border
            }
          )

          vim.diagnostic.config({
      			float = { border = "rounded" },
      			virtual_text = {
      				prefix = "",
      			},
            signs = true,
            underline = true,
            update_in_insert = true,
      		})
    '';
}
