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



  def initialize
    @first_declension_nouns = { :farmer => "agricol",
						   :poet => "poet",
						   :sailor => "naut",
						   :queen => "regin" }

<<<<<<< HEAD
    @first_declension_singular_endings = { "the" => "a",
					"of the" => "ae",
					 "for the" => "ae",
					 "d.o." => "am",
					"by the" => "ā" }
  end




  def rand_noun
	nouns = @first_declension_nouns.keys
  	return nouns[rand(nouns.length)]
  end

  def rand_ending
  	endings = @first_declension_singular_endings.keys
  	return endings[rand(endings.length)]
  end

  def return_noun(rand_key)
  	return @first_declension_nouns[rand_key]
  end

  def return_ending(rand_key)
  	return @first_declension_singular_endings[rand_key]
  end

  def read_compare_noun(noun_input, rand_key)
    noun_input = noun_input.downcase.split(" ").last
    if noun_input == rand_key.to_s
    end
  end

  def read_compare_ending(ending_input, rand_key)
    if ending_input == rand_key.to_s
  end
  end
end


=======
    @first_declension_singular_endings = { :nominative => "a",
      :genative => "ae",
      :dative => "ae",
      :accusative => "am",
      :ablative => "ā" }
  end


  def rand_noun
	nouns = @first_declension_nouns.keys
  	return nouns[rand(nouns.length)]
  end

  def rand_ending
  	endings = @first_declension_singular_endings.keys
  	return endings[rand(endings.length)]
  end

  def return_noun(rand_key)
  	return @first_declension_nouns[rand_key]
  end

  def return_ending(rand_key)
  	return @first_declension_singular_endings[rand_key]
  end

  def read_compare_noun(noun_input, rand_key)
    noun_input = noun_input.downcase.split(" ").last
    if noun_input == @rand_noun_key.to_s
      puts "Correct"
    end
  end

  def read_compare_ending(ending_input, rand_key)
    if ending_input == @rand_ending_key.to_s
  end
  end
end
>>>>>>> e7875d3c1b88a3a240631735bf1ba9903d1b79fc
