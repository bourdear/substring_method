dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    string.downcase.split.reduce(Hash.new(0)) do |hash, word|
        dictionary.each do |n|
            if word.include? n
                hash[n] += 1
            end
        end
        hash
    end
end

puts substrings("How low can you go?", dictionary)
puts substrings("Howdy partner, please sit.", dictionary)
