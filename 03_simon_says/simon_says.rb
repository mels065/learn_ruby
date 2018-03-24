def echo message
	message
end

def shout message
	message.upcase
end

def repeat message, number_of_times=2
	new_message = ""
	number_of_times.times do |i|
		new_message += message
		if i < number_of_times - 1 then new_message += " " end
	end

	new_message
end

def start_of_word message, number_of_characters
	message[0...number_of_characters]
end

def first_word message
	message.split[0]
end

def titleize message
	little_words = ["and", "or", "the", "over"]
	message.split.each_with_index.map do |word, i|
		new_word = word
		if (not little_words.index(word)) or (i == 0) then new_word.capitalize! end
		new_word
	end.join(" ")
end
