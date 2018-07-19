class Board


  def initialize
  @layout ={ "A" => [".",".",".",".",".","."],
      "B" => [".",".",".",".",".","."],
      "C" => [".",".",".",".",".","."],
      "D" => [".",".",".",".",".","."],
      "E" => [".",".",".",".",".","."],
      "F" => [".",".",".",".",".","."],
      "G" => [".",".",".",".",".","."]
    }
  end



  def print_layout

   rows = @layout.values.transpose
   new_rows = rows.map do |row|
              row.join
            end
   @layout.keys.join + ("\n") + new_rows.reverse.join("\n")
 end

  def place_piece(user_move)
      player_guess= @layout[user_move]
      space = player_guess.find do |blank_space|
                           blank_space == "."
                         end
      space.replace "x"
  end


  def computer_move
      random_letter = @layout.keys.sample
      space = @layout[random_letter].find do |blank_space|
                    blank_space == "."
                  end
              space.replace "o"
    end

    def vertical_win
           @layout.map do |keys,values|
              r = values.join("\n")
            if r.include?("xxxx")
          true
           puts "You win!"
           return true
         elsif r.include?("0000")
           true
            puts "You lose, loser"
            return true
           binding.pry
          else
            false
         end
      end
   end

   def win?
     vertical_win
   end

end
