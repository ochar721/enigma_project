class Keys
  def initialize(random_number)
    @random_number = random_number.to_s
  end

  def generate_key
    @random_number.rand(5)
  end
end
#   The keys are created by generating a random five digit number, like 02715, and splitting it up like so:
#
# A key: first two digits (02)
# B key: second and third digits (27)
# C key: third and fourth digits (71)
# D key: fourth and fifth digits (15)
