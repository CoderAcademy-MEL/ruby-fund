require_relative "index"

describe 'array_multiplier ' do
  it "should be defined" do
    expect(defined? array_multiplier).to eql("method")
  end
  it "takes 2 arguments" do
    expect(method(:array_multiplier).parameters.length).to eql(2)
  end
  it "returns a new array containing the given array values multiplied by the given multiplier" do
    actual = array_multiplier([1, 2, 3], 2)
    expected = [2, 4, 6]
    expect(actual).to eql(expected)
  end
end
