local M = {}

local function is_file(name)
  return name:match("^.+%..+$") ~= nil
end

local function clean_line(line)
  line = line:gsub("^%s+", ""):gsub("%s+$", "")
  line = line:gsub("%s*#.*", "")
  return line
end

function M.generate_from_text()
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local cwd = vim.fn.getcwd()

  for _, line in ipairs(lines) do
    local clean = clean_line(line)
    if clean ~= "" then
      local path = cwd .. "/" .. clean
      if is_file(path) then
        vim.fn.writefile({}, path)
      else
        vim.fn.mkdir(path, "p")
      end
    end
  end

  print("Folder structure generated successfully!")
end

return M
