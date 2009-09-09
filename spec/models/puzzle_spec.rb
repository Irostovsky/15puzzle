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

  describe '#zero_pos' do
    it "should return array with zero indexes" do
      puzzle = Puzzle.new
      puzzle.zero_pos.should == [3, 3]
    end
  end

  describe '#can_move?' do
    it "should return false if value is not in line in 0" do
      puzzle = Puzzle.new
      puzzle.can_move?(1).should be_false
    end

    it "should return true if value is in line in 0" do
      puzzle = Puzzle.new
      puzzle.can_move?(15).should be_true
    end
  end

  describe '#move!' do
    it "should move neighboard items" do
      puzzle = Puzzle.new
      puzzle.move!(15)
      puzzle.zero_pos.should == [3, 2]
      puzzle.matrix.pos(15).should == [3, 3]
    end

    it "should move any items in one row" do
      puzzle = Puzzle.new
      puzzle.move!(14)
      puzzle.zero_pos.should == [3, 1]
      puzzle.matrix.pos(14).should == [3, 2]
      puzzle.matrix.pos(15).should == [3, 3]
    end

    it "should move any items in one col" do
      puzzle = Puzzle.new
      puzzle.move!(4)
      puzzle.zero_pos.should == [0, 3]
      puzzle.matrix.pos(4).should == [1, 3]
      puzzle.matrix.pos(8).should == [2, 3]
      puzzle.matrix.pos(12).should == [3, 3]
    end
  end


  describe 'Array#scroll' do
    it "should scroll ended elements" do
      arr = [1, 2, 3, 4, 5]
      arr.scroll(0, 4).should == [2, 3, 4, 5, 1]
    end

    it "should scroll ended elements reverse" do
      arr = [1, 2, 3, 4, 5]
      arr.scroll(4, 0).should == [5, 1, 2, 3, 4]
    end

    it "should scroll elements in center" do
      arr = [1, 2, 3, 4, 5]
      arr.scroll(1, 2).should == [1, 3, 2, 4, 5]
    end

    it "should scroll elements in center when params equals" do
      arr = [1, 2, 3, 4, 5]
      arr.scroll(1, 1).should == [1, 2, 3, 4, 5]
    end

    it "should scroll elements in center when 1 st param > 2 nd" do
      arr = [1, 2, 3, 4, 5]
      arr.scroll(2, 1).should == [1, 3, 2, 4, 5]
    end

    it "should scroll elements in center and in side" do
      arr = [1, 2, 3, 0]
      arr.scroll(3, 1).should == [1, 0, 2, 3]
    end



  end


#   describe 'Matrix#[i, j]=' do
#     it "should set value to matrix " do
#       matrix = Matrix[[1, 2, 3], [4, 5, 6]]
#       matrix[0, 0] = 0
#       matrix[0, 0] == 0
#     end
#   end

end
