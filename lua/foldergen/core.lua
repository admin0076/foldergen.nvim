---@diagnostic disable: undefined-global
local M = {}

local function is_file(name)
  return name:match("^.+%.txt$") or name:match("^.+%.md$")
end

local function clean_line(line)
  line = line:gsub("[│├└─]", "")
  line = line:gsub("^%s+", ""):gsub("%s+$", "")
  line = line:gsub("%s*#.*", "")
  return line
end

local function tree_depth(line)
  local depth = 0
  for c in line:gmatch(".") do
    if c == "│" or c == "├" or c == "└" then
      depth = depth + 1
    else
      break
    end
  end
  return depth
end

local function is_tree_style(lines)
  for _, line in ipairs(lines) do
    if line:find("[│├└─]") or line:match("%S+%.%S+") then
      return true
    end
  end
  return false
end

function M.generate_from_text()
  local bufname = vim.api.nvim_buf_get_name(0)
  if not bufname:match("%.txt$") and not bufname:match("%.md$") then
    print("Unsupported file type! Please paste your structure in a .txt or .md file.")
    return
  end

  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  if #lines == 0 then
    print("Buffer is empty! Please paste your tree structure first.")
    return
  end

  if not is_tree_style(lines) then
    print("No tree-style structure detected. Generation skipped.")
    return
  end

  local cwd = vim.fn.getcwd()
  local stack = { { path = cwd, depth = -1 } }
  local error_occurred = false

  for _, line in ipairs(lines) do
    local clean = clean_line(line)
    if clean ~= "" then
      local depth = tree_depth(line)

      while stack[#stack].depth >= depth do
        table.remove(stack)
      end

      local parent_path = stack[#stack].path
      local path = parent_path .. "/" .. clean

      local success = pcall(function()
        if is_file(clean) then
          vim.fn.writefile({}, path)
        else
          vim.fn.mkdir(path, "p")
          table.insert(stack, { path = path, depth = depth })
        end
      end)

      if not success then
        error_occurred = true
      end
    end
  end

  if error_occurred then
    print("Could not generate folder structure completely.")
  else
    print("Folder structure generated successfully!")
  end
end

return M
