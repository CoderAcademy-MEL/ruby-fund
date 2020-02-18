require_relative '/home/answer.rb'

describe 'calculate_area ' do
    it 'is defined' do
        expect(defined? calculate_area).to eql('method')
    end
    it 'takes two number arguments' do
        expect{calculate_area(15,30)}.to_not raise_error
    end
    it 'returns the area calculation of the given arguments' do
        expected = 225
        actual = calculate_area(15,30)
        expect(actual).to eql(expected).or eql(225.0)
    end
end
describe 'calculate_volume ' do
    it 'is defined' do
        expect(defined? calculate_volume).to eql('method')
    end
    it 'takes two number arguments' do
        expect{calculate_volume(15,30)}.to_not raise_error
    end
    it 'returns the volume calculation of the given arguments' do
        expected = 15750
        actual = calculate_volume(225,70)
        expect(actual).to eql(expected).or eql(15750.0)
    end
end
describe 'calculate_table_volume ' do
    it 'is defined' do
        expect(defined? calculate_table_volume).to eql('method')
    end
    it 'takes three number arguments' do
        expect{calculate_table_volume(15,30,70)}.to_not raise_error
    end
    it 'returns the volume of the given three numbers' do
        expected = 15750
        actual = calculate_table_volume(15,30,70)
        expect(actual).to eql(expected).or eql(15750.0)
    end
end