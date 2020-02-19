require_relative "index"

describe 'method_one' do
  it "be defined" do
    expect(defined? method_one).to eql("method")
  end

  it "take a single string argument" do
    expect(method(:method_one).parameters.length).to eql(1)
    expect { method_one("A string") }.to_not raise_error
  end

  it "concatenate the string argument to the string ' will be' and return the new string" do
    actual = method_one("Test")
    expect(actual).to eql("Test will be")
  end
end

describe 'method_two' do
  it "be defined" do
    expect(defined? method_two).to eql("method")
  end

  it "take a single string argument" do
    expect(method(:method_two).parameters.length).to eql(1)
    expect { method_two("A string") }.to_not raise_error
  end

  it "concatenate the string argument to the string ' the ultimate' and return the new string" do
    actual = method_two("Test")
    expect(actual).to eql("Test the ultimate")
  end
end

describe 'method_three' do
  it "be defined" do
    expect(defined? method_three).to eql("method")
  end

  it "take a single string argument" do
    expect(method(:method_three).parameters.length).to eql(1)
    expect { method_three("A string") }.to_not raise_error
  end

  it "concatenate the string argument to the string ' winner.' and return the new string" do
    actual = method_three("Test")
    expect(actual).to eql("Test winner.")
  end
end

describe 'winner_predictor' do
  it "be defined" do
    expect(defined? winner_predictor).to eql("method")
  end

  it "take a single string argument" do
    expect(method(:winner_predictor).parameters.length).to eql(1)
    expect { method_three("A string") }.to_not raise_error
  end

  it "concatenate the string argument to the string ' will be the ultimate winner.' and return the new string" do
    actual = winner_predictor("Test")
    expect(actual).to eql("Test will be the ultimate winner.")
  end
end
