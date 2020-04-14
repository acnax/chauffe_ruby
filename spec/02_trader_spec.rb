require_relative '../lib/02_trader'

describe 'the day_trader method' do 

	it 'return best day to buy and best day to sell' do
		expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
		expect(day_trader([17, 27, 6, 9, 15, 8])).to eq([0,1])
		expect(day_trader([17, 1, 6, 9, 2, 8, 6, 1, 10])).to eq([1,8])
	end

end


