class Noun_Generator
  def initialize
    @first_declension_nouns = { :farmer => "agricol",
						   :poet => "poet",
						   :sailor => "naut",
						   :queen => "regin" }
  
    @first_declension_singular_endings = { :f1snovo => "a",
					:f1sgeda => "ae",  
					:f1sac => "am", 
					:f1sab => "ā" }
  end
  
  def compare(input, rand_key)
    input = input.downcase.split(" ").last
    if input == rand_key.to_s
    puts "Correct"
    end
  end
  
  def generate_noun
    root_words = first_declension_nouns.keys
    root_word = root_words[rand(root_words.length)]

    endings = first_declension_singular_endings.values
    endings[rand(endings.length)]
    
    english_latin = {:latin => root_words,
      :english => root_word}
    return english_latin

    #compare noun translation from input to translation

  end
  
end

#noun storing



