class Integer
	def to_roman
		remaining_total = self
		numeral = ''
		while remaining_total > 0
			numerals.each  do |dig, roman|
				if remaining_total / dig >= 1
					numeral += roman * (remaining_total / dig).floor
					remaining_total -= (remaining_total / dig).floor * dig
				end
			end
		end
		numeral
	end

	def numerals 
		{ 1000 => 'M',
			900 => 'CM',
			500 => 'D',
			400 => 'CD',
			100 => 'C',
			90 => 'XC',
			50 => 'L',
			40 => 'XL',
			10 => 'X',
			9 => 'IX',
			5 => 'V',
			4 => 'IV',
			1 => 'I' }
		end
		
end