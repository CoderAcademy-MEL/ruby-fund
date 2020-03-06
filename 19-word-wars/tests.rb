require_relative 'word_wars'

describe '#battle' do
  context 'when properly defined' do
    it 'be defined' do
      expect(defined?(battle)).to eql('method')
    end

    it 'takes two arguments' do
      expect(method(:battle).parameters.length).to eql(2)
    end

    it 'returns one of the inputed strings' do
      expect(battle('hello', 'world')).to eql('hello').or eql('world')
    end
  end

  context 'test cases' do
    it 'returns "world" with inputs "hello" and "world"' do
      expect(battle('hello', 'world')).to eql('world')
    end

    it 'returns "alligator" with inputs "alligator" and "elephant' do
      expect(battle('alligator', 'elephant')).to eql('alligator')
    end

    it 'returns "conviviality" with inputs "indubitably" and "conviviality"' do
      expect(battle('indubitably', 'conviviality')).to eql('conviviality')
    end
  end
end
