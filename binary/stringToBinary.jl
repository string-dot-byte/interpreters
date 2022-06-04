function strToBinary(s)
	local endStr
	endStr = ""

	for c in s
		local val, bin
		val, bin = Int(c), ""
		while val > 0
			if val % 2 == 1
				bin = bin * "1"
			else
				bin = bin * "0"
			end
			val = floor(val/2)
		end

		bin = repeat("0", 8-length(bin)) * reverse(bin)
		endStr = endStr * bin
	end

	println("\n", endStr, "\n")
end


while true
	local str
	print("Input > ")
	str = readline()
	strToBinary(str)
end

