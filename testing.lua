-- vim.ui.select(
-- { "A", "B", "C", "D", "E", "F", "G" },
-- {
-- 	prompt = "Select an option",
-- 	format_item = function(item)
-- 		return "Option " .. item
-- 	end,
-- },
-- function(item, idx)
-- 	if item then
-- 		print("You selected " .. item .. " at index " .. idx)
-- 	else
-- 		print("No selection.")
-- 	end
-- end)

require("notify")("This is a message")
