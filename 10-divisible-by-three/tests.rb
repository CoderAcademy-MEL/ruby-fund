require_relative '/home/answer.rb'

describe 'is_div ' do
    it 'is defined' do
        expect(defined? is_div).to eql('method')
    end
    it 'takes one number argument' do
        expect{is_div(10)}.to_not raise_error
    end
    it 'returns true where the number is divisable by 3' do
        expected = false
        actual = is_div(10)
        expect(actual).to eql(expected)
    end
end
describe 'process_array' do
    it 'is defined' do
        expect(defined? process_array).to eql('method')
    end
    it 'takes one array argument' do
        expect{process_array([10,20,30])}.to_not raise_error
    end
    it 'returns an array of arrays where the first array contains all nums (given in the array argument) divisable by 3, and the second contains the remaining numbers.' do
        expected = [[30],[10,20]]
        actual = process_array([10,20,30])
        expect(actual).to eql(expected)
    end
end