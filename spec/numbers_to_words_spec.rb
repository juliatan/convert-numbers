require 'numbers_to_words'

describe "When converting numbers to words" do

  it 'can convert 1 to one' do
    expect(convert(1)).to eq 'one'
  end

end
