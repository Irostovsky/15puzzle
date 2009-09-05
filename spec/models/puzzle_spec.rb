require File.expand_path(File.dirname(__FILE__) + '/../../app/models/puzzle.rb')

describe Puzzle do

  describe '#new' do
    it "should return new inited puzzle with matrix" do
      matrix = Puzzle.new.matrix
      matrix.should == Matrix[[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 0]]
    end
    it "should return new random puzzle with matrix" do
      matrix = Puzzle.new(true).matrix
      matrix.should_not == Matrix[[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 0]]
    end
  end
end
