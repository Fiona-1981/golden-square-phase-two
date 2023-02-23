class GrammarStats
  def initialize(text)
    # ...
    @text = text
    @percentage_good = percentage_good
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
      if text.start_with?(/[A-Z]/) && text.end_with?(".")
        return true
      else
        return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end