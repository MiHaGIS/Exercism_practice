class Bob

	def self.hey(phrase)
		if self.question?(phrase) && self.shout?(phrase)
			return "Calm down, I know what I'm doing!"
		elsif self.shout?(phrase)
			return "Whoa, chill out!"
		elsif self.question?(phrase)
			return "Sure."
		elsif self.nothing?(phrase)
			return "Fine. Be that way!"
		end
		"Whatever."
	end

	def self.question?(phrase)
		phrase.gsub(' ', '').end_with?('?')
	end

	def self.shout?(phrase)
		phrase == phrase.upcase && phrase != phrase.downcase
	end

	def self.nothing?(phrase)
		phrase.gsub(/\W/, '') == ''
	end

end
