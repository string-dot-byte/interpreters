function interpretBinary(strg)
	local characters, index, start, Results

	strg = replace(strg, [' '] => "")

	characters = []

	index, start = 1, 1
	for c in strg
		index = index + 1
		if index % 8 == 0
			insert!(characters, length(characters)+1, strg[start:index])
			start = start + 8
		end
	end

	Results = []
	for v in characters
		local binaryValue, index, ThisValue
		binaryValue, index = 0, 0
		for c in reverse(v)
			ThisValue = index == 0 ? 1 : 2^index
			binaryValue = binaryValue + ifelse(string(c) == "1", ThisValue, 0)
			index = index + 1
		end

		ThisValue = binaryValue
		insert!(Results, length(Results)+1, ThisValue)
	end


	local Result
	Result = ""
	for v in Results
		Result *= Char(v)
	end
	println("\n", Result, "\n")
end


while true
	local str
	print("Input > ")
	str = readline()
	interpretBinary(str)
end
