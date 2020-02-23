require_relative 'index'

describe 'high_low' do
  context 'when the method is properly defined' do
    it 'be defined' do
      expect(defined?(high_low)).to eql('method')
    end

    it 'takes a single argument' do
      expect(method(:high_low).parameters.length).to eql(1)
    end

    it 'returns a String' do
      expect(high_low('1 2')).to be_a(String)
    end
  end

  context 'It should return the correct high low values' do
    it 'correctly returns the correct high and low number' do
      expected = '542 -214'
      actual = high_low('4 5 29 54 4 0 -214 542 -64 1 -3 6 -6')
      expect(actual).to eql(expected)
    end

    it 'correctly returns with negative numbers' do
      expected = '2813 -245'
      actual = high_low('2813 -245 311 139 -218 963 2606')
      expect(actual).to eql(expected)
    end

    it 'correctly returns with repeated numbers' do
      expected = '42 42'
      actual = high_low('42 42 42 42 42')
      expect(actual).to eql(expected)
    end

    it 'correctly returns with a single number as input' do
      expected = '13 13'
      actual = high_low('13')
      expect(actual).to eql(expected)
    end
  end
end
