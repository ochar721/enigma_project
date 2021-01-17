class Enigma
    attr_reader :enigma_cipher

  def initialize(message, random_number, date)
      @message         = message
      @random_number   = random_number
      @date            = date
  end

  def create_alphabet
    alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message, shift)
    return_message = ""
    message.each_char do |letter|
      if create_alphabet.include? (letter.downcase)
        shift.times {letter = letter.next}
      end
    return_message << letter[-1]
    end
   return_message
  end

  def double_encrypt(message, random_number, date)
    return_message = ""
    message.each_char do |letter|
      if create_alphabet.include? (letter.downcase)
        (random_number + date).times {letter = letter.next}
      end
     return_message << letter[-1]
     end
    return_message
  end

end
  #
  #   def ask(question)
  #       print question
  #       answer= gets.chomp
  #   end
  # answer = ask("What would you like to encrypt? ")
  # puts encrypt(answer, 5)
  # end
