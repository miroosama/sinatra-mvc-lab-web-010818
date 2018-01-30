class PigLatinizer

def to_pig_latin(user_input)
   vowels = %w{a e i o u}
   phrase = user_input.split(" ")
   phrase.map! do |word|
     letters = word.split("")
     find_vowel = letters.index do |letter|
       vowels.include?(letter)
     end
     #turn "square" into "aresquay"
     if letters[find_vowel] == "u"
       find_vowel += 1
     end
     letters.rotate!(find_vowel)
     letters.push("ay")
     letters.join

    end

 return phrase.join(" ")
 end


end
