require_relative 'letter_blocks'

blocks = [
  ['B','O'],
  ['X','K'],
  ['D','Q'],
  ['C','P'],
  ['N','A'],
  ['G','T'],
  ['R','E'],
  ['T','G'],
  ['Q','D'],
  ['F','S'],
  ['J','W'],
  ['H','U'],
  ['V','I'],
  ['A','N'],
  ['E','R'],
  ['F','S'],
  ['L','Y'],
  ['P','C'],
  ['Z','M']
]

describe '#can_make_word' do
  context 'is properly defined' do
    it 'is defined' do
      expect(defined?(can_make_word)).to eql('method')
    end

    it 'takes two arguments' do
      expect(method(:can_make_word).parameters.length).to eql(2)
    end

    it 'returns a boolean value' do
      expect(can_make_word(blocks, 'HELLO')).to be_a(FalseClass).or be_a(TrueClass)
    end
  end

  context 'cases where words that can be made' do
    it 'can make the word "A"' do
      expect(can_make_word(blocks, 'A')).to eql(true)
    end

    it 'can make the word "BARK"' do
      expect(can_make_word(blocks, 'BARK')).to eql(true)
    end

    it 'can make the word "TREAT"' do
      expect(can_make_word(blocks, 'TREAT')).to eql(true)
    end

    it 'can make the word "SQUAD"' do
      expect(can_make_word(blocks, 'SQUAD')).to eql(true)
    end

    it 'can make the word "CONFUSE"' do
      expect(can_make_word(blocks, 'CONFUSE')).to eql(true)
    end
  end

  context 'case where words can not be made' do
    it 'can not make the word "BOOK"' do
      expect(can_make_word(BLOCK, 'BOOK')).to eql(false)
    end

    it 'can not make the word "COMMON"' do
      expect(can_make_word(BLOCK, 'COMMON')).to eql(false)
    end

    it 'can not make the word "BOUGHT"' do
      expect(can_make_word(BLOCK, 'BOUGHT')).to eql(false)
    end
  end
end
