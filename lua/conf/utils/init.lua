-- I generally try to avoid the M pattern, but here, it probably makes the most sense...
local M = {}

M.add_dependency = function(spec, new_dependency)
	if not spec.dependencies then
		spec.dependencies = {}
	end
	table.insert(spec.dependencies, new_dependency)
end

return M
