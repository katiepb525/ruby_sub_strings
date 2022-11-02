require 'pry-byebug'

example_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

example_string = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
    #remove all non-alphanumeric chars
    stripped_string = string.downcase.gsub /\W+/, ' '

    #split string by whitespace
    my_words = stripped_string.split(" ")

    #create a hash where the key is the word found and the value is the number of occurances it was found
    found_words = Hash.new(0)

    # count occurances of dictionary[word] within split_string[word]
    dictionary.each do |dict_word|
        
        my_words.each do |curr_word|

            if curr_word.include? dict_word
                
                found_words[dict_word] += 1
            end

        end

    end

    found_words

end

p substrings(example_string, example_dictionary)
