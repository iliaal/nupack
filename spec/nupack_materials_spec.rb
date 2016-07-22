require "./lib/materials.rb"

RSpec.describe Materials, "determine a per-material markup" do
	it "for pharmaceuticals, there is a 7.5% markup" do
		expect(Materials.new.MaterialMarkup("pharmaceuticals")).to eq(0.075)
	end
	it "for food, there is a 13% markup" do
		expect(Materials.new.MaterialMarkup("food")).to eq(0.13)
	end
	it "for electronics, there is a 2% markup" do
		expect(Materials.new.MaterialMarkup("electronics")).to eq(0.02)
	end
	it "for all others, there is no markup" do
		expect(Materials.new.MaterialMarkup("other")).to eq(0)
	end
end
