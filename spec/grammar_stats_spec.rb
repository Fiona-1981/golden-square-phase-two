# Collab with Dilan, or rather, help from Dilan!
require "grammar_stats"

describe GrammarStats do
  it "checks for empty string" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("")).to eq false
  end

  it "checks for capitals" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("A sentence.")).to eq true
  end

  it "checks for suitable punctuation" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("A short sentence")).to eq false
  end

  it "checks for lower case starts" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("a sloppy sentence.")).to eq false
  end

  it "checks if any text has been checked" do
    grammar_stats = GrammarStats.new
    expect { grammar_stats.percentage_good }.to raise_error "Nothing has been entered."
  end

  it "counts the number of true results" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("A sentence.")
    expect(grammar_stats.percentage_good).to eq 100
  end

  it "counts the number of true results" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("A sentence.")
    grammar_stats.check("A sentence!")
    grammar_stats.check("A sentence")
    expect(grammar_stats.percentage_good).to eq 66
  end
  
end