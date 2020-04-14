require_relative '../lib/01_caesar_cypher'

describe 'the caesar_cypher method' do
	it 'should return an encoded string thx to a shift with a number' do
		expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
		expect(caesar_cipher('test', 18)).to eq('lwkl')
		expect(caesar_cipher('corentin aime jouer a fortnite', 18)).to eq('ugjwflaf saew bgmwj s xgjlfalw')
	end
	it 'should return an string if the number is a string or the number is negative or > 26' do
		expect(caesar_cipher('What a string!', 29)).to eq('je peux pas encoder cela')
		expect(caesar_cipher('test', -4)).to eq('je peux pas encoder cela')
		expect(caesar_cipher('corentin aime jouer a fortnite', 'reerreery')).to eq('je peux pas encoder cela')
	end



end