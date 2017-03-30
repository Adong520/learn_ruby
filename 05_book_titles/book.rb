class Book
	attr_accessor :title
	
	def title
		titleize(@title)
	end
	private 
	def titleize(words)
		little_words = ["And","The","A","An","In","Of",""]
		words_arry = words.split(" ")
		for i in 0...words_arry.length
			words_arry[i].capitalize!
			for j in 0...little_words.length
				words_arry[i].downcase! if ((words_arry[i] == little_words[j]) && (i>0))
				
			end # for j
			
		end # for i

		words_arry.join(" ")
		
	end #titleize
	
end  # class




@book = Book.new







