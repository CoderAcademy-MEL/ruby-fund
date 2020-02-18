require_relative '/home/answer.rb'

describe 'exponent_plus' do
    it 'is defined' do
        expect(defined? exponent_plus).to eql('method')
    end
    it 'takes 2 numer arguments' do
        expect{exponent_plus(2,3)}.to_not raise_error
    end
    it 'It will return the total of the first argument to the power of 2, added to the second argument.' do
        expected = 7
        actual = exponent_plus(2,3)
        expect(expected).to eql(actual)
    end
end

describe 'arr_exp' do
    it 'is defined' do
        expect(defined? arr_exp).to eql('method')
    end
    it 'takes 3 arguments' do
        expect{arr_exp(2,3,[1,2,3])}.to_not raise_error
    end
    it 'It will return each num in the array multiplied by the result of calling the previous method' do
        expected = [7,14,21]
        actual = arr_exp(2,3,[1,2,3])
        expect(actual).to eql(expected)
    end
end