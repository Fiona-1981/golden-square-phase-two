class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    title
  end

  def contents
    contents
  end

  def count_words
    count_words
  end

  def reading_time(wpm)
    reading_time = (count_words / wpm).floor
  end

  def reading_chunk(wpm, minutes)

  end
end