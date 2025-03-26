local M = {}

M.processing = false
M.spinner_index = 1

local spinner_symbols = {
  "⠋",
  "⠙",
  "⠹",
  "⠸",
  "⠼",
  "⠴",
  "⠦",
  "⠧",
  "⠇",
  "⠏",
}
local spinner_symbols_len = 10

function M.init()
  local group = vim.api.nvim_create_augroup("CodeCompanionHooks", {})

  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = "CodeCompanionRequest*",
    group = group,
    callback = function(request)
      if request.match == "CodeCompanionRequestStarted" then
        M.processing = true
      elseif request.match == "CodeCompanionRequestFinished" then
        M.processing = false
      end
    end,
  })
end

function M.update_status()
  if M.processing then
    M.spinner_index = (M.spinner_index % spinner_symbols_len) + 1
    return spinner_symbols[M.spinner_index]
  else
    return "" 
  end
end

return M
