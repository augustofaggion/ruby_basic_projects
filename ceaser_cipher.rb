def caesar_cipher(str, shift)
  shift = shift % 26

  result = ""

  str.each_char do |char|
    if char.match(/[a-zA-Z]/)
      is_uppercase = char == char.upcase
      ascii_code = char.ord

      shifted_ascii_code = ascii_code + shift
      shifted_ascii_code -= 26 if is_uppercase && shifted_ascii_code > 90
      shifted_ascii_code -= 26 if !is_uppercase && shifted_ascii_code > 122

      shifted_char = shifted_ascii_code.chr
      result += shifted_char
    else
      result += char
    end
  end
  result
end

puts caesar_cipher("What a string!", 5)