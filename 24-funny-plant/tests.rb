require_relative 'funny_plant'

describe '#funny_plant' do
  context 'when properly defined' do
    it 'is defined' do
      expect(defined?(funny_plant)).to eql('method')
    end

    it 'takes two arguments' do
      expect(method(:funny_plant).parameters.length).to eql(2)
    end

    it 'returns an integer' do
      expect(funny_plant(100, 1)).to be_a(Integer)
    end
  end

  context 'test cases' do
    it 'returns correctly given 15 people and 1 plant' do
      expect(funny_plant(15, 1)).to eql(5)
    end

    it 'returns correctly given 200 people and 15 plants' do
      expect(funny_plant(200, 15)).to eql(5)
    end

    it 'returns correctly given 50,000 people and 1 plant' do
      expect(funny_plant(50_000, 1)).to eql(14)
    end

    it 'returns correctly given 150,000 people and 250 plants' do
      expect(funny_plant(150_000, 250)).to eql(9)
    end
  end
end
