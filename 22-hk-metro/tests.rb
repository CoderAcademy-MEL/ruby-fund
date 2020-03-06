require_relative 'hk_metro'

STATIONS = [
  'Lok Ma Chau',
  'Sheung Shui',
  'Fanling',
  'Tai Wo',
  'Tai Po Market',
  'University',
  'Fo Tan',
  'Sha Tin',
  'Tai Wai',
  'Kowloon Tong',
  'Mong Kok East',
  'Hung Hom'
].freeze

describe '#find_route' do
  context 'when properly defined' do
    it 'be defined' do
      expect(defined?(find_route)).to eql('method')
    end

    it 'takes a single argument' do
      expect(method(:find_route).parameters.length).to eql(1)
    end

    it 'returns an array or nil' do
      origin = 'Fanling'
      destination = 'University'
      actual = find_route({ origin: origin, destination: destination, stations: STATIONS })
      expect(actual).to be_a(Array).or eql(nil)
    end
  end

  context 'when there is no path' do
    it 'returns nil if the destination is not in the array' do
      origin = 'Fanling'
      destination = 'Fake Station'
      actual = find_route({ origin: origin, destination: destination, stations: STATIONS })
      expect(actual).to eql(nil)
    end

    it 'returns nil if the origin is not in the array' do
      origin = 'Fake Station'
      destination = 'Fanling'
      actual = find_route({ origin: origin, destination: destination, stations: STATIONS })
      expect(actual).to eql(nil)
    end
  end

  context 'when there is a path' do
    it 'return the correct path with the origin index before the destination index in the array' do
      origin = 'Fanling'
      destination = 'Fo Tan'
      actual = find_route({ origin: origin, destination: destination, stations: STATIONS })
      expect(actual).to eql(['Fanling',
                             'Tai Wo',
                             'Tai Po Market',
                             'University',
                             'Fo Tan'])
    end

    it 'returns the correct path with the origin index after the destination index in the array' do
      origin = 'Mong Kok East'
      destination = 'University'
      actual = find_route({ origin: origin, destination: destination, stations: STATIONS })
      expect(actual).to eql(['Mong Kok East',
                             'Kowloon Tong',
                             'Tai Wai',
                             'Sha Tin',
                             'Fo Tan',
                             'University'])
    end

    it 'returns the full path heading from the first station to the last' do
      origin = 'Lok Ma Chau'
      destination = 'Hung Hom'
      actual = find_route({ origin: origin, destination: destination, stations: STATIONS })
      expect(actual).to eql(STATIONS)
    end

    it 'returns the full path heading from the last station to the first' do
      origin = 'Hung Hom'
      destination = 'Lok Ma Chau'
      actual = find_route({ origin: origin, destination: destination, stations: STATIONS })
      expect(actual).to eql(STATIONS.reverse)
    end

    it 'returns the path when the origin and destination stations are the same' do
      origin = "Fo Tan"
      destination = "Fo Tan"
      actual = find_route({ origin: origin, destination: destination, stations: STATIONS })
      expect(actual).to eql(["Fo Tan"])
    end
  end
end
