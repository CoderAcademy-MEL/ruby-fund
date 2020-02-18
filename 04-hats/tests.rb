require_relative 'index'

describe 'the_hats_problem ' do
  it 'is defined' do
    expect(defined? the_hats_problem).to eql("method")
  end
  it 'returns an array' do
    actual = the_hats_problem.class.to_s
    expect(actual).to eql("Array")
  end
  it 'returns an array with a length of 100' do
    actual = the_hats_problem.length
    expect(actual).to eql(100)
  end
  it 'returns an array containing the correct hat state.' do
    num_string = '0110111101111110111111110111111111101111111111110111111111111110111111111111111101111111111111111110'
    expected_arr = []
    count = 0
    100.times do
      expected_arr << num_string[count]
      count += 1
    end
    actual = the_hats_problem
    expect(actual).to eql(expected_arr)
  end
end
