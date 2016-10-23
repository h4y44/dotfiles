
local utils = require('mp.utils')

function trim(s)
	return s:match "^%s*(.-)%s*$"
end

function load_sub_file()
	-- use zenity to open file and select it
	process = {}
	process.args = {
		"zenity",
		"--file-selection"
	}

	sub_file = trim(utils.subprocess(process).stdout)

	if sub_file == "" then 
		mp.osd_message("fail to load subtitle")
	else
		mp.commandv("sub_add", sub_file)
		mp.osd_message("loaded " .. sub_file)
	end
end

mp.add_key_binding("b", "load_subtitle", load_sub_file)
