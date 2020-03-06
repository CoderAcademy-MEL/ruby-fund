require_relative "index"
require_relative "../13-tax/index"

describe "tax_difference should" do
  it "be defined" do
    expect(defined? tax_difference).to eql("method")
  end
  it "return the correct values #1" do
    expect(tax_difference(100_000, 20)).to eql({ guess: 20, actual_percentage: 24.632, difference: 4 })
  end
  it "return the correct values #2" do
    expect(tax_difference(60_000, 50)).to eql({ guess: 50, actual_percentage: 18.41166666666667, difference: 32 })
  end
end
