require 'minitest/autorun'
require 'minitest/pride'
require './lib/board.rb'
require "pry"
class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board , board
  end

  def test_it_prints
    board = Board.new
    expected=
  "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
    assert_equal expected , board.print_layout
  end
  def test_it_can_put_in_player_piece
    board = Board.new
    expected =
    "ABCDEFG\n.......\n.......\n.......\n.......\n.......\nx......"
    board.place_piece("A")
    assert_equal expected, board.print_layout


  end
end
