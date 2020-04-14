def sum_of_3_or_5_multiples(final_number)
  final_sum = 0	# variable pour add initialiser à 0

	if (final_number.is_a?(Integer) && final_number >= 0) # test si nous obtenons bien un entier positif
		final_number.times do |current_number|	# boucle pour parcourirs notre numero de 0 à final number

			if is_multiple_of_3_or_5?(current_number)	# test s'il est multiple de 3 ou 5
				final_sum += current_number	# si oui on l'ajoute à notre variable servant a l'add
			end

		end
	else 
		return 'tard plus' # si on a pas un entier positif au départ on stop tout
	end

	return final_sum # retour du resultat final
end


def is_multiple_of_3_or_5?(current_number)
	(current_number%3).zero? || (current_number%5).zero? ? true : false
end