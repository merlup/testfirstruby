def translate(str)
	words = str.split(" ")
	words.map {|word| translateword(word)}.join(" ")
end

def translateword(str)
	if /^[aeiou]/ =~ str
		c = ""
		rest = str
	elsif /^qu[aeiou]/ =~ str
		c = str[0..1]
		rest = str[2..str.size]
	elsif /^.[aeiou]/ =~ str
	c = str[0]
	rest = str[1..str.size]
elsif /^.qu[aeiou]/ =~ str
	c = str[0..2]
	rest = str[3..str.size]
elsif /^..[aeiou]/ =~ str
	c = str[0..1]
	rest = str[2..str.size]
elsif /^...[aeiou]/ =~ str
	c = str[0..2]
	rest = str[3..str.size]
			
	end
	rest + c + "ay"
end