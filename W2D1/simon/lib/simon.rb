class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until self.game_over == true
      self.take_turn
    end

    self.game_over_message
    self.reset_game
  end

  def take_turn
    display = self.show_sequence
    guess = self.require_sequence

    if display == guess
      self.round_success_message
      self.sequence_length += 1
    else
      self.game_over = true
    end
  end

  def show_sequence
    self.add_random_color
    p seq
  end

  def require_sequence
    puts "Please guess the color sequence in lowercase letters:"
    gets.chomp.split(",").join(" ").split(" ")
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Congrats! You won this round!"
  end

  def game_over_message
    puts "Game over! Please try again"
  end

  def reset_game
    self.game_over = false
    self.sequence_length = 1
    self.seq = []
  end

end