#write your code here

#module

def translate(words)
=begin
    vowel: a e i o u
    split words into word by space " " 	
	if a word start with vowel,then add ay to the end
	if a word start with consonant,then move them to the end of the word and add ay 
	if is qu, is consonant
	if qu preceded by a consonant, is consonant 
	need to downcase everything when compare	
=end		

	#vowel = ["a","e","i","o","u"]
	#vowel_flag = false
	words_array = words.split(" ")
	for i in 0...words_array.length
		vowel_position = find_vowel(words_array[i])

		if vowel_position ==0

			words_array[i] = words_array[i] + "ay"
		else
			if words_array[i][vowel_position-1].downcase == "q" && words_array[i][vowel_position] == "u"
				vowel_position +=1
			end
			words_array[i]=words_array[i][vowel_position..-1]+words_array[i][0...vowel_position]+"ay"
		end
	end #for loop
	words_array.join(" ")


end

def find_vowel(word)  #find the first vowel

	vowel = ["a","e","i","o","u"]

	for i in 0...word.length
		vowel.each {|letter|  return i if letter == word[i].downcase}
	end #end for loop
end




