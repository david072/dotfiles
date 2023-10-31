local M = {}

function M.open_with_extension_if_exists(extension)
  local file = vim.fn.expand("%:r") .. "." .. extension
  if vim.fn.filereadable(file) == 0 then
    print("File \"" .. vim.fn.expand("%:t:r") .. "." .. extension .. "\" does not exist.")
    return
  end

  vim.cmd(":e " .. file)
end

return M
