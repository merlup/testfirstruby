def reverser
	str = yield
	str.split.map{|word| word.reverse}.join(" ")
end