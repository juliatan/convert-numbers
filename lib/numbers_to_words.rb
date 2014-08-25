def convert(number)
  string = number.to_s
  if UNIQUE.keys.include? string
    UNIQUE[string]
  elsif number < 10
    NUMBERS[string]
  elsif number % 10 == 0
    TENS[string]
  elsif number < 20
    teens(string)
  else
    'N/A'
  end
end

UNIQUE = {
  '11' => 'eleven',
  '12' => 'twelve',
  '13' => 'thirteen',
  '15' => 'fifteen'
}

def teens(string)
  NUMBERS[string[1]] + 'teen'
end

NUMBERS = {
  '1' => 'one',
  '2' => 'two',
  '3' => 'three',
  '4' => 'four',
  '5' => 'five',
  '6' => 'six',
  '7' => 'seven',
  '8' => 'eight',
  '9' => 'nine'
}

TENS = {
  '10' => 'ten',
  '20' => 'twenty',
  '30' => 'thirty',
  '40' => 'fourty',
  '50' => 'fifty',
  '60' => 'sixty',
  '70' => 'seventy',
  '80' => 'eighty',
  '90' => 'ninety',
}
