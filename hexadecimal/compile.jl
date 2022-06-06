Hex = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]

function find(tbl, value)
	return findfirst(isequal(value), tbl)
end


function clamp(x, min, max)
	if x > max then
		return max
	elseif x < min then
		return min
	end
	return x
end

function interpretHexadecimalNotation(str)
	local index, value
	index, value = 0, 0
	for c in reverse(SubString(str, 3, length(str)))
		CharValue = clamp(find(Hex, string(c))-1, 0, 15)
		value = value + (CharValue * (16^index))
		index = index + 1
	end

	print(value, "\n")
end

while true
	local str
	print("Input > ")
	str = readline()
	interpretHexadecimalNotation(str)
end



