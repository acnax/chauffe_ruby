dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter(string, dictionnary)
	hash = {}
  string.split.each do |word_corpus|
    dictionnary.each do |word_dico|
      if (word_corpus.match?(/#{word_dico}/i))
        (hash.key?(word_dico)) ? hash[word_dico] += 1 : hash[word_dico] = 1
      end
    end
  end
  hash
end

def word_counter_file(dictionnary)
	hash = {}
	File.foreach("shakespeare.txt") do |string|
		string.split.each do |word_corpus|
    	dictionnary.each do |word_dico|
	      if (word_corpus.match?(/#{word_dico}/i))
	        (hash.key?(word_dico)) ? hash[word_dico] += 1 : hash[word_dico] = 1
	      end
    	end
  	end
  end
  hash
end


def word_counter_2file()
	dictionnary = File.read('swearWords.txt').split
	hash = {}	
	File.foreach("shakespeare.txt") do |string|
		string.split.each do |word_corpus|
    	dictionnary.each do |word_dico|
	      if (word_corpus.match?(/#{word_dico}/i))
	        (hash.key?(word_dico)) ? hash[word_dico] += 1 : hash[word_dico] = 1
	      end
    	end
  	end
  end
  hash
end

