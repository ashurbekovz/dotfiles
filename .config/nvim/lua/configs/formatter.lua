require "formatter.util"

local go = require("formatter.filetypes.go")

require("formatter").setup{
    filetype = {
        go = {
            go.gofmt,
        }
    }
}
