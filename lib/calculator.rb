require "./lib/base_markup.rb"
require "./lib/materials.rb"

class MarkupCalculator
	def calculate(base_price, people, material)
		b = BaseMarkup.new

		post_markup_base = b.BaseLineMarkup(base_price)
		people_markup = b.PeopleMultiple(people)
		material_markup = Materials.new.MaterialMarkup(material)

		return (post_markup_base * (1 + (people_markup + material_markup))).round(2)
	end
end