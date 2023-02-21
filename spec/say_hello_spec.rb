require "say_hello"

describe "say_hello method" do
  it "should output hello name" do
    result = say_hello("kay")
    expect(result).to eq "hello kay"
  end
end
