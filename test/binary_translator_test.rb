require './lib/binary_translator.rb'
require 'minitest/autorun'
require 'minitest/pride'

class BinaryTranslatorTest < MiniTest::Test
  def test_does_it_translate
    bt = BinaryTranslator.new

    assert_equal "000001", bt.translate("a")
    assert_equal "000011", bt.translate("c")
    assert_equal "000101", bt.translate("e")
    assert_equal "010011", bt.translate("s")
    assert_equal "010100010101010010001001001110000111",
      bt.translate("turing")
  end

  def test_does_it_translate_capitals
    bt = BinaryTranslator.new

    assert_equal "000001", bt.translate("A")
    assert_equal "000011", bt.translate("C")
    assert_equal "000101", bt.translate("E")
    assert_equal "010011", bt.translate("S")
    assert_equal "010100010101010010001001001110000111",
      bt.translate("TURING")
  end

  def test_other_symbol_responses
    bt = BinaryTranslator.new

    assert_equal "000000", bt.translate(" ")
    assert_equal "", bt.translate("!@{$#%^&*()}")
    assert_equal "001000000101001100001100001111000000010111001111010010001100000100",
     bt.translate("Hello World!")
  end

  def test_translate_to_text
    bt = BinaryTranslator.new

    assert_equal "a", bt.translate_to_text("000001")
    assert_equal "hello world",
      bt.translate_to_text("001000000101001100001100001111000000010111001111010010001100000100")
  end
end
