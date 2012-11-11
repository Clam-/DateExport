function round(num) 
	if num >= 0 then return math.floor(num) 
	else return math.ceil(num) end
end

function tzstring(tz)
	return string.format("%+03d%02d", round(tz / 3600), tz/60%60)
end