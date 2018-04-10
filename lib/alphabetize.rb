require "pry"

ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz "

def alphabetize(arr)
  # code here
    word_length = 0
    new_arr = []
    
    new_arr = arr.sort {|word1, word2| 
      replace = 0
      word_length = [word1.length, word2.length].min
      i = 0
      loop do
        if ESPERANTO_ALPHABET.index(word1[i]) < ESPERANTO_ALPHABET.index(word2[i])
          replace = -1
          break
        elsif ESPERANTO_ALPHABET.index(word1[i]) > ESPERANTO_ALPHABET.index(word2[i])
          replace = 1
          break
        else
          i += 1
        end
        break if (i == word_length)
      end
      replace
    }
new_arr
end