require_relative "index"
require_relative "../13-tax/index"

# calculate_tax_payable(50000)

describe "guess_percentage should" do
  it "be defined" do
    expect(defined? guess_percentage).to eql("method")
  end
  it "return an integer" do
    expect(guess_percentage).to be_an_instance_of(Integer)
  end
end
