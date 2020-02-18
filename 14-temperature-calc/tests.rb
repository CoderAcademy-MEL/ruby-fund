require_relative "index"

describe "temperature_conversion should" do
    it "be defined" do
       expect(defined? temperature_conversion).to eql("method")
    end
    it "accept one argument" do
        temperature = 0
        expect { temperature_conversion( temperature ) }.to_not raise_error
        expect { temperature_conversion( temperature, temperature ) }.to raise_error(ArgumentError)
    end
    it "correctly convert 0 degrees frenheit to -18 celsius" do
        temperature = 0
        actual = temperature_conversion( temperature )
        expect(actual).to eql(-18)
    end
    it "correctly convert 32 degrees frenheit to 0 celsius" do
        temperature = 32
        actual = temperature_conversion( temperature )
        expect(actual).to eql(0)
    end
    it "correctly convert 100 degrees frenheit to 37 celsius" do
        temperature = 100
        actual = temperature_conversion( temperature )
        expect(actual).to eql(37)
    end
end



describe "array_temperature_conversion should" do
    it "be defined" do
       expect(defined? array_temperature_conversion).to eql("method")
    end
    it "accept one argument" do
        temperatures = []
        expect { array_temperature_conversion( temperatures ) }.to_not raise_error
        expect { array_temperature_conversion( temperatures, temperatures ) }.to raise_error(ArgumentError)
    end
    it "correctly convert three temperatures from degrees frenheit to celsius" do
        temperatures = [0, 32, 100]
        actual = array_temperature_conversion( temperatures )
        expect(actual).to eql([-18, 0, 37])
    end
end