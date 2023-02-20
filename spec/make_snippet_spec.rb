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

require "make_snippet"

RSpec.describe "make_snippet method" do
  it "returns an empty string if an empty string is input" do
    result = make_snippet("")
    expect(result).to eq ""
  end  

  it "returns self if number of word is from 1 to 5" do
    # choose some random numbers here
    # Only test one thing per test
    result = make_snippet("i am quite tired")
    expect(result).to eq "i am quite tired"
  end

  it "returns '...' after the fifth word if more than five words" do
    result = make_snippet("Have a restful weekend away from your screen")
    expect(result).to eq "Have a restful weekend away..."
  end
end