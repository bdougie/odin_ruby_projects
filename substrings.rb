#Implement a method #substrings that takes a word as the first argument and then an 
# array of valid substrings (your dictionary) as the second argument. It should return 
# a hash listing each substring (case insensitive) that was found in the original string 
# and how many times it was found.

# Pseudo
# split the dictionary up to check to see if the word is contained.

def substrings(string, dictionary)
  h = Hash.new(0)

  string.downcase.split(/[^\w]+/).each do |word| # used regex to find actual words starting with the begining of the string.     
    dictionary.each do |substring| # splits dictionary words for easy checking
      h[substring] += 1 if word[substring] # increases key count if the substring is represented in the string
    end 
  end  
  puts h   
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


# use the newly defined method
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going partner?", dictionary)


