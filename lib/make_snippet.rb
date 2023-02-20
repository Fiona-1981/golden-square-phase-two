def make_snippet(text) # def make_snippet(text)
  # words = text.split(" ")
  words = text.split(" ")
  if words.length <= 5
    return text
  else 
    # want words array to be a string, extract into new variable
    # first_five_words = words[0,5]
    first_five_words = words[0,5].join(" ")
    return first_five_words + "..."
  end
end