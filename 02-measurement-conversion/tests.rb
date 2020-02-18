require_relative "index"

describe 'feet_to_inches ' do
  it "should be defined" do
    expect(defined? feet_to_inches).to eql("method")
  end
  it "takes a single argument" do
    expect(method(:feet_to_inches).parameters.length).to eql(1)
  end
  it "converts feet to inches" do
    actual = feet_to_inches(10.5)
    expect(actual).to eql(126.0)
  end
end

describe 'inches_to_cms ' do
  it "should be defined" do
    expect(defined? inches_to_cms).to eql("method")
  end
  it "takes a single argument" do
    expect(method(:inches_to_cms).parameters.length).to eql(1)
  end
  it "converts inches to cms" do
    actual = inches_to_cms(10.5)
    expect(actual).to eql(26.67)
  end
end

describe 'feet_to_cms ' do
  it "should be defined" do
    expect(defined? feet_to_cms).to eql("method")
  end
  it "takes a single argument" do
    expect(method(:feet_to_cms).parameters.length).to eql(1)
  end
  it "converts feet to cms" do
    actual = feet_to_cms(10.5)
    expect(actual).to eql(320.04)
  end
end
