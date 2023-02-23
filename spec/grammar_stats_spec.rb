require "grammar_stats"

describe GrammarStats do
  it "checks for empty string" do
    grammar_stats = GrammarStats.new("")
    expect(grammar_stats.check("")).to eq false
  end

  it "checks for capitals" do
    grammar_stats = GrammarStats.new("A sentence.")
    expect(grammar_stats.check("A sentence.")).to eq true
  end

  it "checks for suitable punctuation" do
    grammar_stats = GrammarStats.new("A short sentence.")
    expect(grammar_stats.check("A short sentence.")).to eq true
  end

  it "checks for lower case starts" do
    grammar_stats = GrammarStats.new("a sloppy sentence.")
    expect(grammar_stats.check("a sloppy sentence.")).to eq false
  end
end