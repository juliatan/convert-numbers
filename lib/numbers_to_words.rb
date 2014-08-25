def convert(number)
  if number < 10
    NUMBERS[number]
  elsif number = 10
    'ten'
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
