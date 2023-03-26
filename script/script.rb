def substrings(word, array)

  array.reduce(Hash.new(0)) do |result, substring|
    if word.downcase.include?(substring)
      result[substring] = word.downcase.scan(substring).length
    end
    result
  end

end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 

# p substrings("below", dictionary)

# p substrings("Howdy partner, sit down! How's it going?", dictionary)
