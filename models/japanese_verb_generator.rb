class JapaneseVerbs
  
  def initialize 
  @group1_japanese_verbs = {
  :to_go => "いきます",
  :to_eat => "たべます",
  :to_drink => "のみます",
  :to_write => "かきます"
  }
  end 
  
  def correct_translation?(english_word, japanese_word)
    match = @group1_japanese_verbs.select do |e, j|
      j == japanese_word
  end
   match.keys.first.to_s.gsub("_", " ") == english_word
  end
end 


japanese_word = JapaneseVerbs.new
japanese_word.correct_translation?("to write", "かきます")
  
 

