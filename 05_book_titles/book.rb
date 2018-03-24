class Book
	@@conjunctions = {
		"and" => true,
		"or" => true
	}
	@@prepositions = {
		"of" => true,
		"be" => true,
		"to" => true,
		"in" => true
	}

	@@article = {
		"the" => true,
		"a" => true,
		"an" => true
	}

	attr_accessor :title

	def title=(value)
		@title = value.split.each_with_index.map do |word, index|
			if index == 0 or
				(not @@conjunctions[word] and
				not @@prepositions[word] and
				not @@article[word]) then word.capitalize! end
			word
		end.join(" ")
	end
end
