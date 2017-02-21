require 'pry'
class Scrabble

  def score(word)
    letters = word.to_s.upcase.split('')
    letters.inject(0) do |accumulator, letter|
      accumulator += score_letter(letter)
    end
  end

  def score_letter(letter)
    point_values[letter]
  end
  #
  # def highest_score_from(list)
  #   score, top_words = grouped_by_score(list).max
  #   bonus_word_from(top_words) || shortest_from(top_words)
  # end
  #
  # def bonus_word_from(words)
  #   words.detect{|word| word.length == 7}
  # end
  #
  # def shortest_from(words)
  #   words.min_by{|word| word.length}
  # end
  #
  # def grouped_by_score(list)
  #   list.group_by{|word| score(word)}
  # end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end

  end
