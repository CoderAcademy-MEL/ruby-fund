require_relative 'index'

describe 'calculate ' do
  it 'is defined' do
    expect(defined? calculate).to eql('method')
  end
  it 'takes two array arguments' do
    expect { calculate([1, 2, 3], [4, 5, 6]) }.to_not raise_error
  end
  it 'returns a new array containing the sum of parallel elements of array1 and array2' do
    expected = [5, 7, 9]
    actual = calculate([1, 2, 3], [4, 5, 6])
    expect(actual).to eql(expected)
  end
end
