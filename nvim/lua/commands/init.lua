local M = {}

local function load_all_siblings()
    -- Get the directory of the current file (init.lua)
    local current_file = debug.getinfo(1, "S").source:sub(2)
    local current_dir = vim.fn.fnamemodify(current_file, ":h")
    -- Get list of Lua files in the current directory
    local file_list = vim.fn.readdir(current_dir, function(name)
        return name:match("%.lua$") and name ~= "init.lua"
    end)

    for _, file in ipairs(file_list) do
        local module_name = file:gsub("%.lua$", "")
        local file_path = current_dir .. '/' .. file
        if vim.fn.filereadable(file_path) == 1 then
            local chunk, load_error = loadfile(file_path)
            if chunk then
                local ok, result = pcall(chunk)
                if ok then
                    M[module_name] = result
                else
                    vim.notify('Error executing module: ' .. module_name .. '\nError: ' .. tostring(result), vim.log.levels.ERROR)
                end
            else
                print("  Error loading file: " .. module_name)
                print("  Error: " .. tostring(load_error))
                vim.notify('Error loading file: ' .. module_name .. '\nError: ' .. tostring(load_error), vim.log.levels.ERROR)
            end
        else
            print("  File not readable: " .. file_path)
        end
    end
end

load_all_siblings()

return M
