def convert(number)
  string = number.to_s
  digits = string.length

  if digits == 5
    convert_ten_thousands(number)
  elsif digits == 4
    convert_thousands(number)
  elsif digits == 3
    convert_hundreds(number)
  elsif digits == 2
    convert_tens(number)
  elsif digits == 1
    COMPONENTS[string]
  else
    'N/A'
  end
end

def convert_ten_thousands(number)
  string = number.to_s
  multiple = number / 10000
  remainder = number - ( 10000 * multiple )
  number_of_thousands = convert_tens(string[0..1].to_i)

  # if number % 10000 == 0
  #   COMPONENTS[string[0..1]] + ' thousand'
  # elsif string[2] == '0'
  #   COMPONENTS[string[0..1]] + ' thousand and ' + convert_tens(remainder)
  # else
  #   COMPONENTS[string[0..1]] + ' thousand ' + convert_hundreds(remainder)
  # end

  if number % 10000 == 0
    number_of_thousands + ' thousand'
  elsif string[2] == '0'
    number_of_thousands + ' thousand and ' + convert_tens(remainder)
  else
    number_of_thousands + ' thousand ' + convert_hundreds(remainder)
  end
end

def convert_thousands(number)
  string = number.to_s
  multiple = number / 1000
  remainder = number - ( 1000 * multiple )

  if number % 1000 == 0
    COMPONENTS[string[0]] + ' thousand'
  elsif string[1] == '0'
    COMPONENTS[string[0]] + ' thousand and ' + convert_tens(remainder)
  else
    COMPONENTS[string[0]] + ' thousand ' + convert_hundreds(remainder)
  end
end

def convert_hundreds(number)
  string = number.to_s
  multiple = number / 100

  if number % 100 == 0
    COMPONENTS[string[0]] + ' hundred'
  else
    remainder = number - ( 100 * multiple )
    COMPONENTS[string[0]] + ' hundred and ' + convert_tens(remainder)
  end
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