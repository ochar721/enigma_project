require "./test/test_helper"
require "./lib/enigma"

class EnigmaTest < Minitest::Test
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_it_can_create_an_alphabet
    enigma = Enigma.new
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, enigma.create_alphabet
  end

  def test_it_can_encrypt_simple_shift

    enigma = Enigma.new
    assert_equal "mjqqt", enigma.encrypt("hello", 5, 0)
    enigma1 = Enigma.new
    assert_equal "tqn nf", enigma1.encrypt("olivia", 5, 0)
  end

  def test_it_can_encrypt_double_shift
    enigma = Enigma.new
    assert_equal "olssv", enigma.encrypt("hello", 5, 2)
  end

  def test_generate_five_random_number
    enigma = Enigma.new
    assert_equal 5, enigma.generate_random_number.to_s.length
  end

  def test__split_number
    enigma = Enigma.new
    assert_equal 2, enigma.split_number.to_s.length
  end
end
