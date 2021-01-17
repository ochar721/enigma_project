require 'time'

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
    key1 = number[0..1].to_i
    key2 = number[1..2].to_i
    key3 = number[2..3].to_i
    key4 = number[3..4].to_i
  end

  def generate_date
    time = Time.new
    date = time.strftime("%d%m%y").to_i
  end

  def squared_date
    squared_number = generate_date * generate_date
    squared_number.to_s[-4..-1].to_i
  end

  def create_offset
    offset  = squared_date.to_s.split('')
    offset1 = offset.to_a[0].to_i
    offset2 = offset.to_a[1].to_i
    offset3 = offset.to_a[2].to_i
    offset4 = offset.to_a[3].to_i
  end


end




#   Consider the date formatted as a number, DDMMYY. If the date is August 4, 1995, it would be represented as 040895.
# Square the numeric form (1672401025)
# Take the last four digits (1025)
# A offset: The first digit (1)
# B offset: The second digit (0)
# C offset: The third digit (2)
# D offset: The fourth digit (5)
  #   def ask(question)
  #       print question
  #       answer= gets.chomp
  #   end
  # answer = ask("What would you like to encrypt? ")
  # puts encrypt(answer, 5)
  # end
