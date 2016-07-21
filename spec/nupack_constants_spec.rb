require "./lib/markup.rb"

RSpec.describe BaseMarkup, "describe the fixed markup multiples" do
	it "returns baseline markup of 5%" do
		expect(BaseMarkup::BASE).to eq(0.05)		
	end
	it "returns a per-person multiple of 1.2%" do
		expect(BaseMarkup::PER_PERSON).to eq(0.012)		
	end
end

RSpec.describe BaseMarkup, "perform basic calculations based on # of people involved" do
	it "if 5 people are involved should be 6%" do
		expect(BaseMarkup.new.PeopleMultiple(5)).to eq(0.06)
	end

	it "if quantity of people is less than 1 return an error" do
		expect { BaseMarkup.new.PeopleMultiple(0) }.to raise_error("supplied value is less than 1")
	end

	it "if quantity of people is not an integer return an error" do
		expect { BaseMarkup.new.PeopleMultiple("foo") }.to raise_error("supplied value is not an integer")
	end
end

RSpec.describe BaseMarkup, "determine the price after initial markup" do
	it "Given price of 1000, post-markup value should be 1,050" do
		expect(BaseMarkup.new.BaseLineMarkup(1000)).to eq(1050)
	end

	it "if supplied price is less than 0.01 return an error" do
		expect { BaseMarkup.new.BaseLineMarkup(-1) }.to raise_error("supplied value is less than 1")
	end

	it "if supplied price is not a numeric value return an error" do
		expect { BaseMarkup.new.BaseLineMarkup("foo") }.to raise_error("supplied value is not a number")
	end
end
