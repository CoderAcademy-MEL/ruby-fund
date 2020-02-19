require_relative "index"

describe "calculate_floorspace should" do
  it "be defined" do
    expect(defined? calculate_floorspace).to eql("method")
  end
  it "accept two arguments" do
    width = 0
    length = 0
    expect { calculate_floorspace(length, width) }.to_not raise_error
    expect { calculate_floorspace(width) }.to raise_error(ArgumentError)
  end
  it "correctly calculate size" do
    width = 4
    length = 7
    actual = calculate_floorspace(length, width)
    expect(actual).to eql(28)
  end
end

describe "calculate_apartments should" do
  it "be defined" do
    expect(defined? calculate_apartments).to eql("method")
  end
  it "accept one argument" do
    width = 0
    area = 0
    expect { calculate_apartments(area, width) }.to raise_error(ArgumentError)
    expect { calculate_apartments(area) }.to_not raise_error
  end
  it "correctly calculate number of apartments when area is greater then 28" do
    area = 200
    actual = calculate_apartments(area)
    expect(actual).to eql(7)
  end
  it "correctly calculate number of apartments when area is less then 28" do
    area = 0
    actual = calculate_apartments(area)
    expect(actual).to eql(0)
  end
end

describe "calculate_building should" do
  it "be defined" do
    expect(defined? calculate_building).to eql("method")
  end
  it "accept three arguments" do
    width = 0
    length = 0
    levels = 0

    expect { calculate_building(length) }.to raise_error(ArgumentError)
    expect { calculate_building(length, width) }.to raise_error(ArgumentError)
    expect { calculate_building(length, width, levels) }.to_not raise_error
  end
  it "correctly calculate number of apartments when there is one level" do
    width = 14
    length = 28
    levels = 1
    result = { :total_apartments => 14, :total_money_made => 1680000 }
    actual = calculate_building(length, width, levels)
    expect(actual).to eql(result)
  end
  it "correctly calculate number of apartments when there is multiple levels" do
    width = 14
    length = 28
    levels = 3
    result = { :total_apartments => 42, :total_money_made => 5040000 }
    actual = calculate_building(length, width, levels)
    expect(actual).to eql(result)
  end
end
