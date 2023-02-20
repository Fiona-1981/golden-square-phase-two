require "count_words"

describe "count_words method" do
  it "returns number of words in string" do
    result = count_words("")
    expect(result).to eq (0)
  end

  it "returns number of words in string" do
    result = count_words("Hi there how are you")
    expect(result).to eq (5)
  end

    it "returns number of words in string" do
      result = count_words("Had breakfast")
      expect(result).to eq (2)
    end
end