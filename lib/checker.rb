require './lib/game'

class Checker
  attr_reader :guess, :guess_tries

  def initialize(guess, computer)
    @guess = guess
    @computer = computer
    @guess_tries = 0
  end

  def compare
    @guess == @computer
  end

  def compare_position
    position_counter = 0
    if @guess[0] == @computer[0]
      position_counter += 1
    end
    if @guess[1] == @computer[1]
      position_counter += 1
    end
    if @guess[2] == @computer[2]
      position_counter += 1
    end
    if @guess[3] == @computer[3]
      position_counter += 1
    end
    position_counter
  end

  def colors
    correct_color = 0
    
    g1_dup = @guess.find_all do |color|
      @guess.count(color) > 1
    end

    c1_dup = @computer.find_all do |color|
      @computer.count(color) > 1
    end

    # g1_dup
    # c1_dup

    diff = @computer - @guess
    diff_dup = c1_dup - g1_dup

    correct_color = 4 - (diff.uniq.count + diff_dup.uniq.count)
  end


  # def r_color
  #   gr = @guess.count('r')
  #   cr = @computer.count('r')
  #   diff = cr - gr
  #
  #   if gr == cr
  #     gr
  #   elsif gr < cr
  #
    # time to start considering hashes

  # end

  # def colors_array  # [rbgy] - [rggy] = 4 - [g].count = 3
  #   color_compare = []
  #   color_compare = @guess - @computer
  # end
  #
  #
  # # Count R's B's G's Y's
  # def guess_colors
  #   r = @guess.count('r') # = 2
  #   y = @guess.count('y')
  #   b = @guess.count('b')
  #   g = @guess.count('g')
  #   count = r + y + b + g
  # end
  #
  # def computer_colors
  #   r = @computer.count('r') # = 1
  #   y = @computer.count('y')
  #   b = @computer.count('b')
  #   g = @computer.count('g')
  #   count = r + y + b + g
  # end
  #
  # def analyze_colors
  #   gr = @guess.count('r')
  #   gy = @guess.count('y')
  #   gb = @guess.count('b')
  #   gg = @guess.count('g')
  #   gcount = gr + gy + gb + gg
  #
  #   cr = @computer.count('r')
  #   cy = @computer.count('y')
  #   cb = @computer.count('b')
  #   cg = @computer.count('g')
  #   ccount = cr + cy + cb + cg
  #
  #   return @guess.count('r') if gr - cr == 0
  # end
  # def analyze_colors
  #   color_counter = 0
  #   @guess.each do |color|
  #     4.times do
  #       if color == @computer[0]
  #         color_counter += 1
  #       @computer.rotate
  #       else
  #       end
  #     end
  #   end
  #   color_counter
  # end


  # returns number of correct colors (.each)
  # def analyze_colors
  #   color_counter = 0
  #   @guess.each do |color|
  #     if color == @computer[0]
  #       color_counter += 1
  #     elsif color == @computer[1]
  #       color_counter += 1
  #     elsif color == @computer[2]
  #       color_counter += 1
  #     elsif
  #       color == @computer[3]
  #         color_counter += 1
  #     end
  #   end
  #   color_counter
  #   # @guess[0] == @computer[0..3]
  # end
end
