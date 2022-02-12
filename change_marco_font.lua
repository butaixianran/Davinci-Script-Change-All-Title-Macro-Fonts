
-- define your title macro path
title_macro_path = "C:/ProgramData/Blackmagic Design/DaVinci Resolve/Fusion/Templates/Edit/Titles"

-- define your font and font style
-- new_font = "Arial"
-- new_font_style = "Regular"

-- new_font = "Source Han Sans CN"
-- new_font_style = "Medium"

new_font = "Source Han Sans SC VF"
new_font_style = "Medium"

local function tableHasKey(table,key)
    return table[key] ~= nil
end



-- get table length
local function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

-- check if path is a folder
local function is_dir(path)
    local isDir = false
    local file = io.open(path, "r")
    if file == nil then
        isDir = true
    else
        file:close()
    end
    
    return isDir
end

-- Lua implementation of python's walk for files
local macro_file_list = {}
local function walk(path)
    local item_path = ""
    local isDir = false
    local pfile = io.popen('dir "'..path..'" /b')
    for name in pfile:lines() do
        item_path = path.."/"..name
        isDir = is_dir(item_path)
        if isDir then
            walk(item_path)
        else
            -- print("find file: "..name)
            table.insert(macro_file_list, item_path)
        end
    end
    pfile:close()
end


-- change font
local function changeFont(table)

    for k, v in pairs(table) do
        if (type(v) == "table") then
            if (k == "Font") then
                if tableHasKey(v, "Value") then
                    -- First child with key name "Value" will be font name
                    print("handle Font: "..v["Value"])
                    v["Value"] = new_font
                end
            elseif (k == "Style") then
                if tableHasKey(v, "Value") then
                    -- First child with key name "Value" will be font style
                    print("handle Font Style: "..v["Value"])
                    v["Value"] = new_font_style
                end
            end
            changeFont(v)
        end
    end

end


-- get file list under title macro into macro_file_list
walk(title_macro_path)
-- dump(macro_file_list)

local settingtable = nil
for k, v in pairs(macro_file_list) do
    print("file: "..v)
    settingtable = bmd.readfile(v)
    changeFont(settingtable)
    print("Write back to file")
    bmd.writefile(v, settingtable)
    print(" ")
end

print("All font now is: "..new_font)
print("All font style now is: "..new_font_style)
print("Done")