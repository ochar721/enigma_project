require "./test/test_helper"
require "./lib/enigma"

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new("Olivia", 5, 2)
    assert_instance_of Enigma, enigma
  end

  def test_it_can_create_an_alphabet
    enigma = Enigma.new("Olivia", 5, 2)
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, enigma.create_alphabet
  end

  def test_it_can_encrypt_simple_shift
    skip
    enigma = Enigma.new("hello", 5)
    assert_equal "mjqqt", enigma.encrypt("hello", 5)
    enigma1 = Enigma.new("olivia", 5)
    assert_equal "tqn nf", enigma1.encrypt("olivia", 5)
  end

  def test_it_can_encrypt_double_shift
    enigma1 = Enigma.new("hello", 5, 2)
    assert_equal "olssv", enigma1.double_encrypt("hello", 5, 2)
  end
end
