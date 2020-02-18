require_relative 'index'

describe 'ten_mult ' do
    it 'is defined' do
        expect(defined? ten_mult).to eql('method')
    end
    it 'takes one parameter' do
        expect { ten_mult( 10 ) }.to_not raise_error
        expect { ten_mult( 10, 10 ) }.to raise_error(ArgumentError)
    end
    it 'returns the parameter multiplied by 10' do
        expected  = 100
        actual = ten_mult(10)
        expect(actual).to eql(expected)
    end
end

describe 'array_mult ' do 
    it 'is defined' do
        expect(defined? array_mult).to eql('method')
    end
    it 'takes one array as a parameter' do
        expect { array_mult( [] ) }.to_not raise_error
        expect { array_mult( [],[] ) }.to raise_error(ArgumentError)
    end
    it 'returns an array with all original values multiplied by 10' do
        expected = [10,20,30]
        actual = array_mult([1,2,3])
        expect(expected).to eql(actual)
    end
end