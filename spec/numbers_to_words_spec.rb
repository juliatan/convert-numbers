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

  context 'unique numbers from 11 to 19' do
    it 'can convert 11 to eleven' do
      expect(convert(11)).to eq 'eleven'
    end

    it 'can convert 12 to twelve' do
      expect(convert(12)).to eq 'twelve'
    end

    it 'can convert 13 to thirteen' do
      expect(convert(13)).to eq 'thirteen'
    end

    it 'can convert 15 to fifteen' do
      expect(convert(15)).to eq 'fifteen'
    end
  end

  context 'from 14 to 19 excluding 15' do
    it 'can convert 14 to fourteen' do
      expect(convert(14)).to eq 'fourteen'
    end

    it 'can convert 16 to sixteen' do
      expect(convert(16)).to eq 'sixteen'
    end

    it 'can convert 19 to nineteen' do
      expect(convert(19)).to eq 'nineteen'
    end
  end

  context 'from 21 to 99' do
    it 'can convert 21 to twenty one' do
      expect(convert(21)).to eq 'twenty one'
    end

    it 'can convert 99 to ninety nine' do
      expect(convert(99)).to eq 'ninety nine'
    end
  end

  context 'hundreds' do
    it 'can convert 100 to one hundred' do
      expect(convert(100)).to eq 'one hundred'
    end

    it 'can convert 101 to one hundred and one' do
      expect(convert(101)).to eq 'one hundred and one'
    end

    it 'can convert 111 to one hundred and eleven' do
      expect(convert(111)).to eq 'one hundred and eleven'
    end

    it 'can convert 999 to nine hundred and ninety nine' do
      expect(convert(999)).to eq 'nine hundred and ninety nine'
    end
  end

  context 'thousands' do
    it 'can convert 1000 to one thousand' do
      expect(convert(1000)).to eq 'one thousand'
    end

    it 'can convert 1001 to one thousand and one' do
      expect(convert(1001)).to eq 'one thousand and one'
    end

    it 'can convert 1011 to one thousand and eleven' do
      expect(convert(1011)).to eq 'one thousand and eleven'
    end

    it 'can convert 1111 to one thousand one hundred and eleven' do
      expect(convert(1111)).to eq 'one thousand one hundred and eleven'
    end

    it 'can convert 9999 to nine thousand nine hundred and ninety nine' do
      expect(convert(9999)).to eq 'nine thousand nine hundred and ninety nine'
    end
  end

  context 'ten thousands' do
    it 'can convert 10000 to ten thousand' do
      expect(convert(10000)).to eq 'ten thousand'
    end

    it 'can convert 10001 to ten thousand and one' do
      expect(convert(10001)).to eq 'ten thousand and one'
    end

    it 'can convert 10011 to ten thousand and eleven' do
      expect(convert(10011)).to eq 'ten thousand and eleven'
    end

    it 'can convert 10111 to ten thousand one hundred and eleven' do
      expect(convert(10111)).to eq 'ten thousand one hundred and eleven'
    end

    it 'can convert 11000 to elevent thousand' do
      expect(convert(11000)).to eq 'eleven thousand'
    end

    it 'can convert 11111 to eleven thousand one hundred and eleven' do
      expect(convert(11111)).to eq 'eleven thousand one hundred and eleven'
    end

    it 'can convert 99999 to ninety nine thousand nine hundred and ninety nine' do
      expect(convert(99999)).to eq 'ninety nine thousand nine hundred and ninety nine'
    end
  end

  context 'hundred thousands' do
    it 'can convert 100000 to one hundred thousand' do
      expect(convert(100000)).to eq 'one hundred thousand'
    end

    it 'can convert 100001 to one hundred thousand and one' do
      expect(convert(100001)).to eq 'one hundred thousand and one'
    end

    it 'can convert 100011 to one hundred thousand and eleven' do
      expect(convert(100011)).to eq 'one hundred thousand and eleven'
    end

    it 'can convert 100111 to one hundred thousand one hundred and eleven' do
      expect(convert(100111)).to eq 'one hundred thousand one hundred and eleven'
    end

    it 'can convert 101111 to one hundred and one thousand one hundred and eleven' do
      expect(convert(101111)).to eq 'one hundred and one thousand one hundred and eleven'
    end

    it 'can convert 111111 to one hundred and eleven thousand one hundred and eleven' do
      expect(convert(111111)).to eq 'one hundred and eleven thousand one hundred and eleven'
    end

    it 'can convert 999999 to nine hundred and ninety nine thousand nine hundred and ninety nine' do
      expect(convert(999999)).to eq 'nine hundred and ninety nine thousand nine hundred and ninety nine'
    end
  end

  context 'one million' do
    it 'can convert 1000000 to one million' do
      expect(convert(1000000)).to eq 'one million'
    end
  end

end
