# Implement a caesar cipher that takes in a string and
# the shift factor and then outputs the modified string:

# seperate chars in to an array
# shift the alpha-char by next_2
# join alpha-chars

def caesar_cipher(word, shift)
	letters = ('a'..'z').to_a.concat(('A'..'Z').to_a) # create array of all possible chars
	decoded = ""

	word.each_char do |c| 
		if letters.include?(c)	
			decoded += letters[letters.index(c) - shift]
		else
			decoded += c # adds non-alpha char to the decoded string
		end
	end
	 decoded
end

p caesar_cipher("Hola Mundo!", 5)