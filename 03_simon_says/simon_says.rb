#write your code here
def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, a=2)
	 result = input
	 for num in 1...a
	 	result = result +" " + input 
	 	
	 end
	 result

end

def start_of_word (word, start)
	word[0..start-1]
end

def first_word(words)
	words_arry = words.split(" ")
	words_arry[0]
end

def titleize(words)
	little_words = ["And","The","Over"]
	words_arry = words.split(" ")



	for i in 0...words_arry.length
		words_arry[i].capitalize!
		for j in 0...little_words.length
			words_arry[i].downcase! if ((words_arry[i] == little_words[j]) && (i>0))
			
		end
		
	end

	words_arry.join(" ")
	
end
