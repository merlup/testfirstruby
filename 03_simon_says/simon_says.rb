SMALL_WORDS = {"and"=> true, "the"=> true, "over"=>true}

def echo(a)
	a
end

def shout(a)
	a.upcase
end

def repeat(str, ary = 2)
	ary <= 2 ? str + " " + str : ((str + " ") * ary).strip
end

def start_of_word(str, length)
	str[0..(length -1)]
end

def first_word(str)
	str.split(" ").first
end

def titleize(str)
	title = str.split
	title[0] = title[0].capitalize
	title = title.map {|word| SMALL_WORDS[word] ? word : word.capitalize}.join(" ")
end


	