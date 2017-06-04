# Write your code here.
def dictionary
  dict = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => '2',
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end


def word_substituter(tweet)
  sentence = tweet.split(" ")
  new_sentence = []
    # ["this", "is", "example"]



    sentence.each do |word|
      if dictionary.has_key?(word.downcase)
        new_sentence << dictionary[word.downcase]
      else
        new_sentence << word
      end

    end
    new_sentence.join(" ")


  #new_sentence = shortened_tweet_truncator(new_sentence)



end


def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    word_substituter(tweet)
  end

end

def shortened_tweet_truncator(tweet)
  result = ""
  if tweet.length > 140
    result = tweet[0..136] + "..."
  else
    return word_substituter(tweet)
  end
  result


end
