def sub_strings(word, dictionary)
  words = word.downcase.split

  substrings_count = Hash.new(0)

  dictionary.each do |substring|
    words.each do |word|
      if word.include?(substring)
        substrings_count[substring] += 1
    end
  end
end
substrings_count
end



dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts sub_strings("below", dictionary)
puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)
