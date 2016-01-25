  def caesar_cipher(string, shift_factor)
    (0..(string.length - 1)).each do |index|
        wrap_value = 0
        if ('A'..'Z').to_a.include?(string[index])
          wrap_value = 65
        elsif ('a'..'z').to_a.include?(string[index])
          wrap_value = 97
        end
        new_value = (((string[index].ord - wrap_value) + shift_factor) % 26) + wrap_value
        string[index] = new_value.chr if wrap_value == 65 || wrap_value == 97
    end
    puts string
    return string
  end

  print "enter string: "
  input = gets.chomp
  print "enter shift factor: "
  shift = gets.chomp.to_i

  caesar_cipher(input, shift)
