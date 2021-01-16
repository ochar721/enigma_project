require_relative 'test_helper'
require './lib/enigma'
require './lib/keys'

class KeysTest < Minitest::Test
  def test_it_exists
    keys = Keys.new("")
    assert_instance_of Keys, keys
  end
  
end
