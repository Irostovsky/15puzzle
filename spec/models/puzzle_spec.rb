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

  describe '#completed?' do
    it "should return true when matrix is inited" do
      Puzzle.new.completed?.should be_true
    end

    it "should return false when matrix is inited" do
      Puzzle.new(true).completed?.should be_false
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

  context 'Matrix' do
    describe '#pos' do
      it "should return array with indexs of element" do
        matrix = Matrix[[1, 2, 3], [4, 5, 6]]
        matrix.pos(3).should ==[0, 2]
      end
    end

    describe '#scroll_row' do
      it "should return scrolled matrix" do
        matrix = Matrix[[1, 2, 3], [4, 5, 6]]
        matrix.scroll_row(0, 0, 2)
        matrix.should == Matrix[[2, 3, 1], [4, 5, 6]]
      end
      it "should return scrolled matrix 3" do
        matrix = Matrix[[1, 2, 3], [4, 5, 6]]
        matrix.scroll_row(0, 2, 0)
        matrix.should == Matrix[[3, 1, 2], [4, 5, 6]]
      end
      it "should return scrolled matrix 2" do
        matrix = Matrix[[1, 2, 3], [4, 5, 6]]
        matrix.scroll_row(1, 1, 2)
        matrix.should == Matrix[[1, 2, 3], [4, 6, 5]]
      end
    end

    describe '#solvable' do
      it 'should return true for solvable matrix' do
        Puzzle.new.matrix.solvable?.should be_true
      end

      it 'should return false for not solvable matrix' do
        m = Matrix[[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 15, 14, 0]]
        m.solvable?.should be_false
      end
    end
  end

end
