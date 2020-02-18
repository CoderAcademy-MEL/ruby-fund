require_relative 'index'

describe 'true_or_false ' do
    it 'is defined' do
        expect(defined? true_or_false).to eql("method")
    end
    it 'takes one argument' do
        expect{true_or_false(1)}.to_not raise_error
    end
    it 'returns true or false for a given number being even' do
        expected = false
        actual = true_or_false(3)
        expect(expected).to eql(actual)
    end
end
describe 'div_or_mult_two ' do
    it 'is defined' do
        expect(defined? div_or_mult_two).to eql("method")
    end
    it 'take one argument' do
        expect{div_or_mult_two(10)}.to_not raise_error
    end
    it 'returns the argument divided by 2 if even, or else multiplied by 2 if odd' do
        expected = 5
        actual = div_or_mult_two(10)
        expect(actual).to eql(expected)
    end
end