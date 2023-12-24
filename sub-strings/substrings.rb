def substrings(string, dictionary)
  string = string.downcase
  result = dictionary.map { |word| {word => string.scan(/(?=#{word})/).count} if string.scan(/(?=#{word})/).count > 0 }.compact 
  result.reduce({}, :merge)
end