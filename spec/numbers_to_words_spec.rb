require 'numbers_to_words'

describe 'When converting numbers to words' do

  context 'from 1..9' do
    it 'can convert 1 to one' do
      expect(convert(1)).to eq 'one'
    end

    it 'can convert 2 to two' do
      expect(convert(2)).to eq 'two'
    end

    it 'can convert 3 to three' do
      expect(convert(3)).to eq 'three'
    end
  end

end
