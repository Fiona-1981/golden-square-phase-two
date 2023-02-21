require "check_todo"

describe "check_todo method" do
  it "returns true if string contains 'TODO' or false if string doesn't contain 'TODO'" do
  result = check_todo("")
  expect(result).to eq false
  end

  it "returns true if string contains 'TODO' or false if string doesn't contain 'TODO'" do
  result = check_todo("TODO top up the bird feeder")
  expect(result).to eq true
  end  

  it "returns true if string contains 'TODO' or false if string doesn't contain 'TODO'" do
  result = check_todo("I love coffee")
  expect(result).to eq false
    end  
end