require_relative 'word_balance'

describe '#word_balance' do
  context 'it is properly defined' do
    it 'is defined' do
      expect(defined?(word_balance)).to eql('method')
    end

    it 'takes a single argument' do
      expect(method(:word_balance).parameters.length).to eql(1)
    end

    it 'returns a single letter' do
      actual = word_balance('aaa')
      expect(actual).to be_a(String)
      expect(actual).length.to eql(1)
    end
  end

  context 'test cases' do
    it 'when given "aaaaaaa" returns "a"' do
      expect(word_balance('aaaaaaa')).to eql('a')
    end

    it 'when given "ipfbdbd" returns "f"' do
      expect(word_balance('ipfbdbd')).to eql('f')      
    end
  end
end