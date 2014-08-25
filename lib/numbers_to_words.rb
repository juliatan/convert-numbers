def convert(number)
  if number < 10
    NUMBERS[number]
  elsif number % 10 == 0
    TENS[number]
  else
    'N/A'
  end
end

NUMBERS = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine'
}

TENS = {
  10 => 'ten',
  20 => 'twenty',
  30 => 'thirty',
  40 => 'fourty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety',
}
