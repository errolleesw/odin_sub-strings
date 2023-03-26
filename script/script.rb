def substrings(word, array)

  array.reduce(Hash.new(0)) do |result, substring|
    if word.include?(substring)
      result[substring] += 1
    end
    result
  end

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 

p substrings("below", dictionary)
