local codecompanion_status = require("configs/lualine_codecompanion").update_status

local function show_macro_recording()
    local recording_register = vim.fn.reg_recording()
    if recording_register ~= "" then
        return "󰑋 REC @" .. recording_register
    else
        return ""
    end
end

require("lualine").setup({
    options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "encoding", "filetype", show_macro_recording },
        lualine_y = { "progress" },
        lualine_z = { codecompanion_status }
    },
})
