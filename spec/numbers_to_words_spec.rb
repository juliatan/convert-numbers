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

  context 'from 10 to 90 in multiples of 10' do
    it 'can convert 10 to ten' do
      expect(convert(10)).to eq 'ten'
    end

    it 'can convert 20 to twenty' do
      expect(convert(20)).to eq 'twenty'
    end

    it 'can convert 30 to thirty' do
      expect(convert(30)).to eq 'thirty'
    end
  end

  context 'from 11 to 12' do
    it 'can convert 11 to eleven' do
      expect(convert(11)).to eq 'eleven'
    end
  end

end
