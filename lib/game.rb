require './lib/board.rb'
require './lib/message.rb'

class Game
  attr_accessor :connect_four_board
  def initialize
    @connect_four_board = Board.new
  end



  def play
   42.times do
     message= Message.new
     message.welcome
    puts @connect_four_board.print_layout
     message.user_input_request
    user_move = gets.chomp.upcase
     @connect_four_board.place_piece(user_move)
     puts @connect_four_board.print_layout
     puts "Wait for it!!!!"
     @connect_four_board.computer_move
     sleep(1)
     puts @connect_four_board.print_layout
     if @connect_four_board.win? == true
       break
     end
   end
 end


end
