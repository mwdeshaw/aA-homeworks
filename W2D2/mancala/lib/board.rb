class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, i|
      unless i == 6 || i == 13
        4.times do
          cup << :stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Starting cup is empty" if @cups[start_pos].empty?  
  end

  def make_move(start_pos, current_player_name)
    stone_storage = @cups[start_pos]
    @cups[start_pos] = []

    pos_idx = start_pos
    until stone_storage.empty?
      pos_idx += 1
      pos_idx = 0 if pos_idx > 13

      if pos_idx == 6
        @cups[6] << stone_storage.pop if current_player_name == @name1
      elsif pos_idx == 13
        @cups[13] << stone_storage.pop if current_player_name == @name2
      else
        @cups[pos_idx] << stone_storage.pop
      end
    end

    render
    next_turn(pos_idx) 
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end 

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..6].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
  end

  def winner
    player1_stones = @cups[6].count
    player2_stones = @cups[13].count

    if player1_stones == player2_stones
      :draw
    else
      if player1_stones > player2_stones
        return @name1
      else
        @name2
      end
    end
  end

end
