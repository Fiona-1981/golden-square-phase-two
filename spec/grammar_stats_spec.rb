require "grammar_stats"

describe GrammarStats do
  it "returns true or false if string starts with a capital" do
  grammar_stats = GrammarStats.new("A not sloppy sentence.")
  expect(grammar_stats.check).to eq true
  end
end