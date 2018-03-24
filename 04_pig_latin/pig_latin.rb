$vowels = {
	"a" => true,
	"i" => true,
	"u" => true,
	"e" => true,
	"o" => true
}

def translate words
	words.split.map do |word|
		if $vowels[word[0]]
			"#{word}ay"
		elsif (words[0..1] == "qu") or not ($vowels[word[0]] and not $vowels[word[1]])
			# Keep iterating until you find a vowel
			consonant_index = 0
			while not $vowels[word[consonant_index]] or consonant_index > word.length
				if word[consonant_index..consonant_index + 1] == "qu"
					consonant_index += 2
				else
					consonant_index += 1
				end
			end
			vowel_index = consonant_index
			"#{word[vowel_index..-1]}#{word[0...vowel_index]}ay"
		else 
			"#{word[1..-1]}#{word[0]}ay"
		end
	end.join(" ")
end
