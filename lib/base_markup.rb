class BaseMarkup
	BASE=0.05
	PER_PERSON=0.012

	def PeopleMultiple(n)
		if (!n.kind_of? Integer)
			raise "supplied value is not an integer"
		end
		if (n < 1)
			raise "supplied value is less than 1"
		end

		return PER_PERSON * n
	end

	def BaseLineMarkup(price)
		if (!price.kind_of? Numeric)
			raise "supplied value is not a number"
		end
		if (price < 0.01)
			raise "supplied value is less than 1"
		end

		return price * (1 + BASE)
	end
end	
