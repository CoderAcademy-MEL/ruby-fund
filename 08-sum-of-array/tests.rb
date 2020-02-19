require_relative 'index'

describe 'sum_of_array ' do
  it 'is defined' do
    expect(defined? sum_of_array).to eql('method')
  end
  it 'accepts a single parameter of array type' do
    expect { sum_of_array([]) }.to_not raise_error
  end
  it 'correctly calculates the sum of all array elements' do
    expected = 450
    actual = sum_of_array([100, 200, 150])
    expect(expected).to eql(actual)
  end
end
