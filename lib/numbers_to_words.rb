def convert(number)
  string = number.to_s
  digits = string.length

  if digits == 3
    convert_hundreds(string)
  elsif digits == 2
    convert_tens(number)
  elsif digits == 1
    COMPONENTS[string]
  else
    'N/A'
  end
end

def convert_hundreds(string)
  COMPONENTS[string[0]] + ' hundred'
end

def convert_tens(number)
  string = number.to_s

  if COMPONENTS.keys.include? string
    COMPONENTS[string]
  elsif number < 20
    teens(string)
  else
    tens(string)
  end
end

def teens(string)
  COMPONENTS[string[1]] + 'teen'
end

def tens(string)
  COMPONENTS[string[0] + '0'] + ' ' + COMPONENTS[string[1]]
end

COMPONENTS = {
  '1' => 'one',
  '2' => 'two',
  '3' => 'three',
  '4' => 'four',
  '5' => 'five',
  '6' => 'six',
  '7' => 'seven',
  '8' => 'eight',
  '9' => 'nine',
  '10' => 'ten',
  '11' => 'eleven',
  '12' => 'twelve',
  '13' => 'thirteen',
  '15' => 'fifteen',
  '20' => 'twenty',
  '30' => 'thirty',
  '40' => 'fourty',
  '50' => 'fifty',
  '60' => 'sixty',
  '70' => 'seventy',
  '80' => 'eighty',
  '90' => 'ninety'
}