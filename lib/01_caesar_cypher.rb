def caesar_cipher(string, number)

	if number.is_a?(Integer) && number >= 0 && number <= 26

		c_ascii = string.chars.map{ |c| c.match?(/[[:alpha:]]/) ? c.ord : c}
		crypt = convert_ascii(c_ascii, number)
		result = crypt.map{ |c| c.chr}.join
		return result

	else 

		return 'je peux pas encoder cela'

	end
end

def convert_ascii(ascii, number)
	crypt = []
	ascii.each do |c|
		if c.is_a?(Integer) # si c'est un entier on fait le decalage avec les test ci dessous
			# permet de repasser de Z à A ou a à z ou juste faire le decalage si on ne depasse pas Z
			if((c + number) > 122)
				crypt << (c + number) - 26
			elsif((c + number) > 90 && (c + number) < 97)
				crypt << (c + number) - 26
			else
				crypt << (c + number)
			end
		else
			crypt << c
		end
	end
	return crypt
end

