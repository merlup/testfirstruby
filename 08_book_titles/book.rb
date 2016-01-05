class Book


SMALL_WORDS = {"a"=>true, "and"=>true, "in"=>true, "the"=>true, "of"=>true, "an"=>true }

	attr_reader :title

	def initalize(book_title)
		title = book_title
	end

	def title=(new_title)
		@title = new_title.capitalize.split(" ")
		@title = title.map {|word| SMALL_WORDS[word] ? word : word.capitalize}.join(" ")
	end
end