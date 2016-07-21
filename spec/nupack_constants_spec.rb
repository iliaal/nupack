require "./lib/markup.rb"

RSpec.describe BaseMarkup, "describe the fixed markup multiples" do
	it "returns baseline markup of 5%" do
		expect(BaseMarkup::BASE).to eq(0.05)		
	end
	it "returns a per-person multiple of 1.2%" do
		expect(BaseMarkup::PER_PERSON).to eq(0.012)		
	end
end
