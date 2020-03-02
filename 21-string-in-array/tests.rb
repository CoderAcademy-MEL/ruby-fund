require_relative 'element_index'

describe '#element_index' do
  context 'when properly defined' do
    it 'to be defined' do
      expect(defined?(element_index)).to eql('method')
    end

    it 'takes two arguments' do
      expect(method(:element_index).parameters.length).to eq(2)
    end

    it 'returns an integer or nil' do
      expect(element_index(['hello'], 'hello')).to be_a(Integer).or eql(nil)
    end
  end

  context 'test cases' do
    it 'returns nil if the string can not be found' do
      expect(element_index(%w[hello world], 'fish')).to eql(nil)
    end
    it 'returns the correct index of the string' do
      expect(element_index(%w[hello world fish], 'world')).to eql(1)
    end
  end
end
