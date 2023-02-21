require "check_todo"

describe "check_todo method" do
  it "checks if a block of text includes the string 'TODO'" do
  result = check_todo("")
  # expect(result).to eq []
  expect(result).to eq false
end

  it "checks if a block of text includes the string 'TODO'" do
    result = check_todo("TODO take the bins out.")
    # expect(result).to eq ["take the bins out"]
    expect(result).to eq true
  end

  it "checks if a block of text includes the string 'TODO'" do
    result = check_todo("had a nice coffee.")
    expect(result).to eq false
    # expect(result).to eq []
  end

  it "checks if a block of text includes the string 'TODO'" do
    result = check_todo("TODO clean the wash basin. Had a nice breakfast")
    # expect(result).to eq ["clean the wash basin"]
    expect(result).to eq true
    end
end