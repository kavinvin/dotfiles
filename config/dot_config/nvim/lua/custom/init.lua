-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)

-- require'lspconfig'.sumneko_lua.setup {
--   settings = {
--     Lua = {
--       diagnostics = {
--         globals = { 'vim' }
--       }
--     }
--   }
-- }

-- Prevent yanking when deleting line
vim.cmd [[
nnoremap d "_d
vnoremap d "_d
]]
