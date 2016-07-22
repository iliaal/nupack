class Materials
	def MaterialMarkup (material) 
		case material
			when "pharmaceuticals"
				return 0.075
			when "food"
				return 0.13
			when "electronics"
				return 0.02
			else
				return 0
		end	
	end
end