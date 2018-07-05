require 'pry'

class BinaryTranslator
  def initialize
    @alpha_to_binary = {
      "a" => "000001",
      "b" => "000010",
      "c" => "000011",
      "d" => "000100",
      "e" => "000101",
      "f" => "000110",
      "g" => "000111",
      "h" => "001000",
      "i" => "001001",
      "j" => "001010",
      "k" => "001011",
      "l" => "001100",
      "m" => "001101",
      "n" => "001110",
      "o" => "001111",
      "p" => "010000",
      "q" => "010001",
      "r" => "010010",
      "s" => "010011",
      "t" => "010100",
      "u" => "010101",
      "v" => "010110",
      "w" => "010111",
      "x" => "011000",
      "y" => "011001",
      "z" => "011010",
      " " => "000000"
    }

    @binary_to_alpha = {
      "000001" => "a",
      "000010" => "b",
      "000011" => "c",
      "000100" => "d",
      "000101" => "e",
      "000110" => "f",
      "000111" => "g",
      "001000" => "h",
      "001001" => "i",
      "001010" => "j",
      "001011" => "k",
      "001100" => "l"
      "001101" => "m",
      "001110" => "n",
      "001111" => "o",
      "010000" => "p",
      "010001" => "q",
      "010010" => "r",
      "010011" => "s",
      "010100" => "t",
      "010101" => "u",
      "010110" => "v",
      "010111" => "w",
      "011000" => "x",
      "011001" => "y",
      "011010" => "z",
      "000000" => ""
    }
  end

  def translate(input)
    binary_array = []
    input_array = input.chars
    input_array.each do |element|
      element = element.downcase
      binary_array << @alpha_to_binary[element]
    end
    return binary_array.join
  end
  # 
  # def translate_to_text(input)
  #   letters_array = []
  #   input_array = input.split(6)
  #   input_array.each do |element|
  #     binary_array << @alpha_to_binary[element]
  #
  # end
end
