require "./lib/calculator.rb"

RSpec.describe MarkupCalculator, "determine the final price" do
	it "if base price is 1,299.99 and 3 people are involved with food, final price should be 1,591.58" do
		expect(MarkupCalculator.new.calculate(1299.99, 3, "food")).to eq(1591.58)
	end

	it "if base price is 5,432.00 and 1 person is involved with pharmaceuticals, final price should be 6,199.81" do
		expect(MarkupCalculator.new.calculate(5432, 1, "pharmaceuticals")).to eq(6199.81)
	end

	it "if base price is 12,456.95 and 4 people are involved with books, final price should be 13,707.63" do
		expect(MarkupCalculator.new.calculate(12456.95, 4, "books")).to eq(13707.63)
	end
end
