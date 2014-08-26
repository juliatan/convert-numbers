def convert(number)
  string = number.to_s
  digits = string.length

  case digits
  when 7
    'one million'
  when (4..6)
    convert_thousands(number)
  when 3
    convert_hundreds(number)
  when 2
    convert_tens(number)
  when 1
    COMPONENTS[string]
  end
end

def convert_thousands(number)
  string = number.to_s
  remainder = number % 1000
  # string[0..-4] drops last 3 digits in string
  multiple = string[0..-4].to_i
  
  number_of_thousands = 
    string.length == 6 ? convert_hundreds(multiple) : convert_tens(multiple)

  if remainder == 0
    number_of_thousands + ' thousand'
  elsif string[-3] == '0'
    number_of_thousands + ' thousand and ' + convert_tens(remainder)
  else
    number_of_thousands + ' thousand ' + convert_hundreds(remainder)
  end
end

def convert_hundreds(number)
  string = number.to_s
  remainder = number % 100
  number_of_hundreds = convert_tens(string[0..-3].to_i)

  if remainder == 0
    number_of_hundreds + ' hundred'
  else
    number_of_hundreds + ' hundred and ' + convert_tens(remainder)
  end
end

def convert_tens(number)
  string = number.to_s

  COMPONENTS.keys.include?(string) ? COMPONENTS[string] : tens(string)
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
  '14' => 'fourteen',
  '15' => 'fifteen',
  '16' => 'sixteen',
  '17' => 'seventeen',
  '18' => 'eighteen',
  '19' => 'nineteen',
  '20' => 'twenty',
  '30' => 'thirty',
  '40' => 'fourty',
  '50' => 'fifty',
  '60' => 'sixty',
  '70' => 'seventy',
  '80' => 'eighty',
  '90' => 'ninety'
}