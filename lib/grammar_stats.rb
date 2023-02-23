class GrammarStats
  def initialize(text)
    @text = text
  end

  def check(text)
    if text.start_with?('A'..'Z')
      return true
    end
  end

  # def percentage_good(percentage_good)
    
  end