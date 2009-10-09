require File.expand_path(File.dirname(__FILE__) + '/../../app/models/puzzle.rb')

describe Puzzle do

  describe '#new' do
    it 'should return puzzle with new state' do
      Puzzle.new.state.should == (1..15).to_a << 0
    end  
     it 'should return puzzle with not new state' do
      Puzzle.new(true).state.should_not == (1..15).to_a << 0
    end  
     it 'should return random puzzle with not new state' do
      Puzzle.new(true).state.should_not ==  Puzzle.new(true).state
     end  
  end

  describe '#matrix' do
    it 'should return matrix view of state' do
       Puzzle.new.matrix.should ==
         [
          [1, 2, 3, 4],
          [5, 6, 7, 8],
          [9, 10, 11, 12],
          [13, 14, 15, 0]
       ] 
    end  
  end

  describe '#can_move?' do
    it 'should return true if value in the same ROW as 0' do
      Puzzle.new.can_move?(13).should be_true
    end

    it 'should return true if value in the same COL as 0' do
      Puzzle.new.can_move?(4).should be_true
    end

    it 'should return false if value NOT in the same ROW or COL as 0' do
      Puzzle.new.can_move?(1).should be_false
    end

    it 'should return false if value is 0' do
      Puzzle.new.can_move?(0).should be_false
    end

    it 'should return false if value is not in matrix' do
      Puzzle.new.can_move?(123).should be_false
    end

 end  

  describe '#x' do
    it 'should return x index in matrix' do
      Puzzle.new.x(1).should == 0
      Puzzle.new.x(0).should == 3
      Puzzle.new.x(7).should == 2
    end  
  end  
 
 describe '#y' do
    it 'should return y index in matrix' do
      Puzzle.new.y(1).should == 0
      Puzzle.new.y(0).should == 3
      Puzzle.new.y(7).should == 1
    end  
  end  

  describe '#move!' do
    it 'should move in 1 row' do
      puzzle = Puzzle.new
      puzzle.move!(14)
      puzzle.state.should == (1..13).to_a << 0 << 14 << 15
    end  

    it 'should move in 1 col' do
      puzzle = Puzzle.new
      puzzle.move!(8)
      puzzle.state.should == [1,2,3,4,5,6,7,0,9,10,11,8,13,14,15,12]
    end  
  end  

  describe '#completed?' do
    it 'should be completed' do
      Puzzle.new.completed?.should be_true
    end  
    it 'should not be completed' do
      puzzle = Puzzle.new
      puzzle.move!(8)
      puzzle.completed?.should be_false
    end  
  end  
end 
