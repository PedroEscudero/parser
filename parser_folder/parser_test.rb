require_relative "parser.rb"

require "minitest/autorun"

class TestParser < Minitest::Test

  def test_initialize
    parser = Parser.new('parser_folder/webserver.log')
    p parser
    assert_equal "parser_folder/webserver.log", parser
  end

  def test_read
    parser = Parser.new('parser_folder/webserver.log')
  end

  def test_simple_scenario
    @lunar = Lunar.new("5 5","1 2 N", "LMLMLMLMM","3 3 E","MMRMMRMRRM")
    assert_equal "1 3 N 5 1 E", @lunar.inspect
  end

  def test_complex_scenario
    @lunar = Lunar.new("5 5","1 2 N", "LMLMLMLMM","3 3 E","MMRMMRMRRM", "2 2 S", "LMLMLMLMM","2 3 E","MMRMLRMRRM")
    assert_equal "1 3 N 5 1 E 2 1 S 4 2 N", @lunar.inspect
  end


end