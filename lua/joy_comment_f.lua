local function comment_filter(input, env)
	for cand in input:iter() do
		if cand.comment:find("全角") then
			cand.comment = cand.comment:gsub("〔全角〕", "🌕️")
		elseif cand.comment:find("半角") then
			cand.comment = cand.comment:gsub("〔半角〕", "🌙️")
		end
		yield(cand)
	end
end

return comment_filter
