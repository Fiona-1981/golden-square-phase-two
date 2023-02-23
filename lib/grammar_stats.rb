# Collab with Dilan, or rather, help from Dilan!
class GrammarStats
  def initialize
    # ...
    @check = 0
    @true = 0
    @false = 0
  end

  def check(text) 
    @check += 1
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
      if text.start_with?(/[A-Z]/) && text.end_with?(".", "!")
        # /[[:punct:]]/
        @true += 1
        return true
      else
        @false += 1
        return false
    end
  end

  
  def percentage_good
    fail "Nothing has been entered." if @check == 0
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    
    return ((@true.to_f / @check) * 100).to_i
  end
end