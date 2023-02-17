# Recipe
# Examples to test:
# "I got up and had my breakfast and a coffee."
# Should return "I got up and had..."
# "Get out of here!"
# Should return "Get out of here!"
# How will this handle punctuation? 
# Maybe assume for this exercise that punctuation is part of the word.
# "I need the loo."
# Should return "I need the loo."

# Therefore shouldn't need too many test cases.
# Test if string contains > 5 words, return first five words plus ...
# Test if string is <= 5 words and return self. (does self apply to strings?)
# Not sure about == 5 words. 
# Should they return with or without "..." ?
# Example such as "Get out of here!" would return "Get out of here!..."
# Doesn't make sense.
# Decided on <= 5 and > 5 for now. Or maybe just no punctuation. Keep it simple.

require 'make_snippet'

RSpec.describe Snippet do
  it "returns first 5 words plus '...' if longer than 5 words" do
  snippet = Snippet.new
  snippet.counts(snippet.length == > 5)
  expect(snippet.sentence).to eq "I got up and had..."
  end
end