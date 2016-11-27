module Chess
 
  # Represents the king piece
  class King < Piece
    attr_accessor :moves
    attr_reader :symbol

    def initialize(color, location)
      super
      @symbol = @color == "white" ? "\u{2654}" : "\u{265A}"
      @moves = possible_moves
    end

    def possible_moves
      x, y = @location
      moves = [[x + 1, y], [x + 1, y + 1], [x, y + 1], [x - 1, y + 1],
               [x - 1, y], [x - 1, y - 1], [x, y - 1], [x + 1, y - 1]]

      moves.select do |position| 
        position.all? { |value| value.between?(0,7) }
      end
    end

  end

end