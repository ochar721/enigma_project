require './lib/enigma'

enigma = Enigma.new
enigma.start


def start
  ask_for_message
  user_prompt = gets.chomp.downcase
end
