class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @count_words = count_words
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "Reading speed must be above zero." unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)

  end
end