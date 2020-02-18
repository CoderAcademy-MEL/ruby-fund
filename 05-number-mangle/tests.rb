require_relative 'index'

describe 'five_times ' do
    it 'is defined' do
        expect(defined? five_times).to eql("method")
    end
    it 'takes one parameter' do
        expect(method(:five_times).parameters.length).to eql(1)
    end
    it 'returns num parameter multiplied by 5' do
        expected = 45
        actual = five_times(9)
        expect(actual).to eql(expected)
    end
end
describe 'hund_times ' do
    it 'is defined' do
        expect(defined? hund_times).to eql("method")
    end
    it 'takes one parameter' do
        expect(method(:hund_times).parameters.length).to eql(1)
    end
    it 'returns num parameter multiplied by 10' do
        expected = 900
        actual = hund_times(9)
        expect(actual).to eql(expected)
    end
end
describe 'div_seven ' do
    it 'is defined' do
        expect(defined? div_seven).to eql("method")
    end
    it 'takes one parameter' do
        expect(method(:div_seven).parameters.length).to eql(1)
    end
    it 'returns num parameter divided by 7' do
        expected = 1.29
        actual = div_seven(9).round(2)
        expect(actual).to eql(expected).or eql(1)
    end
end
describe 'number_mangle ' do
    it 'is defined' do
        expect(defined? number_mangle).to eql("method")
    end
    it 'takes one parameter' do
        expect(method(:number_mangle).parameters.length).to eql(1)
    end
    it 'returns the result of num parameter multiplied by 5, 100 and then divided by 7' do
        expected = 642.86
        actual = number_mangle(9).round(2)
        expect(actual).to eql(expected).or eql(642)
    end
end