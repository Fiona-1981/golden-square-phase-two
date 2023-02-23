require "diary_entry"

describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("a_title", "some_contents")
    expect(diary_entry.title).to eq "a_title"
    expect(diary_entry.contents).to eq "some_contents"
  end

  describe "#count_words" do
    it "returns number words" do
    diary_entry = DiaryEntry.new("a_title", "some contents here")
    expect(diary_entry.count_words).to eq 3
    end

    it "returns zero when contents is empty" do
      diary_entry = DiaryEntry.new("a_title", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

    describe "#reading_time" do
      context "given a sensible wpm (200)" do
        it "returns the ceiling of the number of minutes to read" do
          diary_entry = DiaryEntry.new("a_title", "one " * 550)
          expect(diary_entry.reading_time(200)).to eq 3
        end
      end

      context "given a wpm of 0" do
        it "fails" do
          diary_entry = DiaryEntry.new("a_title", "blah blah blah")
          expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero."
        end
      end
    end
  end