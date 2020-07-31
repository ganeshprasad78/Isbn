def multiply_value(check_value, even)
  return check_value.to_i * 3 if even

  check_value.to_i * 1
end

def fetch_check_digit(isbn)
  # looping through string length number of times and multiplying based on even or odd
  values = isbn.to_s.chars.map.with_index { |digit, index| multiply_value(digit, (index + 1).even?) }

  # take mod of total and then substract it by 10
  total = values.sum
  final_digit = 10 - (total % 10)

  "#{isbn}#{final_digit}".to_i
end
