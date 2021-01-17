class Enigma
    attr_reader

  def initialize
      # @message         = message
      # @random_number   = random_number
      # # @date            = date
  end

  def create_alphabet
    alphabet = ("a".."z").to_a << " "
  end

  def encrypt(message, shift, date)
    return_message = ""
    message.each_char do |letter|
      if !create_alphabet.include?(letter.downcase)
        return_message += letter
      else
        old_index = create_alphabet.index(letter)
        new_index = (old_index + shift + date) % 27
        return_message += create_alphabet[new_index]
      end
    end
    return_message
  end

  def generate_random_number
    rand.to_s[2..6]
  end

  def split_number
    number  = generate_random_number
    number1 = number[0..1].to_i
    number2 = number[1..2].to_i
    number3 = number[2..3].to_i
    number4 = number[3..4].to_i
  end

  # def generate_date
  #
  #
  # end
end
  #
  #   def ask(question)
  #       print question
  #       answer= gets.chomp
  #   end
  # answer = ask("What would you like to encrypt? ")
  # puts encrypt(answer, 5)
  # end
